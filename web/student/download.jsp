<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <%@include file="header.jsp" %>
</head>
<body>
    <%@include file="connection.jsp" %>
<div class="wrapper">
    
    <div class="sidebar" data-color="purple" data-image="img/sidebar-5.jpg">
    <!--
        Tip 1: you can change the color of the side bar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag
    -->
    	<div class="sidebar-wrapper">
            <div class="logo">
               <a href="dashboard.jsp" class="simple-text">
                    HOME
                </a>
            </div>

            <ul class="nav">
                <li >
                    <a href="dashboard.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="table.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Table List</p>
                    </a>
                </li>
                
              <li >
                    <a href="course.jsp">
                        <i class="pe-7s-science"></i>
                        <p>COURSE</p>
                    </a>
                </li>	
				<li class="active">
                    <a href="download.jsp">
                        <i class="pe-7s-albums"></i>
                        <p>download</p>
                    </a>
                </li>
                <li>
                    <a href="valid.jsp">
                        <i class="pe-7s-gleam"></i>
                        <p>upload dd/receipt</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                  
                    <a class="navbar-brand" ></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        
                       
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="dashboard.jsp">
                               <p>Account</p>
                            </a>
                        </li>
                      <li>
                            <a href="http://localhost/web/">
                                <p>Chat Room</p>
                            </a>
                        </li>
                        <li>
                            <a href="../Logout.jsp">
                                <p>Log out</p>
                            </a>
                        </li>
			<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>
 <%
            
                                        
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    	
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement sst=conn.createStatement();

                    ResultSet res = sst.executeQuery("SELECT * FROM file ");
                     
                    %>
                                      
                                            <div class="container">
  <h3>MNNIT</h3>    
  <p><h2>Download  !</h2></p>                  
  <table class="table table-striped table-responsive  " >
    <thead>
      <tr>
         
          <th>Link </th>
          <th>Date</th>
     </tr>
    </thead>
    <% while(res.next()){ %>
    <tbody>
        <tr class="text-danger text-uppercase">
       
        
        <td><a href="../admin/file/<%=res.getString(1)%>" download><%=res.getString(1)%></a>
                                      </td> 
        <td><%=res.getString(2)%></td>
   
         </tr>
      <% } %>
    </tbody>
  </table>
                                            
                                            <div>
           <%         res = sst.executeQuery("SELECT * FROM weblink");
                     
                    %>
                                      
                                            <div class="container">
  <h3></h3>    
  <p><h2>Tools !</h2></p>                  
  <table class="table table-striped table-responsive  " >
    <thead>
      <tr>
         
          <th>link</th>
          <th>Tool Detail</th>
     </tr>
    </thead>
    <% while(res.next()){ %>
    <tbody>
        <tr class="text-danger text-uppercase">
       
        
        <td><a href="../admin/file/<%=res.getString(2)%>" download><%=res.getString(2)%></a>
                                      </td> 
        <td><%=res.getString(1)%></td>
   
         </tr>
      <% } %>
    </tbody>
  </table>
                                            </div>
      
                            </div>
                            
                        </div>
                        
                    
                    <div class="col-md-12 text-center typo-line" align="bottom">
                                    <span class="text-muted small">(ES)<sup>2</sup>AD | CSED, MNNIT Allahabad ©2018 <br>Developed By Shreyaskar Nath Tripathi </span>

                    </div>

                </div>
            </div>
  

    <%@include file="script.jsp" %>
</body>

    

</html>
