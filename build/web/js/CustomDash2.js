/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $('#amgtid').click(function () {
        window.location.href = "maintenance/mainpage.html";
    });
    $('#endSessionbtn').click(function () {
          document.getElementById("signoutid").click();
    });
});
