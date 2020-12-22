<%-- 
    Document   : donor_reg
    Created on : Feb 6, 2020, 4:07:31 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donar Registration</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
      $(document).ready(function(){
          $('[name="hide"]').hide("fast");
          $("#No").click(function(){
              $('[name="hide"]').hide("fast");
      });
      $("#Yes").click(function(){
              $('[name="hide"]').show("fast");
      });
  });
  </script>
    </head>
    <body>
        
            <div style="margin-left: -100px;margin-top: -20px;background-color:#747A98;border:1px">
            <h2 align="center"style="color: white">Register Now</h2></div>
             <div style="margin-left: 350px">
              <form action="db_donor_reg.jsp">
      <table>
       <div class="form-group">
           <tr>
               <td><label for="name">Name:</label></td>
               <td> <input type="text" class="form-control" name="name" required="true"></td>
           </tr>
       </div>
          <div><tr><td><br></td></tr></div>
        <div class="form-group">
            <tr>
                <td><label for="name">Mother/Father/Husband Name:</label></td>
                <td><input type="text" class="form-control" name="fmhname" required="true" ></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
    <div class="form-group"><tr>
            <td><label for="email">Email:</label></td>
            <td><input type="email" class="form-control"  name="email" required="true"></td>
        </tr>
    </div><div><tr><td><br></td></tr></div>
     <div class="form-group"><tr>
             <td><label for="address">Address:</label></td>
             <td><textarea class="form-control" rows="5"  name="address" required="true"></textarea></td>
         </tr>
      </div> <div><tr><td><br></td></tr></div>
       <div class="form-group"><tr>
               <td> <label for="state">State:</label></td>
               <td><input type="text" value="Kerala" class="form-control" name="state" readonly></td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="district">District:</label></td>
     <td><select name="district" required="true">
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
         </select></td></tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="pincode">Pincode:</label></td>
                <td><input type="tel" pattern="[0-9]{6}" class="form-control" name="pincode" required="true" ></td>
            </tr>
        </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="dob">Date of birth:</label></td>
                <td><input type="date" class="form-control" name="dob" required="true"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="number">Phone Number:</label></td>
                <td><input type="tel" pattern="[0-9]{10}" class="form-control" name="phone" required="true"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
      <div class="form-group"><tr>
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
                            <option value="AB Negative">AB-</option> 
         </select></td></tr>
       </div> <div><tr><td><br></td></tr></div>
      <div class="form-group"><tr>
              <td><label for="age"> Age:</label></td>
              <td><input type="tel" class="form-control" name="age" required="true"></td>
          </tr>
      </div> <div><tr><td><br></td></tr></div>
       <div class="form-group"><tr>
               <td><label for="gender">Gender:</label></td>
               <td><input type="radio" name="gender" value="Male" required="true">Male
               <input type="radio" name="gender" value="Female" required="true">Female
               <input type="radio" name="gender" value="Others" required="true">Others</td>
           </tr></div> <div><tr><td><br></td></tr></div>
        
         <div class="form-group"><tr>
                 <td><label for="donateblood" required="true">I wish to donate blood:</label></td>
                <td><input type="radio" id="Yes" name="dblood" value="YES">YES
                 <input type="radio" id="No" name="dblood" value="NO">NO</td>
             </tr></div> <div><tr><td><br></td></tr></div>
             <div>
                 <tr name="hide"><td><label for="lbdonate">Last Blood Donated:</label></td>
                     <td><select name="d" required="true">
      <option value="0">-SELECT-</option>
                <option value="first time">First Time</option>
                <option value="1 month ago">1 Month Ago</option>
                <option value="2 month ago">2 Month Ago</option>
                <option value="3 month ago">3 Month Ago</option>
                <option value="4 month ago">4 Month Ago</option>
                <option value="5 month ago">5 Month Ago</option>
                <option value="above 6 month">Above 6 Month</option>
         </select></td>
                 </tr> <div><tr><td><br></td></tr></div>
             </div>
       <div class="form-group"><tr>
               <td><label for="donateorgan" class="selectall">I wish to donate organs:</label></td>
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
                        
                        </script>

     <br>
       <div class="form-group"><tr>
               <td><label for="diseases">Any Diseases You Have? Mention:</label></td>
               <td><textarea class="form-control" rows="5"  name="disease" required="true"></textarea></td>
           </tr>
      </div> <div><tr><td><br></td></tr></div>
      
       <div class="form-group"><tr>
               <td><a href="donor_home.jsp"><b>Back</b></a></td>
               <td>   <button type="submit" class="btn btn-default" style="background-color:#747A98;color: white">Submit</button></td>
          </tr></div><div><tr><td><br></td></tr></div>
      </table>
  </form>
</div>          
    </body>
</html>

