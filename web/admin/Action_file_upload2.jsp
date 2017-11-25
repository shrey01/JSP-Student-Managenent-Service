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
 
        
            String str = session.getAttribute("UserName").toString();
            String fname=null;
            Connection con;
            Statement stm;
        File file;
        int maxSize=5000 * 1024;
        int maxFactSize=5000 * 1024;
        String path="C:/Users/SHREYASKARNATH/Documents/NetBeansProjects/Registration/Registration/web/admin/file";
        %>
        <%
        String type = request.getContentType();
        out.println(type);
        if(type.indexOf("multipart/form-data")>=0)
        {
        
        DiskFileItemFactory disFact=new DiskFileItemFactory();
        disFact.setSizeThreshold(maxFactSize);
        disFact.setRepository(new File("C:/Users/SHREYASKARNATH/Documents/NetBeansProjects/Registration/Registration/web/admin/file"));
        ServletFileUpload upload=new ServletFileUpload(disFact);
        upload.setSizeMax(maxSize);
        List lis=upload.parseRequest(request);
        Iterator itr=lis.iterator();
        while(itr.hasNext())
        {
           
           FileItem fi = (FileItem)itr.next();
            if ( !fi.isFormField () )  {
                String fieldName = fi.getFieldName();
                String fileName = fi.getName();
                fname=fileName;
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File(path,fileName) ;
                fi.write( file ) ;
               
            }
        }
        }
        
        
        
            try
                {
                   
                    Class.forName("com.mysql.jdbc.Driver");	
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    stm=con.createStatement();
                    String query="insert into file values('"+fname+"')";
                  int res=stm.executeUpdate(query);
		if(res!=0)
			out.println("<br>Record Inserted .Please wait for server Redirect... ");
		else
			out.println("<br>Record Not Inserted");
}
catch(Exception e)
{
e.printStackTrace();
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
