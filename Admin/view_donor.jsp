<%-- 
    Document   : view_donor
    Created on : Feb 17, 2020, 2:46:18 PM
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
        <title>View Donor</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
      function Confirm() {
            alert("Deleted Successfully..!");
            return true;
    }
  </script>
    </head>
    <body>
         <jsp:include page="admin_header.jsp"></jsp:include>
         <h1 align="center" style="color:#003b99">Donor Registration Details</h1><br>
        <div class="table-responsive">
        <table  class="table table-bordered">
            <tr>
                <th>Donor Id</th>
                <th>Donor Name</th>
                <th>F/M/H Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>State</th>
                <th>District</th>
                <th>Pincode</th>
                <th>Date Of Birth</th>
                <th>Phone Number</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Blood Group</th>
                <th>Donate Blood</th>
                <th>LBDonate</th>
                <th>Reg Date</th>
                <th>Donate Organs</th>
                <th>Diseases</th>
                <th>Blood Status</th>
                <th>Organ Status</th>
                <th>Action</th>
            </tr>
            <%
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select * from donor_register";     
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
         %>
         <tr>
             <td><%=rs.getString(1)%></td>
             <td><%=rs.getString(2)%></td>            
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             <td><%=rs.getString(5)%></td>
             <td><%=rs.getString(6)%></td>
             <td><%=rs.getString(7)%></td>            
             <td><%=rs.getString(8)%></td>
             <td><%=rs.getString(9)%></td>
             <td><%=rs.getString(10)%></td>
             <td><%=rs.getString(11)%></td>
             <td><%=rs.getString(12)%></td>            
             <td><%=rs.getString(13)%></td>
             <td><%=rs.getString(14)%></td>
             <td><%=rs.getString(17)%></td>
             <td><%=rs.getString(20)%></td>
             <td><%=rs.getString(15)%></td>
             <td><%=rs.getString(16)%></td>
             <td><%=rs.getString(18)%></td>
             <td><%=rs.getString(19)%></td>
             <td><a href="donor_delete.jsp?donor_id=<%=rs.getString("donor_id")%>"><button type="button" onclick="Confirm();" class="delete">Delete</button></a></td>
         </tr>           
         <%
         }
         %>
        </table>
        </div><br>
        <a href="admin_home.jsp" style="margin-left: 30px"><b>Back</b></a><br><br>
    </body>
</html>
