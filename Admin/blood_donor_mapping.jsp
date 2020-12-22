<%-- 
    Document   : admin_mapping
    Created on : Feb 28, 2020, 1:59:45 PM
    Author     : MY PC
--%>
<%@page import="connector.db_connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Mapping</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
         <table  class="table table-bordered">
            <tr>
                <th>Donor Id</th>
                <th>Donor Name</th>
                <th>Blood Group</th>
                <th>Phone Number</th>
                <th>Last Blood Donate</th>
                <th>Reg Date</th>
                <th>Blood Status</th>
            </tr>
             
        <%
            String Blood=request.getParameter("val");
            out.print("<h3 style='color:#003b99'><b>"+Blood+" Blood Donors List</b></h3>"); 
            
         
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select donor_id,name,blood_group,phone_number,lb_donate,reg_date,blood_status from donor_register WHERE blood_group='"+Blood+"' AND donate_blood='YES' AND blood_status='ACTIVE'";
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
%>
        <tr>
             <td><%=rs.getString(1)%></td>
             <td><%=rs.getString(2)%></td>            
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             <td><%=rs.getString(5)%></td>
             <td><%=rs.getString(6)%></td>
             <td><%=rs.getString(7)%></td>
        </tr>
        <%}%>
         </table>
    </body>
</html>
