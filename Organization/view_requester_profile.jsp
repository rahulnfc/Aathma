<%-- 
    Document   : view_requester_profile.jsp
    Created on : Feb 24, 2020, 2:49:48 PM
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
        <title>View Requester</title>
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
        String str="select * from request_form where h_email='"+mail+"'";
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {%>
        
        
     <div style="margin-left: -100px;margin-top: -20px;background-color:#747A98;border:1px">
            <h2 align="center"style="color: white">Update OR View Requester Details</h2></div>
             <div style="margin-left: 20%;margin-top: -5%">
              <form action="db_update_requester.jsp">
      <table>
          <tr><td> <h3><b>REQUESTER DETAILS</b></h3><br></td></tr>
         <div class="form-group">
           <tr>
               <td> <input type="hidden" class="form-control" name="id" value="<%=rs.getString(1)%>"></td>
           </tr>
       </div>
       <div class="form-group">
           <tr>
               <td><label for="name">Name:</label></td>
               <td> <input type="text" class="form-control" name="name" value="<%=rs.getString(2)%>" ></td>
           </tr>
       </div>
          <div><tr><td><br></td></tr></div>
<div class="form-group">
            <tr>
                <td><label for="name">Mother/Father/Husband Name:</label></td>
                <td><input type="text" class="form-control"  name="fmhname"  value="<%=rs.getString(3)%>" ></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
    <div class="form-group">
        <tr>
            <td><label for="email">Email:</label></td>
            <td> <input type="email" class="form-control" id="email"  name="email" value="<%=rs.getString(4)%>" ></td>
      </tr>
    </div> <div><tr><td><br></td></tr></div>
     <div class="form-group">
         <tr>
             <td> <label for="address">Address:</label></td>
             <td> <textarea class="form-control" rows="5" name="address" textareaObject.value="text"><%= rs.getString(5)%></textarea></td>
     </tr>
      </div> <div><tr><td><br></td></tr></div>
      <div class="form-group">
          <tr>
              <td><label for="number">Phone Number:</label></td>
              <td> <input type="tel" pattern="[0-9]{10}" class="form-control" name="phone" value="<%=rs.getString(6)%>"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
      <div class="form-group">
          <tr>
              <td><label for="age">Age:</label></td>
              <td><input type="tel" class="form-control" name="age" value="<%=rs.getString(7)%>" ></td>
      </tr>
      </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td> <label for="gender">Gender:</label></td>
                <%
                   if(rs.getString(8).equals("Male"))
                   {%>
                   <td> <input type="radio" name="gender" value="Male" checked >Male
        <input type="radio" name="gender" value="Female">Female
        <input type="radio" name="gender" value="Others" >Others</td>
                                      <%}
else if(rs.getString(8).equals("Female"))
{%>
                   <td><input type="radio" name="gender" value="Male">Male
    <input type="radio" name="gender" value="Female" checked>Female
               <input type="radio" name="gender" value="Others">Others</td>
<%}
else
{
%>
<td><input type="radio" name="gender" value="Male">Male
               <input type="radio" name="gender" value="Female">Female
               <input type="radio" name="gender" value="Others" checked>Others</td>
<%}%>
        </tr>
       </div> <div><tr><td><br></td></tr></div></div>
              <div>
                  <tr><td> <h3><b>INFORMATION</b></h3><br></td></tr>
      <div class="form-group">
          <tr>
              <td>  <label for="request">Requested By:</label></td>
              <td> <input type="text" class="form-control" name="reqby" value="<%=rs.getString(9)%>"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
    
         <div class="form-group">
             <tr>
                 <td>  <label for="donateorgan" class="selectall">Requested for:</label></td>
                 <td><input type="checkbox" name="dorgan" value="all organs" <%=(rs.getString(10).contains("kidney eye liver pancreas lungs"))?"checked":""%>>All organs
               <input type="checkbox" name="dorgan" value="kidney"<%=(rs.getString(10).contains("kidney"))?"checked":""%>>Kidney
               <input type="checkbox" name="dorgan" value="eye"<%=(rs.getString(10).contains("eye"))?"checked":""%>>Eye
               <input type="checkbox" name="dorgan" value="liver"<%=(rs.getString(10).contains("liver"))?"checked":""%>>Liver
               <input type="checkbox" name="dorgan" value="pancreas"<%=(rs.getString(10).contains("pancreas"))?"checked":""%>>Pancreas
               <input type="checkbox" name="dorgan" value="lungs"<%=(rs.getString(10).contains("lungs"))?"checked":""%>>Lungs
               </td>
           </tr>
       </div> <div><tr><td><br></td></tr></div>
       <script>$('#select').click(function() {
    $('input[name=dorgan]').prop('checked', true);
});</script><br>
         <div class="form-group"><tr>
              <td><label for="blood">Blood Group:</label></td>
     <td><select name="blood">
      <option><%=rs.getString(17)%></option>
                
         </select></td></tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group"><tr>
                 <td><label for="requestblood">Requested for blood:</label></td>
                 <%
                     if(rs.getString(16).equals("YES"))
                     {
                     %>
                 
                     <td><input type="radio" name="rblood"  value="YES" checked >YES
                         <input type="radio" name="rblood" value="NO" >NO</td>
                         <%}
else 
{

%>
   <td><input type="radio" name="rblood"  value="YES">YES                       
<input type="radio" name="rblood" value="NO"  checked>NO</td>
                     <%}%>

                
                            </tr></div> <div><tr><td><br></td></tr></div>

       <div class="form-group">
           <tr>
               <td><label for="name">Name of senior person supporting this request:</label></td>
               <td><input type="text" class="form-control" name="suppname" value="<%=rs.getString(11)%>"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="name of hosp">Name of Hospital:</label></td>
               <td> <input type="text" class="form-control" name="hname" value="<%=rs.getString(12)%>"></td>
            </tr>
             </div> <div><tr><td><br></td></tr></div>
    <div class="form-group">
        <tr>
            <td><label for="email">Hospital Email:</label></td>
            <td> <input type="email" class="form-control" id="email"  name="hemail" value="<%=rs.getString(15)%>"></td>
      </tr>
       </div> <div><tr><td><br></td></tr></div>
              <div class="form-group">
                  <tr>
                      <td> <label for="date">Appropriate Date(required for organ):</label></td>
                      <td> <input type="date" class="form-control" name="requireddate" value="<%=rs.getString(13)%>"></td>
            </tr>
       </div> <div><tr><td><br></td></tr></div>
       <div class="form-group">
           <tr>
               <td><label for="comment">Reason for request:</label></td>
               <td><textarea class="form-control" rows="5" id="comment" name="reason" textareaObject.value="text" ><%= rs.getString(14)%></textarea></td>
       </tr>
      </div> <div><tr><td><br></td></tr></div>
              </div>
      <div style="margin-top: 30px">
               
          <tr>
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
