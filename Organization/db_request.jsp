<%-- 
    Document   : db_request
    Created on : Feb 13, 2020, 3:08:42 PM
    Author     : MY PC
--%>
<%@page import="connector.db_connection"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Form Database</title>
    </head>
    <body>
        <%
        String Name=request.getParameter("name");
        String FMHName=request.getParameter("fmhname");
        String Email=request.getParameter("email");
        String Address=request.getParameter("address");
        String Phone=request.getParameter("phone");
        String Age=request.getParameter("age");
        int age=Integer.parseInt(Age);
        String Gender=request.getParameter("gender");
        String ReqBy=request.getParameter("reqby");
        
        String  organs="";
        String org[]=request.getParameterValues("dorgan");
        for(int i=0;i<org.length;i++)
        {
            organs+=org[i]+" ";
        }
        
        String Blood=request.getParameter("blood");
        String RBlood=request.getParameter("rblood");
        String SuppName=request.getParameter("suppname");
        String HName=request.getParameter("hname");
        String HEmail=request.getParameter("hemail");
        String RequiredDate=request.getParameter("requireddate");
        String Reason=request.getParameter("reason");
        String st="ACTIVE";
        String st1="ACTIVE";
        
        db_connection db=new db_connection();
        String str="insert into request_form values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=db.con.prepareStatement(str);
        ps.setInt(1,0);
        ps.setString(2,Name);
        ps.setString(3,FMHName);
        ps.setString(4,Email);
        ps.setString(5,Address);
        ps.setString(6,Phone);
        ps.setInt(7,age);
        ps.setString(8,Gender);
        ps.setString(9,ReqBy);
        ps.setString(10,organs);
        ps.setString(11,SuppName);
        ps.setString(12,HName);
        ps.setString(13,RequiredDate);
        ps.setString(14,Reason);
        ps.setString(15,HEmail);
        ps.setString(16,RBlood);
        ps.setString(17,Blood);
        ps.setString(18,st);
        ps.setString(19,st1);
        ps.executeUpdate(); 
        response.sendRedirect("organization_home.jsp");
    %>
    </body>
</html>
