<%-- 
    Document   : organ_mapping
    Created on : Mar 5, 2020, 3:28:34 PM
    Author     : MY PC
--%>
<%@page import="connector.db_connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Organ Search</title>
    </head>
    <body>
        <jsp:include page="admin_header.jsp"></jsp:include>
        <div class="container">
            <div class="col-sm-6">
        <div id="div1" style="width:400px;margin-top:5%">
        <table  class="table table-bordered">
            <tr>
                <th>Donor Id</th>
                <th>Donor Name</th>
                <th>Phone Number</th>
                <th>Blood Group</th>
                <th>Donate Organ</th>
                <th>Organ Status</th>
            </tr>
        
        <%
            String b=request.getParameter("blood");
            String o=request.getParameter("organ");
            out.print("<h3 style='color:#003b99'><b>"+o+" Donors List</b></h3>");
        
            db_connection db=new db_connection();
        Statement st=db.con.createStatement();
        String str="select donor_id,name,phone_number,blood_group,donate_organs,organ_status from donor_register where blood_group='"+b+"' AND donate_organs LIKE '%' '"+ o +"' '%' AND organ_status='ACTIVE'";     
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
       </tr>
         <%
         }
         %>
        </table>
        </div></div> 
        
        <div class="col-sm-6">
            <div style="margin-left:-10%">
                
                <%
                    
                    Statement st1=db.con.createStatement();
                    String strn="select r_id,name,h_name,phone,blood,request_for,organ_status from request_form where blood='"+b+"' AND request_for LIKE '%' '"+ o +"' '%' AND organ_status='ACTIVE'";
                    ResultSet rst=st1.executeQuery(strn);
                    int cnt=0;
                    while(rst.next()){
                        cnt++;
                        out.print("<form action='table_organ.jsp' method='post' id='me"+cnt+"'></form>");
                        }
                %>
                
           <table  class="table table-bordered">
            <tr>
                <th>Request Id</th>
                <th>Requester Name</th>
                <th>Hospital Name</th>
                <th>Phone Number</th>
                <th>Blood Group</th>
                <th>Requested Organ</th>
                <th>Organ Status</th>
                <th>Available Donors</th>
                <th></th>
            </tr>
            <%
                out.print("<h3 style='color:#003b99'><b>"+o+" Requesters List</b></h3>");
            Statement st2=db.con.createStatement();
        String str1="select r_id,name,h_name,phone,blood,request_for,organ_status from request_form where blood='"+b+"' AND request_for LIKE '%' '"+ o +"' '%' AND organ_status='ACTIVE'";     
        ResultSet rs1=st2.executeQuery(str1);
        int cnt1=0;
        while(rs1.next())
        {
            cnt1++;
            int s=rs1.getInt(1);
            out.print("<input type='hidden' name='rq_id' value='"+ s +"' form='me"+cnt1+"'/>");
         %>
        <tr>
          <td><%=rs1.getInt(1)%>
          <td><%=rs1.getString(2)%></td>            
          <td><%=rs1.getString(3)%></td>
           <td><%=rs1.getString(4)%></td>
           <td><%=rs1.getString(5)%></td>
           <td><%=rs1.getString(6)%></td>
           <td><%=rs1.getString(7)%></td>
           <td>
               <% out.print("<select name='dr_id' form='me"+cnt1+"'> ");
                            %>
              <option value="0" selected disabled>--Select--</option>              
                  <% 
                      Statement st3=db.con.createStatement();
                      String str2="select donor_id,name from donor_register where blood_group='"+b+"' AND donate_organs LIKE '%' '"+ o +"' '%' AND organ_status='ACTIVE'";     
        ResultSet rs2=st3.executeQuery(str2);
        while(rs2.next())
        {
          %> 
          <option  value="<%=rs2.getInt(1)%>"><%=rs2.getInt(1)%>&nbsp;&nbsp;<%=rs2.getString(2)%></option>
<%}%>
           </td>
          
           <%
             out.print("<td><input type='submit' value='send' class='btn btn-primary btn-xs' form='me"+cnt1+"' /></td>");
                        %>
            
       </tr>
         <%
         }
         %>
          
        </table>
            </div></div>

        </div>
        <a href="admin_home.jsp" style="margin-left:120px"><b>Back</b></a><br><br>
    </body>
</html>
