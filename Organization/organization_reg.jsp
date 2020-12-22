<%-- 
    Document   : organization_reg
    Created on : Feb 6, 2020, 5:21:24 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>organization Register</title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    </head>
    <body>
            <div style="margin-left: -100px;margin-top: -20px;background-color:#747A98;border:1px">
            <h2 align="center"style="color: white">Register Now</h2></div>
            
                <div style="margin-left: 450px">
  <form action="db_hospital_reg.jsp">
      <table>
       <div class="form-group">
           <tr>
               <td>  <label for="hospital">Name of Hospital:</label></td>
               <td><input type="text" class="form-control" name="hname" required="true"></td>
         </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="director">Director Name:</label></td>
               <td>  <input type="text" class="form-control"  name="dirname" required="true"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="director number">Director Mobile Number:</label></td>
               <td><input type="tel" pattern="[0-9]{10}" class="form-control" name="dirmobile" id="dirmob" required="true"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
       
        <div class="form-group">
            <tr>
                <td> <label for="register number">Register Number:</label></td>
                <td>  <input type="text" class="form-control" name="regno" required="true"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
      <div class="form-group">
          <tr>
          <td><label for="license number">License Number:</label></td>
          <td><input type="text" class="form-control"  name="liceno" required="true"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
    <div class="form-group">
        <tr>
            <td><label for="website">Website:</label></td>
            <td> <input type="text" class="form-control" name="website" required="true"></td>
      </tr>
    </div> <div><tr><td><br></td></tr></div>
     <div class="form-group">
         <tr>
         <td>  <label for="comment">Address:</label></td>
         <td><textarea class="form-control" rows="5" id="comment" name="haddress" required="true"></textarea></td>
     </tr>
      </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td> <label for="state">State:</label></td>
               <td><input type="text" value="Kerala" class="form-control" name="state" readonly></td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td>    <label for="district">District:</label></td>
               <td>    <select name="district" required="true">
      <option value="0">-SELECT-</option>
                <option value="Kasaradod">Kasaragod</option>
                <option value="Kannur">Kannur</option>
                <option value="Wayanad">Wayanad</option>
                <option value="Kozhikode">Kozhikode</option>
                <option value="Malappuram">Malappuram</option>
                <option value="Thrissur">Thrissur</option>
                <option value="Palakkad">Palakkad</option>
                <option value="Alappuzha">Alappuzha</option>
                <option value="Idukki">Idukki</option>
                <option value="Ernakulam">Ernakulam</option>
                <option value="Kottayam">Kottayam</option>
                <option value="Pathanamthitta">Pathanamthitta</option>
                <option value="Kollam">Kollam</option>
                <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                   </select></td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group">
            <tr>
                <td><label for="pincode">Pincode:</label></td>
                <td><input type="tel" pattern="[0-9]{6}" class="form-control" name="pincode" required="true"></td>
            </tr>
        </div> <div><tr><td><br></td></tr></div>
        <div class="form-group">
            <tr>
                <td> <label for="type">Hospital Type:</label></td>
                <td> <select name="htype" required="true">
                <option value="select">-SELECT-</option>
                <option value="medical college">Medical College</option>
                <option value="district college">District College</option>
                <option value="phc">PHC</option>
                <option value="chc">CHC</option>
                    </select></td>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group">
            <tr>
                <td> <label for="mobile">Mobile Number:</label></td>
                <td> <input type="tel" pattern="[0-9]{10}" class="form-control" name="hmobile" id="hmob" required="true"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
             <div class="form-group">
                 <tr>
                     <td><label for="landline">Landline Number:</label></td>
                     <td><input type="tel" pattern="[0-9]{11}" class="form-control"  name="hlandline" id="landno" required="true"></td>
                 </tr>
       </div> <div><tr><td><br></td></tr></div>
        
      <div class="form-group">
          <tr>
              <td>  <label for="email">Email:</label></td>
              <td>  <input type="email" class="form-control" id="email"  name="email" required="true"></td>
          </tr>
      </div> <div><tr><td><br></td></tr></div></div>
                </div>
        <div>
       <div style="margin-top: 30px">
           <tr>
               <td><a href="organization_home.jsp"><b>Back</b></a></td>
           <td><button type="submit" class="btn btn-default" onclick="validate();Hvalidate();Lvalidate();" style="background-color:#747A98;color: white">Submit</button></td>
           </div>  </tr>
     <div><tr><td><br></td></tr></div>
           </table>
  </form>
                </div>
    </body>
</html>
