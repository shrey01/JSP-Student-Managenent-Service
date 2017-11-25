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
                        <p>Table List</p>
                    </a>
                </li>
               
               <li >
                    <a href="course.jsp">
                        <i class="pe-7s-science"></i>
                        <p>COURSE</p>
                    </a>
                </li>
               <li >
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
                           <a href="dashboard.jsp">
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
                        <div class="card">
                            <div class="header">
                                <h4 class="title"> Programming Languages You Should Learn Right Now</h4>
                                <p class="category">Languages List</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>No.</th>
                                    	<th>Languages </th>
                                    	
                                    	<th>Used</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td>Java</td>
                                       
                                        	<td>enterprise software, web-based content, games and mobile apps, as well as the Android operating system</td>
                                        </tr>
                                        <tr>
                                        	<td>2</td>
                                        	<td>C Language</td>
                                        
                                        	<td>operating systems and embedded applications</td>
                                        </tr>
                                        <tr>
                                        	<td>3</td>
                                        	<td>C++</td>
                                        
                                        	<td>systems software, application software, high-performance server and client applications and video games</td>
                                        </tr>
                                        <tr>
                                        	<td>4</td>
                                        	<td>C#</td>

                                        	<td>Microsoft</td>
                                        </tr>
                                        <tr>
                                        	<td>5</td>
                                        	<td>Objective-C</td>
                                        	
                                        	<td> iPhone </td>
                                        </tr>
                                        <tr>
                                        	<td>6</td>
                                        	<td>PHP</td>
                                        	
                                        
                                        	<td>Wordpress, Digg and Facebook</td>
                                        </tr>
										 <tr>
                                        	<td>7</td>
                                        	<td>Python</td>
                                        	
                                        	
                                        	<td> Instagram, Pinterest and Rdio  used by Google, Yahoo! and NASA</td>
                                        </tr>
										<tr>
                                        	<td>8</td>
                                        	<td>Ruby</td>
                                        	
                                        	<td> Scribd, GitHub, Groupon and Shopify</td>
                                        </tr> 
										<tr>
                                        	<td>9</td>
                                        	<td>Java Script</td>
                                        	
                                        	<td>Google's Chrome extensions,  desktop applications , Apple's Safari extensions, Adobe Acrobat and Reader, and Adobe's Creative Suite</td>
                                        </tr>
										<tr>
                                        	<td>10</td>
                                        	<td>SQL</td>
                                        	
                                        	
                                        	<td> database management systems</td>
                                        </tr> 
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Practical on </h4>
                                <p class="category">Language Name</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover">
                                    <thead>
                                        <th>No.</th>
                                    	<th>Languages </th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td>Core Java</td>	
                                        </tr>
                                        <tr>
                                        	<td>2</td>
                                        	<td>Adv. Java</td>
                                        </tr>
										
					<tr>
                                        	<td>3</td>
                                        	<td>Java Script</td>
                                        </tr>
					<tr>
                                        	<td>4</td>
                                        	<td>SQL</td>	
                                        </tr>
					<tr>
                                        	<td>5</td>
                                        	<td>PHP</td>	
                                        </tr>
					<tr>
                                        	<td>6</td>
                                        	<td>JSP</td>	
                                        </tr>
					<tr>
                                        	<td>7</td>
                                        	<td>HTML</td>	
                                        </tr>
					<tr>
                                        	<td>8</td>
                                        	<td>D_HTML</td>	
                                        </tr>
					<tr>
                                        	<td>9</td>
                                        	<td>XML</td>	
                                        </tr>
								
                                    </tbody>
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
