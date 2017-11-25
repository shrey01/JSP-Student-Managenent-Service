<%-- 
    Document   : abut
    Created on : 12 Nov, 2017, 4:03:45 PM
    Author     : SHREYASKARNATH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page import="java.sql.*"%>
 <%@include file="head/header.jsp" %>
   
 <title>Administrator Pen.</title>
<style>

</style>
    </head>
    <body>
        <div class="container">
       <form class="form-horizontal" method="post"  >
     <div class="form-group">
  <label for="comment">Write :</label>
  <textarea class="form-control text-capitalize " rows="5" name="t1"></textarea>

<%
                              String a=session.getAttribute("UserName").toString(); 
              
                        if(request.getParameter("btn_opt1")!=null)
                        {
                                String data;
                                data=request.getParameter("t1");
                               
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement st=con.createStatement();
                                        String sql="insert into abt values('"+data+"')";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>Record Inserted");
                                        else
                                                out.println("<br>Record Not Inserted");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                        }
                        %> 

            </div>
                        
             <a href="user.jsp" class="btn btn-info pull-right" role="button">&nbsp&nbsp&nbspBack &nbsp&nbsp&nbsp</a> &nbsp&nbsp&nbsp&nbsp
            <button type="reset" class="btn btn-warning btn-fill pull-right btn-hover">&nbsp&nbsp&nbspReset&nbsp&nbsp&nbsp</button>&nbsp&nbsp&nbsp&nbsp
            <button type="submit" class="btn btn-success btn-fill btn-hover pull-right" name="btn_opt1">&nbsp&nbsp&nbspSave&nbsp&nbsp&nbsp</button><br>

</form></div>
                        
 
    </body>
</html>
