<%-- 
    Document   : db_update_organisation.jsp
    Created on : Feb 20, 2020, 2:57:56 PM
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
        <title>Update Organization</title>
    </head>
    <body>
         <%
              HttpSession se = request.getSession();
            String mail = se.getAttribute("email").toString();
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
        String str="update hospital_reg set h_name=?,dir_name=?,dir_mobile=?,reg_no=?,lice_no=?,website=?,h_address=?,state=?,district=?,pincode=?,h_type=?,h_moble=?,h_landline=?,h_email=? where h_email='"+mail+"'"; 
        PreparedStatement ps=db.con.prepareStatement(str);
        ps.setString(1,HName);
        ps.setString(2,DirName);
        ps.setString(3,DirMobile);
        ps.setString(4,RegNo);
        ps.setString(5,LiceNo);
        ps.setString(6,Website);
        ps.setString(7,HAddress);
        ps.setString(8,State);
        ps.setString(9,District);
        ps.setInt(10,pin);
        ps.setString(11,HType);
        ps.setString(12,HMobile);
        ps.setString(13,HLandline);
        ps.setString(14,Email);
        ps.executeUpdate();
        response.sendRedirect("organization_home.jsp");
        %>
    </body>
</html>
