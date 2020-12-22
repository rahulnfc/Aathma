<%-- 
    Document   : view_request
    Created on : Feb 17, 2020, 3:51:29 PM
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
        <title>View Request</title>
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
         <h1 align="center" style="color:#003b99">Request Details</h1><br>
         <div class="table-responsive">
        <table  class="table table-bordered">
            <tr>
                <th>Request Id</th>
                <th>Name</th>
                <th>F/M/H Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Requested By</th>
                <th>Request For</th>
                <th>Blood</th>
                <th>Request Blood</th>
                <th>Supporter Name</th>
                <th>Hospital Name</th>
                <th>Hospital Email</th>
                <th>Required Date</th>
                <th>Reason</th>
                <th>Blood Status</th>
                <th>Organ Status</th>
                <th>Action</th>
            </tr>
            <%
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select * from request_form";     
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
             <td><%=rs.getString(17)%></td>
             <td><%=rs.getString(16)%></td>
             <td><%=rs.getString(11)%></td>            
             <td><%=rs.getString(12)%></td>
             <td><%=rs.getString(15)%></td>
             <td><%=rs.getString(13)%></td>
             <td><%=rs.getString(14)%></td>
             <td><%=rs.getString(18)%></td>
             <td><%=rs.getString(19)%></td>
             <td><a href="request_delete.jsp?r_id=<%=rs.getString("r_id")%>"><button type="button" onclick="Confirm();" class="delete">Delete</button></a></td>
         </tr>
         <%
         }
         %>
        </table>
         </div><br>
        <a href="admin_home.jsp" style="margin-left: 30px"><b>Back</b></a><br><br>
    </body>
</html>
