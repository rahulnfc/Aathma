<%-- 
    Document   : donor_delete.jsp
    Created on : Feb 20, 2020, 4:04:28 PM
    Author     : MY PC
--%>
<%@page import="connector.db_connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String donor_id=request.getParameter("donor_id");
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        int i=st.executeUpdate("DELETE FROM donor_register WHERE donor_id="+donor_id);
        response.sendRedirect("view_donor.jsp");
                %>
    </body>
</html>
