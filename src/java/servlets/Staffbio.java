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
@WebServlet(name = "Staffbio", urlPatterns = {"/Staffbio"})
public class Staffbio extends HttpServlet {

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
            out.println("<title>Servlet Staffbio</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Staffbio at " + request.getContextPath() + "</h1>");
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

        //request.getParameter("leaveyear");
        if (session != null) {
            String sessionid = session.getAttribute("sessionid").toString();
            String staffid = session.getAttribute("staffid").toString();

            //staffid
            //  String loginid = session.getAttribute("username").toString();
            System.err.println("Matching key: " + sessionid);

            java.sql.Connection conn = (java.sql.Connection) session.getAttribute("connection");

            // String leaveyr = getCurrentFY(conn);
            result = getAllStaff(conn, staffid);//.replace("[", "").replace("]", "");

            //  }
        }

        out.write(result);
    }

    private String getUnappraisedForms(Connection connectDB, String staffid) {

        String result = "";

        //     String sql = "select count(refno) from hr.staff_appraisal where cancelled is false and hrapproval is false";
        String sql = "select count(refno) from hr.staff_appraisal WHERE verdict is false and staffid IN (select empno from myImediatestaff('" + staffid + "')) OR staffid IN (SELECT empno FROM mydeptstaffcrystal('" + staffid + "'))\n"
                + "\n"
                + "OR staffid IN (SELECT empno FROM mydirectoratestaff('" + staffid + "'))";

        try {
            PreparedStatement pst = connectDB.prepareStatement(sql);
            ResultSet rset = pst.executeQuery();
            while (rset.next()) {
                result = String.valueOf(rset.getInt(1));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;
    }

    private String getAllStaff(java.sql.Connection connectDB, String staffid) {
        ArrayList<HashMap<String, String>> parentList
                = new ArrayList<HashMap<String, String>>();//Parent List

        String[] columns = new String[]{"staffno", "deptno", "secno", "pendingno", "loguser"};
        String sql = "SELECT count(distinct (secure_password.staffid)), count(distinct(department)), count(distinct(section)), getstaffnamebyid('" + staffid + "') from secure_password";

        try {
            PreparedStatement pst = connectDB.prepareStatement(sql);
            ResultSet rset = pst.executeQuery();
            while (rset.next()) {
                HashMap<String, String> child = new HashMap<String, String>();
                //  for (int i = 0; i < columns.length; i++) {//I will not loop because I want to statically place variables from differend resultsets

                child.put(columns[0].toString(), String.valueOf(rset.getObject(1)));
                child.put(columns[1].toString(), String.valueOf(rset.getObject(2)));
                child.put(columns[2].toString(), String.valueOf(rset.getObject(3)));

                child.put(columns[3].toString(), String.valueOf(getUnappraisedForms(connectDB, staffid)));

                child.put(columns[4].toString(), String.valueOf(rset.getObject(4)));
                //     }
                parentList.add(child);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        String json = new Gson().toJson(parentList);//String JSON object

        JSONArray arr = new JSONArray();
        arr.put(json);                         //JSON Array

        return json;
    }

    private String getAllStaffDetails(java.sql.Connection connectDB, String staffid) {
        ArrayList<HashMap<String, String>> parentList
                = new ArrayList<HashMap<String, String>>();//Parent Listr

        String[] columns = new String[]{"staffid", "fullname", "designation", "department", "section", "status"};
        //  String sql = "select distinct staffid , fullname, designation, department, section from secure_password order by 2";

        //String sql = "select distinct staffid , fullname, designation, department, section, \n"
        //      + "case when staffid in (SELECT distinct staffid from hr.staff_appraisal where verdict is false and hrapproval is false) then 'Appraisal in Progress' else 'Appraise' end  from secure_password order by 2";
        String sql = "select distinct staffid , fullname, designation, department, section, \n"
                + "                 case when staffid in (SELECT distinct staffid from hr.staff_appraisal \n"
                + "                 where verdict is false and hrapproval is false) then 'Appraisal in Progress' else 'Appraise' end  \n"
                + "\n"
                + "                from secure_password WHERE staffid in (select empno from myimediatestaff('"+staffid+"')) --order by 2\n"
                + "\n"
                + "UNION \n"
                + "\n"
                + "select distinct staffid , fullname, designation, department, section, \n"
                + "                 case when staffid in (SELECT distinct staffid from hr.staff_appraisal \n"
                + "                 where verdict is false and hrapproval is false) then 'Appraisal in Progress' else 'Appraise' end  \n"
                + "\n"
                + "\n"
                + "                from secure_password WHERE staffid in (select empno from mydeptstaffcrystal('"+staffid+"')) --order by 2\n"
                + "\n"
                + "UNION\n"
                + "select distinct staffid , fullname, designation, department, section, \n"
                + "                 case when staffid in (SELECT distinct staffid from hr.staff_appraisal \n"
                + "                 where verdict is false and hrapproval is false) then 'Appraisal in Progress' else 'Appraise' end  \n"
                + "\n"
                + "\n"
                + "                from secure_password WHERE staffid in (select empno from mydirectoratestaff('"+staffid+"')) order by 2";
        try {
            PreparedStatement pst = connectDB.prepareStatement(sql);
            ResultSet rset = pst.executeQuery();
            while (rset.next()) {
                HashMap<String, String> child = new HashMap<String, String>();
                for (int i = 0; i < columns.length; i++) {//I will not loop because I want to statically place variables from differend resultsets

                    child.put(columns[i].toString(), String.valueOf(rset.getObject(i + 1)));

                }
                parentList.add(child);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        String json = new Gson().toJson(parentList);//String JSON object

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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String result = "";

        //request.getParameter("leaveyear");
        if (session != null) {
            String sessionid = session.getAttribute("sessionid").toString();
            String staffid = session.getAttribute("staffid").toString();

            //staffid
            //  String loginid = session.getAttribute("username").toString();
            System.err.println("Matching key: " + sessionid);

            java.sql.Connection conn = (java.sql.Connection) session.getAttribute("connection");

            // String leaveyr = getCurrentFY(conn);
            result = getAllStaffDetails(conn, staffid);//.replace("[", "").replace("]", "");

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
