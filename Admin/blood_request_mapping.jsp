<%-- 
    Document   : blood_request_mapping
    Created on : Mar 2, 2020, 4:31:01 PM
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
       
        <title>Blood Search</title>
    </head>
    <body>
        <%
        String qq = request.getParameter("val");
        db_connection db=new db_connection();
               Statement st = db.con.createStatement();
               String str = "select r_id,name,blood,h_name,phone,blood_status from request_form where blood='" + qq + "' AND rblood='YES' AND blood_status='ACTIVE'";
                ResultSet rs = st.executeQuery(str);
                int cnt=0;
                while(rs.next()){
                    cnt++;
                    out.print("<form action='table_blood.jsp' method='post' id='me"+cnt+"'></form>");
                }
        %>
        
        <table  class="table table-bordered">
            
            <tr>
                <th>Request Id</th>
                <th>Requester Name</th>
                <th>Blood Group</th>
                <th>Hospital Name</th>
                <th>Phone Number</th>
                <th>Blood Status</th>
                <th>Available Donors</th>
                <th></th>
            </tr>

            <%
                String q = request.getParameter("val");
                out.print("<h3 style='color:#003b99'><b>" + q + " Blood: Requesters List</b></h3>");
                Statement st1 = db.con.createStatement();
                Statement st2 = db.con.createStatement();
                String str1 = "select r_id,name,blood,h_name,phone,blood_status from request_form where blood='" + q + "' AND rblood='YES' AND blood_status='ACTIVE'";
                ResultSet rsa = st1.executeQuery(str1);
                int cnt1=0;
                while (rsa.next()) {
                    cnt1++;
                    int s=rsa.getInt(1);
                    out.print("<input type='hidden' name='rq_id' value='"+ s +"' form='me"+cnt1+"'/>");
            %>
            
            <tr>
            
                <td><%=rsa.getInt(1)%></td>
                <td><%=rsa.getString(2)%></td>            
                <td><%=rsa.getString(3)%></td>
                <td><%=rsa.getString(4)%></td>
                <td><%=rsa.getString(5)%></td>
                <td><%=rsa.getString(6)%></td>
                <td>
                    <% out.print("<select name='dr_id' form='me"+cnt1+"'> ");
                            %>
            <option value="0" selected disabled>--Select--</option>
                        <% String str2 = "select donor_id,name from donor_register where blood_group='" + q + "' AND donate_blood='YES' AND blood_status='ACTIVE'";
                            ResultSet rs1 = st2.executeQuery(str2);
                            while (rs1.next())
                            {
                           %> 
    <option value="<%=rs1.getInt(1)%>"><%=rs1.getInt(1)%> 
                            &nbsp;&nbsp;<%=rs1.getString(2)%></option>
         
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
    </body>
</html>
