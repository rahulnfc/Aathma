<%-- 
    Document   : db_update_requester
    Created on : Feb 25, 2020, 2:30:10 PM
    Author     : MY PC
--%>
<%@page import="connector.db_connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Requester</title>
    </head>
    <body>
         <%
             HttpSession se = request.getSession();
            String mail = se.getAttribute("email").toString();
             
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
        
        db_connection db=new db_connection();
        String str="update request_form set name=?,fmh_name=?,email=?,address=?,phone=?,age=?,gender=?,request_by=?,request_for=?,blood=?,support_name=?,h_name=?,required_date=?,reason=?,h_email=?,rblood=? where h_email='"+mail+"'"; 
        PreparedStatement ps=db.con.prepareStatement(str);
        ps.setString(1,Name);
        ps.setString(2,FMHName);
        ps.setString(3,Email);
        ps.setString(4,Address);
        ps.setString(5,Phone);
        ps.setInt(6,age);
        ps.setString(7,Gender);
        ps.setString(8,ReqBy);
        ps.setString(9,organs);
        ps.setString(10,Blood);
        ps.setString(11,SuppName);
        ps.setString(12,HName);
        ps.setString(13,RequiredDate);
        ps.setString(14,Reason);
        ps.setString(15,HEmail);
        ps.setString(16,RBlood);
        ps.executeUpdate(); 
        response.sendRedirect("organization_home.jsp");
    %>
    </body>
</html>
