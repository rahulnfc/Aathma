<%-- 
    Document   : view_feedback
    Created on : Feb 26, 2020, 4:50:36 PM
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
        <title>Feedback View</title>
    
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>       
    </head>
    <body>
        <jsp:include page="admin_header.jsp"></jsp:include>
          <h1 align="center" style="color:#003b99">Feedback Details</h1><br>
          <div class="table-responsive">
        <table  class="table table-bordered">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Feedback</th>  
            </tr>
            <%
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select * from feedback";     
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
         %>
         <tr>
             <td><%=rs.getString(1)%></td>
             <td><%=rs.getString(2)%></td>            
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             
             
         </tr>
         <%
         }
         %>
        </table>
          </div><br>
        <a href="admin_home.jsp" style="margin-left: 30px"><b>Back</b></a><br><br>
    </body>
</html>
