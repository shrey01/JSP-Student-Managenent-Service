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
    <div class="sidebar" data-color="orange" data-image="img/sidebar-5.jpg">

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
                <li >
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
               
                 <li class="active">
                    <a href="valid.jsp">
                        <i class="pe-7s-gleam"></i>
                        <p>student validation</p>
                    </a>
                </li>
           <li>
                    <a href="Action_file.jsp">
                    <i class="material-icons">attach_file</i>
                        <p>Upload File</p>
                    </a>
                 </li>
			<li>
                    <a href="teacher.jsp">
                        <i class="material-icons">person_add</i>
                        <p>Add Teacher</p>
                    </a>
                 </li>	
                 <li>
                    <a href="about.jsp">
                       <i class="material-icons">record_voice_over</i>
                        <p>Editorial</p>
                    </a>
                 </li>		
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand">Validation</a>
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
                                        <td colspan="5" class="bg-success text-danger" style="text-align:center">User Authentication</td>
                                <tr>
                                <tr class="bg-danger">
                                        <th>Name</th><th>Email</th><th>Accomodation</th><th class="pe-7s-like2"> Confirm </th>
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
                                                        <td><%=rs.getString(16) %></td>
                                                        <td><%=rs.getString(18) %></td>
                                                        
                                                        <td>
                                                            <form method="post" action="https://heavywater.000webhostapp.com/mail.php"> 
                                                                    <div class="checkbox bg-success">
                                                                         <label><input type="checkbox" required="required">&nbspVerified </label><br>
                                                                         
                                                                     </div>
                                                                      <div class="form-group">
                                                                        
                                                                        <input type="email" class="form-control" name="recv" value="<%=rs.getString(16) %>" placeholder="<%=rs.getString(16) %>" size="40" required="required">
                                                                      </div>
                                                                     
                                                                  <input type="submit" name="submit" value="CONFIRM" class="btn btn-warning btn-xs"/>
                                                            </form>
                                                        </td>
                                                        
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
<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
    <%@include file="script.jsp" %>
</body>

    

</html>
