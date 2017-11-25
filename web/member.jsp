<%-- 
    Document   : member
    Created on : 8 Nov, 2017, 11:28:19 PM
    Author     : SHREYASKARNATH
--%>
<%@page import="java.sql.*"%>
<%@include file="file/header.jsp" %>
<html lang="en">
<head>
  

  <title>Member Details</title>
</head>
<body>

<div class="container">
  <h2>Member Details</h2>
  <p>we are always ready to help you.</p>            
  <table class="table table-responsive table-bordered">
    <thead>
        <tr>
             <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from team") ; 
                           

                   %>
        <th>Name</th>
        <th>Experience</th>
        <th>Phone No.</th>
        <th>Email</th>
        <th>Designation</th>
      </tr>
    </thead>
    <tbody>
        <% while(rs.next()){ %>
      <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><a><div class="snt text-lowercase text-primary"><%=rs.getString(4)%></div></a></td>
        <td><%=rs.getString(5)%></td>
      </tr>
       <% } %>
      
    </tbody>
  </table>
</div>
 <div>
                <div class="col-sm-12">
                          <br>
                              <a href="index.jsp" class="btn btn-xl btn-fill btn-hover bg-info center-block "  name="btn"><h3>Exit</h3></a>
                          </div>
            </div>
</body>
</html>
