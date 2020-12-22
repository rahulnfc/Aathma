<%-- 
    Document   : table_organ
    Created on : Jun 24, 2020, 8:46:59 PM
    Author     : MY PC
--%>

<%@page import="connector.db_connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organ Table</title>
    </head>
    <body>
        <%
        String r=request.getParameter("rq_id");
        String d=request.getParameter("dr_id");
        
        db_connection db=new db_connection();
        String str="insert into mapped_organ values(?,?,?)";
        PreparedStatement ps=db.con.prepareStatement(str);
        ps.setInt(1,0);
        ps.setString(2,d);
        ps.setString(3,r);
        ps.executeUpdate();
        out.print("<h1>Organ Mapping Successful</h1>");
        out.println("<h1 style='color:blue;font-style:italic'>Successfully Mapped RequesterID with '"+r+"' and DonorID with '"+d+"'</h1>");
        
         //inactive the mapped organ donor
        String qry="update donor_register set organ_status='INACTIVE' where donor_id=?";
        PreparedStatement ps1=db.con.prepareStatement(qry);
        ps1.setString(1,d);
        ps1.executeUpdate();
        
        //inactive the mapped organ requester
       String qry1="update request_form set organ_status='INACTIVE' where r_id=?";
        PreparedStatement ps2=db.con.prepareStatement(qry1);
        ps2.setString(1,r);
        ps2.executeUpdate();
        
            %>
            <a href="admin_home.jsp" style="margin-left:120px"><b>Back to home</b></a><br><br>
    </body>
</html>
