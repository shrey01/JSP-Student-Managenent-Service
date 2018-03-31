<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<%@ page import="java.sql.*" %>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <meta http-equiv="Refresh" content="5;url=Action_file.jsp">
        <title>Uploading...</title>
    </head>
    
            <%
                              String a=session.getAttribute("UserName").toString(); 
              
                        if(request.getParameter("btn9")!=null)
                        {
                                String link,tool;
                                link=request.getParameter("link");
                                tool=request.getParameter("tool");
                               
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement st=con.createStatement();
                                        String sql="insert into weblink values('"+tool+"','"+link+"')";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>done.");
                                        else
                                                out.println("<br>Error 404 Connection error!!!Check your Connection.");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                        }
                        %> 
        
<div id="sky">
  <div class="bird">
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="wind"></div>
    <div class="bird_body">
      <div class="bird_head"></div>
      <div class="bird_wing_left">
        <div class="bird_wing_left_top"></div>
      </div>
      <div class="bird_wing_right">
        <div class="bird_wing_right_top"></div>
      </div>
      <div class="bird_tail_left"></div>
      <div class="bird_tail_right"></div>
    </div>
  </div>
</div>
  
  
    </body>
</html>
