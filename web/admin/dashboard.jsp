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
                <li class="active">
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
</nav>
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                  
                    <a class="navbar-brand" >Dashboard</a>
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

          <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Summer Training Program - Enhancing Skill For Enterprise Scale Application Development</h3>
                                <p class="category">Govt. added Plan [MNNIT]</p>
                            </div>
                            <div class="content">

                                
                                <div class="typo-line">
                                    <p><span class="category">Contrast</span>The program tries to enhance the skill of graduating students to increase the chances of
									employability which is very poor in India according to reports. Sangeeta Gupta, Senior Vice precident, 
									NASSCOM said, "Our engineers are not unemployable, they just don't have industry-ready talent. In other words, they lack the
									skills required for the jobs that are available to them." Our program ESAD is a step towards the enhancing skills for making newly 
									graduated students industry ready. Program is expected to solve some of these concerns of the industry along with the small contribution 
									towards "Skill India Program" of Government of India.
                                    We acknowledge all the organizations/persons who have provided valuable information /
                                    resources on the internet related to CSED-2017.</p>
                                </div>
                                <div class="col-md-12">								
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                      <!-- Indicators -->
                                      <ol class="carousel-indicators">
                                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                        <li data-target="#myCarousel" data-slide-to="1"></li>
                                        <li data-target="#myCarousel" data-slide-to="2"></li>
                                        <li data-target="#myCarousel" data-slide-to="3"></li>
                                        

                                      </ol>

                                      <!-- Wrapper for slides -->
                                      <div class="carousel-inner">
                                        <div class="item active">
                                          <img src="image/img1.jpg">
                                        </div>

                                        <div class="item">
                                          <img src="image/img2.jpg" >
                                        </div>

                                        <div class="item">
                                          <img src="image/img3.jpg">
                                        </div>


                                        <div class="item">
                                          <img src="image/img4.jpg">
                                        </div>

                                       
                                      </div>

                                      <!-- Left and right controls -->

                                    </div>
                                </div>
    
                                <div class="typo-line">
                                    <p>Quote</p>
                                        <blockquote>
                                            <p>
                                                Great things in business are never done by one person. They're done by a team of people.
                                            </p>
                                            <small>
                                                Steve Jobs,X-CEO Apple
                                            </small>
                                        </blockquote>
                                </div>

                                <div class="typo-line">
                                    <p class="category">Support</p>
                                        <p class="text-muted">
                                            For any help and support, please e-mail to <a href="mailto:esad.mnnit@gmail.com"> esad.mnnit@gmail.com</a>
                                        </p>
                                </div>
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    <div class="col-md-12 text-center typo-line">
                                    <span class="text-muted small">(ES)<sup>2</sup>AD | CSED, MNNIT Allahabad ©2017 <br>Developed By Shreyaskar Nath Tripathi </span>

                    </div>

                </div>
            </div>
        </div>
       
    </div>
</div>

    <%@include file="script.jsp" %>
</body>

    

</html>
