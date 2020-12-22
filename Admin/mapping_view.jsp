<%-- 
    Document   : mapping_view
    Created on : Jun 24, 2020, 8:48:10 PM
    Author     : MY PC
--%>

<%@page import="connector.db_connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Mapping View</title>
    </head>
    <body>
       <jsp:include page="admin_header.jsp"/>
       
        <div class="container">
            <div class="col-sm-6">
        <div id="div1" style="width:400px;margin-top:5%">
        <table  class="table table-bordered">
            <tr>
                <th>Donor Id</th>
                <th>Requester Id</th>
            </tr>
        
        <%
            out.print("<h3 style='color:#003b99'><b>Mapped Blood List</b></h3>");
            db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select d_id,r_id from mapped_blood";     
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
         %>
        <tr>
          <td><%=rs.getString(1)%></td>
          <td><%=rs.getString(2)%></td>            
       </tr>
         <%
         }
         %>
        </table>
        </div></div>
        
        
        
        <div class="col-sm-6">
            <div style="margin-left:-10%;margin-top:5%">
           <table  class="table table-bordered">
            <tr>
                <th>Donor Id</th>
                <th>Requester Id</th>
            </tr>
            <%
                out.print("<h3 style='color:#003b99'><b>Mapped Organ List</b></h3>");
            Statement st1=db.con.createStatement();
        String str1="select d_id,r_id from mapped_organ";     
        ResultSet rs1=st1.executeQuery(str1);
        while(rs1.next())
        {
         %>
        <tr>
          <td><%=rs1.getString(1)%></td>            
          <td><%=rs1.getString(2)%></td>
          
       </tr>
         <%
         }
         %>
          
        </table>
            </div></div>

        </div>
        <a href="admin_home.jsp" style="margin-left:120px"><b>Back</b></a><br><br>
    </body>
</html>

