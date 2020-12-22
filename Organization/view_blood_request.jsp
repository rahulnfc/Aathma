<%-- 
    Document   : view_blood_request
    Created on : Jun 25, 2020, 1:06:15 PM
    Author     : MY PC
--%>

<%@page import="connector.db_connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> View blood request</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
      body {
      overflow-x: hidden;
            }
      .table-responsive {
    max-height: 500px;
    margin-left: 50px;
    margin-right: 50px;
    overflow: scroll;
}
          .centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
    </style>
    </head>
    <body>
        
        <div class="container">
                
                    <div class="col-sm-10">
                <img src="../images/ECG.png" style="width:140%;height: 180px;margin-left: -200px"/>
                <div class="centered">


                    <h1 align=center style="color:white;font-size: 50px  "><b> AATHMA </b></h1>
                    <h3 style="color:white"><i>SOUL OF ALL SOUL , LIFE OF ALL LIFE</i></h3>

                         
                </div>
                </div>
                    <div class="col-sm-2">
                       
                        <img src="../images/LOGO.png" style="width:180%;height: 180px" />
                    </div></div>
  

             
             
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li><a href="organization_home.jsp">Home</a></li>
      <li><a href="organization_reg.jsp">Register</a></li>
      <li><a href="request.jsp">Request Form</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">View/Update <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="view_organisation_profile.jsp">Register Form</a></li>
          <li><a href="view_requester_profile.jsp">Request Form</a></li>
        </ul>
      </li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">View Request Details<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="view_blood_request.jsp">Blood Request</a></li>
          <li><a href="view_organ_request.jsp">Organ Request</a></li>
        </ul>
      </li>
        </ul>
      </li>

    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
        
        <h2 align="center" style="color: #003b99"><b>Blood Requesters Details</b></h2><br>
        <div class="table-responsive">
        <table  class="table table-bordered">
            <tr>
                <th>Patient Name</th>
                <th>F/M/H Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Requested By</th>
                <th>Supporter Name</th>
                <th>Hospital Name</th>
                <th>Hospital Email</th>
                <th>Request for Blood</th>
                <th>Blood Group</th>
                <th>Action</th>
            </tr>
            <%
                HttpSession se=request.getSession();
           String mail=se.getAttribute("email").toString();
                
           db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select r_id,name,fmh_name,email,address,phone,age,gender,request_by,support_name,"
                + "h_name,h_email,rblood,blood from request_form where h_email='"+mail+"' and rblood='YES'";     
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
         %>
         <tr>
                        
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
             <td>

                 <a href="view_blood_availability.jsp?riid=<%=rs.getString("r_id")%>" class="btn btn-primary" >Available</a>
             </td>
             
              
         <%
         }
         %>
        </table>
        </div>
        <a href="organization_home.jsp" style="margin-left: 30px"><b>Back</b></a><br><br>
        
        
    </body>
</html>

