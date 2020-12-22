<%-- 
    Document   : admin_home
    Created on : Feb 5, 2020, 4:51:54 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
      $(document).ready(function(){
          $('[name="a"]').hide("fast");
          $('[name="b"]').hide("fast");

          $("#bs").click(function(){
              $('[name="a"]').show("fast");
              $('[name="b"]').hide("fast");
      });
      $("#os").click(function(){
              $('[name="b"]').show("fast");
              $('[name="a"]').hide("fast");
              $('#donor_div').hide("fast");
              $('#request_div').hide("fast");


      });
  });
  
  
  var request1,request2;
  function sendInfo()
  {
      var v=document.form.blood.value;
      var url="blood_donor_mapping.jsp?val="+v;
      
      if(window.XMLHttpRequest)
      {
          request1=new XMLHttpRequest();
      }
      else if(window.ActiveXObject){
          request1=new ActiveXObject("Microsoft.XMLHTTP");
      }
      
      try{
          request1.onreadystatechange=getInfo;
          request1.open("GET",url,true);
          request1.send();
          
      }catch(e){alert("unable to connect to the server");}
  }
  function recieveInfo()
  {
      var v=document.form.blood.value;
      var url="blood_request_mapping.jsp?val="+v;
      
      if(window.XMLHttpRequest)
      {
          request2=new XMLHttpRequest();
      }
      else if(window.ActiveXObject){
          request2=new ActiveXObject("Microsoft.XMLHTTP");
      }
      
      try{
          request2.onreadystatechange=getInfo;
          request2.open("GET",url,true);
          request2.send();
          
      }catch(e){alert("unable to connect to the server");}
  }
  function getInfo(){
      if(request1.readyState==4){
          var val=request1.responseText;
          document.getElementById('donor_div').innerHTML=val;
      }
      if(request2.readyState==4){
          var val=request2.responseText;
          document.getElementById('request_div').innerHTML=val;
      }
  }
  </script>
    </head>
    <body>
        <jsp:include page="admin_header.jsp"></jsp:include>
        <div class="container">
            <div class="col-sm-6">
                <div style="margin-left: 350px">
                    <button type="submit" class="btn btn-primary" id="bs">Blood Search</button><br><br></div></div>
                <div class="col-sm-6">
                    <button type="submit" class="btn btn-primary" id="os">Organ Search</button><br><br></div></div>
                    
                    <form method="post" name="form">
                        <div name="a" style="margin-left: 480px; margin-top: 15px">
                        
                        <label for="blood" style="font-size: 15px"><b>BLOOD GROUP</b></label><br>
                        <select name="blood" required="true" onchange="sendInfo();recieveInfo();">
                           <option value="0">-SELECT-</option>
                            <option value="A Positive">A+</option>
                            <option value="A Negative">A-</option>
                            <option value="B Positive">B+</option>
                            <option value="B Negative">B-</option>
                            <option value="O Positive">O+</option>
                            <option value="O Negative">O-</option>
                            <option value="AB Positive">AB+</option>
                            <option value="AB Negative">AB-</option>          
                        </select><br>
                        
                        </div>
                        
            </div></form>
                <div>
                
                <form action="organ_mapping.jsp" method="post">
                    <div name="b" style="margin-left: 700px; margin-top: 15px">
                <label for="blood" style="font-size: 15px"><b>BLOOD GROUP</b></label><br>
                        <select name="blood" required="true">
                            <option value="0">-SELECT-</option>
                            <option value="A Positive">A+</option>
                            <option value="A Negative">A-</option>
                            <option value="B Positive">B+</option>
                            <option value="B Negative">B-</option>
                            <option value="O Positive">O+</option>
                            <option value="O Negative">O-</option>
                            <option value="AB Positive">AB+</option>
                            <option value="AB Negative">AB-</option>       
                        </select><br><br>
          <label for="organ" style="font-size: 15px"><b>ORGAN</b></label><br>
                        <select name="organ" required="true">
                            <option value="0">-SELECT-</option>
                            <option value="kidney">KIDNEY</option>
                            <option value="eye">EYE</option>
                            <option value="liver">LIVER</option>
                            <option value="pancreas">PANCREAS</option>
                            <option value="lungs">LUNGS</option>      
                        </select><br><br>
          <button type="submit" class="btn btn-primary btn-xs">Search</button>
                </div>
            </div>
            
            </div>
        
            </form> 
                <div class="container">
                    <div class="col-sm-2">
                        <div id="donor_div" style="margin-top: 3%;width: 200px;"></div>
                    </div>
                        <div class="col-sm-10">
                        <div id="request_div" style="margin-top: 3%;width: 200px;margin-left:40%"></div>

                    </div> 
                </div>        
    </body>
</html>
