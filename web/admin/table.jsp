<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <%@include file="header.jsp" %>
</head>
<body>
<%@include file="connection.jsp" %>
<div class="wrapper">
    <div class="sidebar" data-color="green" data-image="img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
            <div class="logo">
               <a href="dashboard.jsp" class="simple-text">
                    HOME
                </a>
            </div>

            <ul class="nav">
                <li>
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
                <li class="active">
                    <a href="table.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>User List</p>
                    </a>
                </li>
                 <li>
                    <a href="editcr.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Edit course</p>
                    </a>
                 </li>  
                
               <li >
                    <a href="update.jsp">
                        <i class="pe-7s-science"></i>
                        <p>Update Record</p>
                    </a>
                </li>
               
                 <li>
                    <a href="valid.jsp">
                        <i class="pe-7s-gleam"></i>
                        <p>student validation</p>
                    </a>
                </li>
            
                <li>
                    <a href="Action_file.jsp">
                        <i class="glyphicon-folder-open"></i>
                        <p>Upload File</p>
                    </a>
                 </li>
		<li>
                    <a href="teacher.jsp">
                        <i class="glyphicon-folder-open"></i>
                        <p>Add Teacher</p>
                    </a>
                 </li>		
            </ul>
    	</div>
    </div>

    <div class="main-panel ">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand">Table List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                       
                       
                      
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="user.jsp">
                               <p>Account</p>
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

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="col-md-12 ">
                                <table class="table table-stripped" >
                                <tr>
                                        <td  class="bg-success text-info " style="text-align:center">Students Record</td>
                                <tr>
                                <tr class="bg-danger">
                                        <th>Name</th><th>Father Name</th><th>Mother Name</th><th>Date of Birth</th><th>Gender</th><th>Qualification</th><th>Branch</th><th>Organisation</th><th>AICTE Approved</th><th>Designation</th><th>Work Experience</th><th>Address</th><th>City</th><th>Pincode</th><th>Mobile Number</th><th>Email</th><th>Passsword</th><th>Accomodation</th><th>UserType</th><th>Authenticated</th>
                                </tr>

                                <%
                                   
                                try{

                                        Class.forName("com.mysql.jdbc.Driver");	
                                                
                                                rs=st.executeQuery("select * from xyz");
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
                                                        <td><%=rs.getString(20) %></td>
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
                   
                </div>
            </div>
        </div>

      


    </div>
</div>

    <%@include file="script.jsp" %>
</body>

    

</html>
