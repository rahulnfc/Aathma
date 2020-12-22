<%-- 
    Document   : db_hospital_reg
    Created on : Feb 11, 2020, 3:31:42 PM
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
        <title>Hospital Database</title>
    </head>
    <body>
        <%
        String HName=request.getParameter("hname");
        String DirName=request.getParameter("dirname");
        String DirMobile=request.getParameter("dirmobile");
        String RegNo=request.getParameter("regno");
        String LiceNo=request.getParameter("liceno");
        String Website=request.getParameter("website");
        String HAddress=request.getParameter("haddress");
        String State=request.getParameter("state");
        String District=request.getParameter("district");      
        String Pincode=request.getParameter("pincode");
        int pin=Integer.parseInt(Pincode);
        String HType=request.getParameter("htype");      
        String HMobile=request.getParameter("hmobile");
        String HLandline=request.getParameter("hlandline");
        String Email=request.getParameter("email");
        
        db_connection db=new db_connection();
        String str="insert into hospital_reg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=db.con.prepareStatement(str);
        ps.setInt(1,0);
        ps.setString(2,HName);
        ps.setString(3,DirName);
        ps.setString(4,DirMobile);
        ps.setString(5,RegNo);
        ps.setString(6,LiceNo);
        ps.setString(7,Website);
        ps.setString(8,HAddress);
        ps.setString(9,State);
        ps.setString(10,District);
        ps.setInt(11,pin);
        ps.setString(12,HType);
        ps.setString(13,HMobile);
        ps.setString(14,HLandline);
        ps.setString(15,Email);
        ps.executeUpdate();
        response.sendRedirect("organization_home.jsp");
        %>
    </body>
</html>
