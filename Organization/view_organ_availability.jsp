<%-- 
    Document   : view_organ_availability
    Created on : Jun 25, 2020, 1:44:23 PM
    Author     : MY PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connector.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Available Organ Donor View</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
    </head>
    <body>
         <%
            String rd= request.getParameter("riid");
        %>
           
        <div  align="center">
            <div style="margin-left:5%;margin-top:5%;margin-right:5%">
           <table  class="table table-bordered" style="margin-left:20px">
            <tr>
                <th>Donor Id</th>
                <th>Requester Id</th>
                <th>Donor Name</th>
                <th>Address</th>
                <th>PhoneNumber</th>
                <th>District</th>
                <th>DOB</th>
                <th>Age</th>
                <th>Blood Group</th>
                <th>Donate Organ</th>
                <th>Any Diseases</th>
            </tr>
            <%
                out.print("<h3 style='color:#003b99'><b>Available Organ Donor Details</b></h3>");
           
                 db_connection db=new db_connection();
       Statement st1=db.con.createStatement();
        String str1="select d_id,r_id,name,address,phone_number,district,dob,age,blood_group,donate_organs,diseases"
                + " from mapped_organ om join donor_register dr"
                + " on(om.d_id=dr.donor_id) where r_id='"+rd+"'  ";                     
        ResultSet rs1=st1.executeQuery(str1);
        while(rs1.next())
        {
         %>
        <tr>
          <td><%=rs1.getString(1)%></td>            
          <td><%=rs1.getString(2)%></td>
          <td><%=rs1.getString(3)%></td>            
          <td><%=rs1.getString(4)%></td>
          <td><%=rs1.getString(5)%></td>            
          <td><%=rs1.getString(6)%></td>
          <td><%=rs1.getString(7)%></td>
          <td><%=rs1.getString(8)%></td>
          <td><%=rs1.getString(9)%></td>
          <td><%=rs1.getString(10)%></td>
          <td><%=rs1.getString(11)%></td>
       </tr>
         <%
         }
         %>
          
        </table>
         <a href="view_organ_request.jsp" style="margin-left: 30px"><b>Back</b></a><br><br>
            </div></div>
        
    </body>
</html>

