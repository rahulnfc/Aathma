<%-- 
    Document   : admin_header
    Created on : Feb 28, 2020, 1:18:05 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Header</title>
        
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
   .container {
  position: relative;
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
                
                    <div class="col-sm-10"  style="margin-left: -10px">
                <img src="../images/ECG.png" style="width:140%;height: 180px;margin-left: -200px"/>
                <div class="centered">


                    <h1 align=center style="color:white;font-size: 50px  "><b> AATHMA </b></h1>
                    <h3 style="color:white"><i>SOUL OF ALL SOUL , LIFE OF ALL LIFE</i></h3>

                         
                </div>
                </div>
                    <div class="col-sm-2">
                       
                        <img src="../images/LOGO.png" style="width:187%;height: 180px"/>
                    </div></div>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">  
    <ul class="nav navbar-nav">
      <li><a href="admin_home.jsp">Home</a></li>
      <li><a href="view_donor.jsp">View Donor</a></li>
      <li><a href="view_organization.jsp">View Organizaion</a></li>
      <li><a href="view_request.jsp">View Requests</a></li>
      <li><a href="view_feedback.jsp">View Feedback</a></li>
      <li><a href="mapping_view.jsp">Mapping Details</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
       
    </body>
</html>