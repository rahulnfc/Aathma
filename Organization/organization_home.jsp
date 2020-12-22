<%-- 
    Document   : organization_home
    Created on : Feb 6, 2020, 2:07:55 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organization Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
   body {
      overflow-x: hidden;
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
             <div>
            <div class="container">               
                    <div class="col-sm-10">
                <img src="../images/ECG.png" style="width:140%;height: 180px;margin-left: -200px"/>
                <div class="centered">
                    <h1 align=center style="color:white;font-size: 50px  "><b> AATHMA </b></h1>
                    <h3 style="color:white"><i>SOUL OF ALL SOUL , LIFE OF ALL LIFE</i></h3>                         
                </div>
                </div>
                    <div class="col-sm-2">                      
                        <img src="../images/LOGO.png" style="width:187%;height: 180px" />
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
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">View Request Details <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="view_blood_request.jsp">Blood Request</a></li>
          <li><a href="view_organ_request.jsp">Organ Request</a></li>
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
                
                  <div>
                      <h3 align="center"><b>Approved Hospitals For Organ Transplantation</b></h3>
                   <table class="table table-dark table-striped" style="border: 1px solid darkgray;">
                    <thead>
                        <tr class="info">
                            <th>Sl.No</th>
                            <th>Hospital Name</th>
                            <th>Approved Organ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Baby Memorial Hospital,Calicut</td>
                            <td>Kidney</td>
                           
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Govt.Medical College,Calicut</td>
                            <td>Kidney</td>
                        
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Malabar Institute Of Medical Science,Calicut</td>
                            <td>Liver,Kidney</tr>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Medical Trust Hospital,Kochi</td>
                            <td>Liver,Heart,Pancreas,Kidney,Lungs</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>MIMS,Calicut</td>
                            <td>Heart</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Amritha Institute Of Medical Science And Research Centre,Kochi</td>
                            <td>Liver,Heart,Pancreas</td>

                        </tr>
                       <tr>
                            <td>7</td>
                            <td>Meitra,Calicut</td>
                            <td>Kidney</td>

                        </tr>
                        <tr>
                            <td>8</td>
                            <td>Aster Medicity Hospital,Kochi</td>
                            <td>Liver,Heart,Pancreas,kidney</td>

                        </tr>
                        <tr>
                            <td>9</td>
                            <td>Metro International Cardiac Centre,Calicut</td>
                            <td>Heart,Kidney</td>

                        </tr>
                        <tr>
                            <td>10</td>
                            <td>Iqraa International Hospital And Research Centre,Calicut</td>
                            <td>Kidney</td>

                        </tr>
                    </tbody>
                </table>
            </div>
                               
    </div>
    </body>
</html>
