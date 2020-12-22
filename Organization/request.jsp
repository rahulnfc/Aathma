<%-- 
    Document   : request
    Created on : Feb 7, 2020, 3:36:44 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Form</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    </head>
    <body>            
            <div style="margin-left: -100px;margin-top: -20px;background-color:#747A98;border:1px">
            <h2 align="center"style="color: white">Request Form</h2></div>
            
                <div style="margin-left: 20%; margin-top: -5%">
      <form action="db_request.jsp" name="form1">
          <table><div>
                  <tr><td> <h3><b>REQUESTER DETAILS</b></h3><br></td></tr>
       <div class="form-group">
           <tr>
               <td> <label for="name">Name:</label></td>
               <td><input type="text" class="form-control" name="name" required="true"></td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
       
        <div class="form-group">
            <tr>
                <td><label for="name">Mother/Father/Husband Name:</label></td>
                <td><input type="text" class="form-control"  name="fmhname" required="true" ></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
    <div class="form-group">
        <tr>
            <td><label for="email">Email:</label></td>
            <td> <input type="email" class="form-control" id="email"  name="email" required="true"></td>
      </tr>
    </div> <div><tr><td><br></td></tr></div>
     <div class="form-group">
         <tr>
             <td> <label for="address">Address:</label></td>
             <td> <textarea class="form-control" rows="5" id="comment" name="address" required="true"></textarea></td>
     </tr>
      </div> <div><tr><td><br></td></tr></div>
      <div class="form-group">
          <tr>
              <td><label for="number">Phone Number:</label></td>
              <td> <input type="tel" pattern="[0-9]{10}" class="form-control" name="phone" id="phone" required="true"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
      <div class="form-group">
          <tr>
              <td><label for="age">Age:</label></td>
              <td><input type="tel" class="form-control" name="age" required="true"></td>
      </tr>
      </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td> <label for="gender">Gender:</label></td>
               <td> <input type="radio" name="gender" value="Male" required="true">Male
        <input type="radio" name="gender" value="Female" required="true">Female
        <input type="radio" name="gender" value="Others" required="true">Others</td>
        </tr>
       </div> <div><tr><td><br></td></tr></div></div>
              <div>
                  <tr><td> <h3><b>INFORMATION</b></h3><br></td></tr>
      <div class="form-group">
          <tr>
              <td>  <label for="request">Requested By:</label></td>
              <td> <input type="text" class="form-control" name="reqby" required="true"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
    
         <div class="form-group">
             <tr>
                 <td>  <label for="donateorgan" class="selectall">Requested for Organs:</label></td>
                 <td><p id="i"><input type="checkbox" name="dorgan" value="all organs" id="select">All organs
           <input type="checkbox" name="dorgan" value="kidney">Kidney
           <input type="checkbox" name="dorgan" value="eye">Eye
           <input type="checkbox" name="dorgan" value="liver">Liver
           <input type="checkbox" name="dorgan" value="pancreas">Pancreas
           <input type="checkbox" name="dorgan" value="lungs">Lungs</p></td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
       <script>
                        $(function(){
                           var $all=$("#i input:checkbox");
                           $("#select").on("click",
                           function(){
                              $($all).prop('checked',$(this).prop('checked')); 
                           });
                           $("#i").on("change",function(){
                           if(!$(this).prop("checked")){
                               $("#select").prop("checked",false);
                           } 
                        });
                        });
                        
       </script><br>
         <div class="form-group">
             <tr>
                 <td><label for="blood">Blood Group:</label></td>
                 <td><select name="blood" required="true">
       <option value="0">-SELECT-</option>
                            <option value="A Positive">A+</option>
                            <option value="A Negative">A-</option>
                            <option value="B Positive">B+</option>
                            <option value="B Negative">B-</option>
                            <option value="O Positive">O+</option>
                            <option value="O Negative">O-</option>
                            <option value="AB Positive">AB+</option>
                            <option value="AB Negative">AB-</option>                      </select></td>
         </tr>
       </div> <div><tr><td><br></td></tr></div>
     <div class="form-group"><tr>
             <td><label for="requestblood" required="true">Requested for blood:</label></td>
                <td><input type="radio" name="rblood" value="YES">YES
                 <input type="radio" name="rblood" value="NO">NO</td>
             </tr></div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="name">Name of senior person supporting this request:</label></td>
               <td><input type="text" class="form-control" name="suppname" required="true"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="name of hosp">Name of Hospital:</label></td>
               <td> <input type="text" class="form-control" name="hname" required="true"></td>
            </tr>
             </div> <div><tr><td><br></td></tr></div>
    <div class="form-group">
        <tr>
            <td><label for="email">Hospital Email:</label></td>
            <td> <input type="email" class="form-control" id="email"  name="hemail" required="true"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
              <div class="form-group">
                  <tr>
                      <td> <label for="date">Appropriate Date(required for organ):</label></td>
                      <td> <input type="date" class="form-control" name="requireddate" required="true"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="comment">Reason for request:</label></td>
               <td><textarea class="form-control" rows="5" id="comment" name="reason" required="true"></textarea></td>
       </tr>
      </div> <div><tr><td><br></td></tr></div>
              </div>
      <div style="margin-top: 30px">
               
          <tr>
              <td><a href="organization_home.jsp"><b>Back</b></a></td>
              <td>  <button type="submit" class="btn btn-default" onclick="validate();" style="background-color:#747A98;color: white">Submit</button></td>
                </tr>
      </div> <div><tr><td><br></td></tr></div>
          </table>
  </form>
      </div>
    </body>
</html>
