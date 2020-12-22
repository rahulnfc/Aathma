<%-- 
    Document   : db_update_donor
    Created on : Feb 19, 2020, 4:48:52 PM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <title>Update Donor Database</title>
    </head>
    <body>
        <%

           HttpSession se = request.getSession();
            String mail = se.getAttribute("email").toString();
           

            String Name = request.getParameter("name");
            String FMHName = request.getParameter("fmhname");
            String Email = request.getParameter("email");
            String Address = request.getParameter("address");
            String State = request.getParameter("state");
            String dist = request.getParameter("district");
            String Pincode = request.getParameter("pincode");
            int pincode = Integer.parseInt(Pincode);
            String DOB = request.getParameter("dob");
            String Phone = request.getParameter("phone");
            String Age = request.getParameter("age");
            int age = Integer.parseInt(Age);
            String Gender = request.getParameter("gender");
            String Blood = request.getParameter("blood");
            String DonateBlood = request.getParameter("dblood");
            String organs = "";
            String org[] = request.getParameterValues("dorgan");
            for (int i = 0; i < org.length; i++) {
                organs += org[i] + " ";
            }

            String Disease = request.getParameter("disease");
            db_connection db=new db_connection();
            String str = "update donor_register set name=?,f_m_h_name=?,email=?,address=?,state=?,district=?,pincode=?,dob=?,phone_number=?,age=?,gender=?,blood_group=?,donate_blood=?,donate_organs=?,diseases=? where email='"+mail+"'";
            PreparedStatement ps = db.con.prepareStatement(str);

            ps.setString(1, Name);
            ps.setString(2, FMHName);
            ps.setString(3, Email);
            ps.setString(4, Address);
            ps.setString(5, State);
            ps.setString(6, dist);
            ps.setInt(7, pincode);
            ps.setString(8, DOB);
            ps.setString(9, Phone);
            ps.setInt(10, age);
            ps.setString(11, Gender);
            ps.setString(12, Blood);
            ps.setString(13, DonateBlood);
            ps.setString(14, organs);
            ps.setString(15, Disease);
            ps.executeUpdate();

            response.sendRedirect("donor_home.jsp");
        %>
    </body>
</html>
