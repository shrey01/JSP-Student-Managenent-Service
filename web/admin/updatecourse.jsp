<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <script src="script/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
    <%@include file="editcr.jsp" %>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-2 ">
</div>
<div class="col-md-8 ">
    <form action="" method ="post" >
	<table class="table">
   <% 
                   
            if(request.getParameter("btn_opt3")!=null)
                        {
                                String kk;
                               kk=request.getParameter("lockit");
                                
                                       
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    	
                    Statement st=con.createStatement();

                    %>
<%
	
	try{
	Class.forName("com.mysql.jdbc.Driver");	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
	st=con.createStatement();
	String sql="select *  from course where opt1='"+kk+"' ;";
	rs=st.executeQuery(sql);
	rs.next();
        }catch(Exception e)
	{
		out.println(e.toString());
	}}
	%>
	
	<tr>
		<td>course</td>
		<td><input type="text" name="t111" value="<%=rs.getString(1) %>" required="true" /></td>
	</tr>	
	
	<tr>
		<td>comment</td>
		<td><input type="text" name="t222" value="<%=rs.getString(2) %>" required="true" /></td>
	</tr>	
			
	<tr>
		
		<td><input type="submit"  name="btn_cupdate" class="btn btn-success" /> </td>
                           
	</tr>
                   <%
	if(request.getParameter("btn_cupdate")!=null)
	{ 
            Statement st=con.createStatement();
            Class.forName("com.mysql.jdbc.Driver");
            String nam,cmt;
                
            nam=request.getParameter("t111");
             cmt=request.getParameter("t222");
         	
           
       
         try{  
             String sql="update course set opt1='"+nam+"',comment='"+cmt+"'";
             int res=st.executeUpdate(sql);

          if(res!=0)
               response.sendRedirect("editcr.jsp");
                            
          else
              out.println("<br>Record Not Inserted");     
			
     %>
        
	</table>
	</form>
	
	
	  
     



<%
	}catch(Exception e)
	{
		out.println(e.toString());
	}}
%>			
	

	
</div>


</div>
</div>
</body>
</html>
