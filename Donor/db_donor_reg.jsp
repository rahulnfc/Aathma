<%-- 
    Document   : db_donor_reg
    Created on : Feb 8, 2020, 2:57:33 PM
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
        <title>Donor Database</title>
    </head>
    <body>
        <%
        String Name=request.getParameter("name");
        String FMHName=request.getParameter("fmhname");
        String Email=request.getParameter("email");
        String Address=request.getParameter("address");
        String State=request.getParameter("state");
        String dist=request.getParameter("district");
        String Pincode=request.getParameter("pincode");
        int pincode=Integer.parseInt(Pincode);
        String DOB=request.getParameter("dob");
        String Phone=request.getParameter("phone");
        String Age=request.getParameter("age");
        int age=Integer.parseInt(Age);
        String Gender=request.getParameter("gender");
        String Blood=request.getParameter("blood");
        String DonateBlood=request.getParameter("dblood");
        String LBDonate=request.getParameter("d");
        String  organs="";
        String org[]=request.getParameterValues("dorgan");
        for(int i=0;i<org.length;i++)
        {
            organs+=org[i]+" ";
        }

        String Disease=request.getParameter("disease");
        String st="ACTIVE";
        String st1="ACTIVE";
        
        db_connection db=new db_connection();
        String str="insert into donor_register values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=db.con.prepareStatement(str);
        ps.setInt(1,0);
        ps.setString(2,Name);
        ps.setString(3,FMHName);
        ps.setString(4,Email);
        ps.setString(5,Address);
        ps.setString(6,State);
        ps.setString(7,dist);
        ps.setInt(8,pincode);
        ps.setString(9,DOB);
        ps.setString(10,Phone);
        ps.setInt(11,age);
        ps.setString(12,Gender);
        ps.setString(13,Blood);
        ps.setString(14,DonateBlood);
        ps.setString(15,organs);
        ps.setString(16,Disease);
        ps.setString(17,LBDonate);
        ps.setString(18,st);
        ps.setString(19,st1);
        ps.setTimestamp(20,new java.sql.Timestamp(new java.util.Date().getTime()));
        ps.executeUpdate();
       response.sendRedirect("donor_home.jsp");
%>
    </body>
</html>
