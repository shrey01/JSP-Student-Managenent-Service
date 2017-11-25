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

<div class="col-md-12 " style="font-family:impact;color:green;font-size:35px;text-align:center">
	
	Student Information System
</div>

<div class="col-md-12 ">
	<jsp:include page="admin.jsp" />
</div>


<div class="col-md-12 ">
<table class="table table-stripped" >
<tr>
	<td colspan="5" class="bg-success text-info" style="text-align:center">Students Record</td>
<tr>
<tr class="bg-danger">
	<th>Name</th><th>Father Name</th><th>Mother Name</th><th>Date of Birth</th><th>Gender</th><th>Qualification</th><th>Branch</th><th>Branch</th><th>Organisation</th><th>AICTE Approved</th><th>Designation</th><th>Work Experience</th><th>Address</th><th>City</th><th>Pincode</th><th>Mobile Number</th><th>Email</th><th>Passsword</th><th>Accomodation</th><th>UserType</th>
</tr>

<%
    String a=session.getAttribute("UserName").toString();
try{
        
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from xyz");
		while(rs.next())
		{
			%>
			<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
                        <td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><%=rs.getString(8) %></td>
			<td><%=rs.getString(9) %></td>
			<td><%=rs.getString(10) %></td>
                        <td><%=rs.getString(11) %></td>
			<td><%=rs.getString(12) %></td>
			<td><%=rs.getString(13) %></td>
			<td><%=rs.getString(14) %></td>
			<td><%=rs.getString(15) %></td>
                        <td><%=rs.getString(16) %></td>
			<td><%=rs.getString(17) %></td>
			<td><%=rs.getString(18) %></td>
                        <td><%=rs.getString(19) %></td>
			</tr>
			<%
		}
		}catch(Exception e)
		{
			out.println(e.toString());
		}
%>
</table>

</div>



</div>
</div>
</body>
</html>
