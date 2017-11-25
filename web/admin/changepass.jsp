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
   <%@include file="connection.jsp" %>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-2 ">
</div>
<div class="col-md-8 ">
   <%
                                        rs = st.executeQuery("SELECT * FROM xyz WHERE email='"+a+"'");
                                        while(rs.next()){
                                        %>
 <form action="" method="post"  role="form"  >
     
	<table class="table">
            <tr>
		<td>Email</td>
                <td><input type="text" name="recv" value="<%=rs.getString("email") %>" readonly="true" /></td>
            </tr></table></form>
	
     <form action="" method="post"  role="form">
            <table class="table">
            <tr>
		<td>Old  Password</td>
		<td><input type="text" name="t1" value="<%=rs.getString("password") %>" /></td><%}%>
	</tr>
        <tr>
		<td>New Password</td>
		<td><input type="password" name="t2" required="true"  /></td>
	</tr>
        <tr>
		<td>ReEnter New Password</td>
		<td><input type="password" name="password"   required="true" /></td>
	</tr>
          <tr>
		<td></td>
		<td><input type="submit" value="Update" name="btn_update" class="btn btn-success" /></td>
	</tr>
         </table>      
</form>
  
</div>
     <%
	if((request.getParameter("btn_update")!=null))
	{
          Class.forName("com.mysql.jdbc.Driver");	
        String passwords;
        passwords=request.getParameter("password");
         try{ String sq="update xyz set password='"+passwords+"' where email='"+a+"'";
         int res=st.executeUpdate(sq);
	if(res!=0)
	response.sendRedirect("user.jsp");
               
			
     %>


<div class="col-md-2 ">
</div>
<%
	}catch(Exception e)
	{
		out.println(e.toString());
	}}
%>

</div>
</div>
</body>
</html>
