<%-- 
    Document   : view_organization
    Created on : Feb 17, 2020, 3:19:45 PM
    Author     : MY PC
--%>
<%@page import="connector.db_connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Organization</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
      function Confirm() {
            alert("Deleted Successfully..!");
            return true;
    }
  </script>
    </head>
    <body>
         <jsp:include page="admin_header.jsp"></jsp:include>
         <h1 align="center" style="color:#003b99">Organization Registration Details</h1><br>
         <div class="table-responsive">
        <table  class="table table-bordered">
            <tr>
                <th>Hospital Id</th>
                <th>Hospital Name</th>
                <th>Director Name</th>
                <th>Director Mobile</th>
                <th>Register No</th>
                <th>License No</th>
                <th>Website</th>
                <th>Hospital Address</th>
                <th>State</th>
                <th>District</th>
                <th>Pincode</th>
                <th>Hospital Type</th>
                <th>Mobile</th>
                <th>Landline</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <%
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select * from hospital_reg";     
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
             <td><%=rs.getString(8)%></td>
             <td><%=rs.getString(9)%></td>
             <td><%=rs.getString(10)%></td>
             <td><%=rs.getString(11)%></td>
             <td><%=rs.getString(12)%></td>            
             <td><%=rs.getString(13)%></td>
             <td><%=rs.getString(14)%></td>
             <td><%=rs.getString(15)%></td>
             <td><a href="org_delete.jsp?h_id=<%=rs.getString("h_id")%>"><button type="button" onclick="Confirm();" class="delete">Delete</button></a></td>
         </tr>
         <%
         }
         %>
        </table>
         </div><br>
        <a href="admin_home.jsp" style="margin-left: 30px"><b>Back</b></a><br><br>
    </body>
</html>
