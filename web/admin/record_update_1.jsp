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
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-2 ">
</div>
<div class="col-md-8 ">
    <% 
                    String a=session.getAttribute("UserName").toString();
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    	
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement st=con.createStatement();

                    ResultSet rs = st.executeQuery("SELECT * FROM xyz WHERE email='"+a+"'");
                    %>
<%
	String email=request.getParameter("email");
	try{
	Class.forName("com.mysql.jdbc.Driver");	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
	st=con.createStatement();
	String sql="select *  from xyz where email='"+email+"'";
	rs=st.executeQuery(sql);
	rs.next();
	%>
	<form action="" method="post"  role="form" >
	<table class="table">
	<tr>
		<td>email</td>
		<td><input type="text" name="t16" value="<%=rs.getString(16) %>" readonly="true" /></td>
	</tr>	
	<tr>
		<td>Name</td>
		<td><input type="text" name="t1" value="<%=rs.getString(1) %>" /></td>
	</tr>	
	<tr>
		<td>Father Name</td>
		<td><input type="text" name="t2" value="<%=rs.getString(2) %>" /></td>
	</tr>	
	<tr>
		<td>Mother Name</td>
		<td><input type="text" name="t3" value="<%=rs.getString(3) %>" /></td>
	</tr>	
	<tr>
		<td>Date of Birth</td>
		<td><input type="text" name="t4" value="<%=rs.getString(4) %>" /></td>
	</tr>	
        <tr>
		<td>Gender</td>
		<td><input type="text" name="t5" value="<%=rs.getString(5) %>" /></td>
	</tr>	
	<tr>
		<td>Qualification</td>
		<td><input type="text" name="t6" value="<%=rs.getString(6) %>" /></td>
	</tr>	
	<tr>
		<td>Branch</td>
		<td><input type="text" name="t7" value="<%=rs.getString(7) %>" /></td>
	</tr>	
	<tr>
		<td>Organisation</td>
		<td><input type="text" name="t8" value="<%=rs.getString(8) %>" /></td>
	</tr>	
	<tr>
		<td>AICTE Approved</td>
		<td><input type="text" name="t9" value="<%=rs.getString(9) %>" /></td>
	</tr>	
	<tr>
		<td>Designation</td>
		<td><input type="text" name="t10" value="<%=rs.getString(10) %>" /></td>
	</tr>	
	<tr>
		<td>Work Experience</td>
		<td><input type="text" name="t11" value="<%=rs.getString(11) %>" /></td>
	</tr>	
	<tr>
		<td>Address</td>
		<td><input type="text" name="t12" value="<%=rs.getString(12) %>" /></td>
	</tr>
	<tr>
		<td>City</td>
		<td><input type="text" name="t13" value="<%=rs.getString(13) %>" /></td>
	</tr>	
	<tr>
		<td>Pincode</td>
		<td><input type="text" name="t14" value="<%=rs.getString(14) %>" /></td>
	</tr>	
	<tr>
		<td>Mobile Number</td>
		<td><input type="text" name="t15" value="<%=rs.getString(15) %>" /></td>
	</tr>	
		
	<tr>
		<td>Accomodation</td>
		<td><input type="text" name="t18" value="<%=rs.getString(18) %>" /></td>
	</tr>	
	<tr>
		<td>User Type</td>
		<td><input type="text" name="t19" value="<%=rs.getString(19) %>" /></td>
	</tr>	
        <tr>
		<td><b>Authentication</b></td>
                <td> <input type="radio" name="t20" value="yes" >Yes</td>
  
                <td> <input type="radio" name="t20" value="no">No</td> 
	</tr>	
	<tr>
		<td></td>
		<td><input type="submit" value="Update" name="btn_update" class="btn btn-success" /></td>
	</tr>
	<tr>
	<td cospan="2">
	<%
	if(request.getParameter("btn_update")!=null)
	{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
		st=con.createStatement();
	String name,fathername,mothername,dob,gender,qualification,branch,organisation,aicte,designation,workexperience,address,city,pincode,mobile,email1,password,accomodation,utype,authentication;
	name=request.getParameter("t1");
	fathername=request.getParameter("t2");
	mothername=request.getParameter("t3");
	dob=request.getParameter("t4");
	gender=request.getParameter("t5");
	qualification=request.getParameter("t6");
	branch=request.getParameter("t7");
	organisation=request.getParameter("t8");
	aicte=request.getParameter("t9");
	designation=request.getParameter("t10");
	workexperience=request.getParameter("t11");
	address=request.getParameter("t12");
	city=request.getParameter("t13");
	pincode=request.getParameter("t14");
	mobile=request.getParameter("t15");
	email1=request.getParameter("t16");
	password=request.getParameter("t17");
	accomodation=request.getParameter("t18");
        utype=request.getParameter("t19");
        authentication=request.getParameter("t20");
		
		String sq="update xyz set name='"+name+"',fathername='"+fathername+"',mothername='"+mothername+"',dob='"+dob+"',gender='"+gender+"',qualification='"+qualification+"',branch='"+branch+"',organisation='"+organisation+"',aicte='"+aicte+"',designation='"+designation+"',workexperience='"+workexperience+"',address='"+address+"',city='"+city+"',pincode='"+pincode+"',mobile='"+mobile+"',password='"+password+"',accomodation='"+accomodation+"',utype='"+utype+"',auth='"+authentication+"' where email='"+email1+"'";
             int res=st.executeUpdate(sq);
		if(res!=0)
			response.sendRedirect("update.jsp");
               
	}		
	%>
	</td>
	</tr>
	</form>			
	<%
	}catch(Exception e)
	{
		out.println(e.toString());
	}
%>
</div>

<div class="col-md-2 ">
</div>

</div>
</div>
</body>
</html>
