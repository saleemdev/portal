/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;

/**
 *
 * @author owner
 */
@WebServlet(name = "AppraisalResponses", urlPatterns = {"/AppraisalResponses"})
public class AppraisalResponses extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AppraisalResponses</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AppraisalResponses at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String result = "";

        String questionid = request.getParameter("questionid");

        //request.getParameter("leaveyear");
        if (session != null) {
            String sessionid = session.getAttribute("sessionid").toString();
            String staffid = session.getAttribute("staffid").toString();

            //staffid
            //  String loginid = session.getAttribute("username").toString();
            System.err.println("Matching key: " + sessionid);

            java.sql.Connection conn = (java.sql.Connection) session.getAttribute("connection");

            // String leaveyr = getCurrentFY(conn);
            result = getScoreResponses(conn, questionid);//.replace("[", "").replace("]", "");

            //  }
        }

        out.write(result);
    }

    private String getScoreResponses(java.sql.Connection connectDB, String questionid) {
        ArrayList<HashMap<String, String>> parentList
                = new ArrayList<HashMap<String, String>>();//Parent List

        String[] columns = new String[]{"response"};

        String sql = "select '-' union select answer||'['||points||']' from hr.appraisal_questionnaire where questionid= '" + questionid + "' order by 1;";

        try {
            PreparedStatement pst = connectDB.prepareStatement(sql);
            ResultSet rset = pst.executeQuery();
            while (rset.next()) {
                HashMap<String, String> child = new HashMap<String, String>();
                //  for (int i = 0; i < columns.length; i++) {//I will not loop because I want to statically place variables from differend resultsets

                for (int i = 0; i < columns.length; i++) {

                    child.put(columns[i].toString(), String.valueOf(rset.getObject(i + 1)));
                }

                // child.put(columns[3].toString(), String.valueOf(getUnappraisedForms(connectDB, staffid)));
                //     }
                parentList.add(child);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        String json = new Gson().toJson(parentList);//String JSON object

        System.err.println("I am here names " + json);

        JSONArray arr = new JSONArray();
        arr.put(json);                         //JSON Array

        return json;
    }
    
    
       private String getScoreSavedResponses(java.sql.Connection connectDB, String refid) {
        ArrayList<HashMap<String, String>> parentList
                = new ArrayList<HashMap<String, String>>();//Parent List

        String[] columns = new String[]{"qid","qn","response","max","score","meta","hrentry","snrentry"};

        String sql = "SELECT questionid, question, answer, getmaxpoints(questionid), score, getsupentry(refno), gethrentry(refno), getsnrentry(refno) FROM hr.appraisal_scores where refno = '" + refid + "' order by 1;";

        System.err.println("PopulateQuery: "+sql);
        try {
            PreparedStatement pst = connectDB.prepareStatement(sql);
            ResultSet rset = pst.executeQuery();
            while (rset.next()) {
                HashMap<String, String> child = new HashMap<String, String>();
                //  for (int i = 0; i < columns.length; i++) {//I will not loop because I want to statically place variables from differend resultsets

                for (int i = 0; i < columns.length; i++) {

                    child.put(columns[i].toString(), String.valueOf(rset.getObject(i + 1)));
                }

                // child.put(columns[3].toString(), String.valueOf(getUnappraisedForms(connectDB, staffid)));
                //     }
                parentList.add(child);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        String json = new Gson().toJson(parentList);//String JSON object

        System.err.println("I am here names " + json);

        JSONArray arr = new JSONArray();
        arr.put(json);                         //JSON Array

        return json;
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static String populateMax(Connection connectDB, String qid) {
        String rs = "";
        String sql = "select max(points) from hr.appraisal_questionnaire where questionid='" + qid + "'";
        try {
            PreparedStatement pst = connectDB.prepareStatement(sql);
            ResultSet rset = pst.executeQuery();
            while (rset.next()) {
                rs = String.valueOf(rset.getObject(1));

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);select max(points) from hr.appraisal_questionnaire where questionid='1
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String result = "";

        String refno = request.getParameter("refno");

        //request.getParameter("leaveyear");
        if (session != null) {
            String sessionid = session.getAttribute("sessionid").toString();
            String staffid = session.getAttribute("staffid").toString();

            //staffid
            //  String loginid = session.getAttribute("username").toString();
            System.err.println("Matching key: " + sessionid);

            java.sql.Connection conn = (java.sql.Connection) session.getAttribute("connection");

            // String leaveyr = getCurrentFY(conn);
            result = getScoreSavedResponses(conn, refno);//.replace("[", "").replace("]", "");

            //  }
        }

        out.write(result);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
