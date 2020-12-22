<%-- 
    Document   : view_organisation_profile.jsp
    Created on : Feb 20, 2020, 2:29:51 PM
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
        <title>view organization</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
     <%
            HttpSession se=request.getSession();
           String mail=se.getAttribute("email").toString();
        db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select * from hospital_reg where h_email='"+mail+"'";
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {%>
        
        
        <div style="margin-left: -100px;margin-top: -20px;background-color:#747A98;border:1px">
            <h2 align="center"style="color: white">Update OR View Profile</h2></div>
             <div style="margin-left: 450px">
              <form action="db_update_organisation.jsp">
      <table>
          <div class="form-group">
           <tr>
               <td><input type="hidden" class="form-control" name="id" value="<%=rs.getString(1)%>"></td>
           </tr>
       </div>
       <div class="form-group">
           <tr>
               <td><label for="hospital name">Name of Hospital:</label></td>
               <td> <input type="text" class="form-control" name="hname" value="<%=rs.getString(2)%>" ></td>
           </tr>
       </div>
          <div><tr><td><br></td></tr></div>
        <div class="form-group">
            <tr>
                <td><label for=" director name">Director Name:</label></td>
                <td><input type="text" class="form-control" name="dirname" value="<%=rs.getString(3)%>"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
    <div class="form-group"><tr>
            <td><label for="director number">Director Mobile Number:</label></td>
            <td><input type="tel" pattern="[0-9]{10}" class="form-control"  name="dirmobile" value="<%=rs.getString(4)%>"></td>
        </tr>
    </div><div><tr><td><br></td></tr></div>
     <div class="form-group"><tr>
             <td><label for="register number">Register Number:</label></td>
             <td><input type="text"  name="regno" value="<%=rs.getString(5)%>"></textarea></td>
         </tr>
      </div> <div><tr><td><br></td></tr></div>
      <div class="form-group"><tr>
              <td><label for="license number">License Number:</label></td>
             <td><input type="text"  name="liceno" value="<%=rs.getString(6)%>"></textarea></td>
         </tr>
      </div> <div><tr><td><br></td></tr></div>
      <div class="form-group"><tr>
             <td><label for="website">Website:</label></td>
             <td><input type="text"  name="website" value="<%=rs.getString(7)%>"></textarea></td>
         </tr>
      </div> <div><tr><td><br></td></tr></div>
      <div class="form-group"><tr>
             <td><label for="address">Address:</label></td>
             <td><textarea class="form-control" rows="5" id="comment"  name="haddress" textareaObject.value="text"><%=rs.getString(8)%></textarea></td>
         </tr>
      </div> <div><tr><td><br></td></tr></div>
       <div class="form-group"><tr>
               <td> <label for="state">State:</label></td>
               <td><input type="text"  class="form-control" name="state" value="<%=rs.getString(9)%>" readonly></td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="district">District:</label></td>
     <td><select name="district">
      <option><%=rs.getString(10)%></option>
         </select></td></tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="pincode">Pincode:</label></td>
                <td><input type="tel" pattern="[0-9]{6}" class="form-control" name="pincode" value="<%=rs.getString(11)%>"></td>
            </tr>
        </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
              <td><label for="hospital type">Hospital Type:</label></td>
     <td><select name="htype">
      <option><%=rs.getString(12)%></option>
                
         </select></td></tr>
       </div> <div><tr><td><br></td></tr></div>
        <div class="form-group"><tr>
                <td><label for="mobile">Mobile Number:</label></td>
                <td><input type="tel" pattern="[0-9]{10}" class="form-control" name="hmobile" id="hmob" value="<%=rs.getString(13)%>"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
      <div class="form-group"><tr>
              <td><label for="landline">Landline Number:</label></td>
              <td><input type="tel" pattern="[0-9]{11}" class="form-control" name="hlandline" id="landno" value="<%=rs.getString(14)%>"></td>
          </tr>
         </div> <div><tr><td><br></td></tr></div> 
           <div class="form-group"><tr>
              <td><label for="email">Email:</label></td>
              <td><input type="email" class="form-control" name="email" value="<%=rs.getString(15)%>"></td>
          </tr>
      </div> <div><tr><td><br></td></tr></div>
             <script>$('#select').click(function() {
    $('input[name=dorgan]').prop('checked', true);
});</script>
<br>
      <div class="form-group"><tr>
               <td><a href="organization_home.jsp"><b>Back</b></a></td>
                 <td>   <button type="submit" class="btn btn-default" style="background-color:#747A98;color: white">Update</button></td>
          </tr></div><div><tr><td><br></td></tr></div>
      </table>
  </form>
</div>             
       <% }
        %>
    </body>
</html>
