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
    <section id="course">
    <div class="wrapper">
    <div class="sidebar" data-color="azure" data-image="img/sidebar-5.jpg">

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
                <li>
                    <a href="table.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Table List</p>
                    </a>
                </li>
                
                <li class="active">
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
                    <a class="navbar-brand" >User</a>
                </div>
                <div class="collapse navbar-collapse">
                    
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


        <div class="container">
<div class="row">
<div class="col-md-11">


<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-danger">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          JAVA
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
<h3>Core Java:</h3> Introduction to Object Oriented Software development through Java. Classes and Objects, Extending classes, Polymorphism, Interfaces, Nested classes and interfaces, Exceptions, Strings, Packages, The I/O Package. <br> <br><h3>Advanced Java:</h3> Event Handling, AWT, Swing, Applets, Multi Threading, The collection frameworks, Networking, Java Server Pages (JSP), Java Servlet, Enterprise Java Beans (EJB), Java Messaging Service (JMS), Java Database connectivity (JDBC). <br> <br><h3> Design patterns, frameworks & Web Design:</h3> Singleton, Factory Method, Builder, Adapter, Bridge, Composite, Proxy, Template Method, Iterator, Observer, Visitor etc. 
Spring MVC, Struts 2, Hibernate, PHP, Java Script, Boot Strap, Ajax, AngularJS, Node.js, jQuery, Meteor, etc.<br> <br>
	  Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers "write once, run anywhere" (WORA), meaning that compiled Java code can run on all platforms that support Java without the need for recompilation. Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of computer architecture. As of 2016, Java is one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers. Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle Corporation) and released in 1995 as a core component of Sun Microsystems' Java platform. The language derives much of its syntax from C and C++, but it has fewer low-level facilities than either of them.

			The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licenses. As of May 2007, in compliance with the specifications of the Java Community Process, Sun relicensed most of its Java technologies under the GNU General Public License. Others have also developed alternative implementations of these Sun technologies, such as the GNU Compiler for Java (bytecode compiler), GNU Classpath (standard libraries), and IcedTea-Web (browser plugin for applets).

			The latest version is Java 8 which is the only version currently supported for free by Oracle, although earlier versions are supported both by Oracle and other companies on a commercial basis.
				 <br><br>
				 The prospective participants are requested to submit their applications at the address for communication. The course fee will be as follows: Industry Persons/Faculty Rs. 9000=00 Students (from other institutions) Rs. 8000=00 Students (from MNNIT Allahabad) Rs. 7000=00
      <br>      <br>      <br>
					<a class="btn btn-danger btn-lg" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
					  Proceed To Pay
					</a>
					<div class="collapse" id="collapseExample">
					  <div class="well">
                     <!--  &nbsp Industry Persons/Faculty Rs. 9000=00  <br>
						&nbsp Students (from other institutions) Rs. 8000=00 <br>
						&nbsp Students (from MNNIT Allahabad) Rs. 7000=00 <br>
						-->
						                                <form>
														  <input type="radio" name="course" value="9000" checked>Persons/Faculty <br>
														  <input type="radio" name="course" value="8000">Students from other institutions <div class="col-xs-6 pull-right"> <input type="submit" class="btn btn-success pull-right" name="reg" value="Submit"> </div><br>
														  <input type="radio" name="course" value="7000">Students from MNNIT
														 
      <%
            String str = session.getAttribute("UserName").toString();
             String email = str;           
            if(request.getParameter("reg")!=null)
                        {
                                String payment;
                               
                                payment=request.getParameter("course");
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement s=c.createStatement();
                                        String sql="insert into payment values('"+email+"','"+payment+"')";
                                        int res=s.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>Record Inserted");
                                        else
                                                out.println("<br>Record Not Inserted");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                        }
                        %>                                                                                                          
														</form> 
						</div>
	                     </div>
    </div>
  </div>
  <div class="panel panel-danger">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          <del> CISCO </del>  <!--<del> is used for strik  tag-->
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
      The Cisco curriculum is a gateway to entry-level networking jobs and IT careers. The curriculum consists of 4, 70-hour courses: Introduction to Networks, Routing and Switching Essentials, Scaling Networks, and Connecting Networks. The first 2 courses prepare you for the Cisco CCENT certification exam or to study CCNA Security. All 4 courses are recommended before taking the Cisco CCNA Routing and Switching certification exam.

    Develop a working knowledge of routing, switching, network applications, protocols, and services.
    Study with an instructor in the classroom and access expert content online anytime.
    Practice what you learn on both real equipment and Cisco Packet Tracer, a network configuration simulation tool.
    Get immediate feedback on your work through built-in quizzes and tests.
    Prepare for the workplace with collaborative projects and presentations.
    Connect with the global Cisco Networking Academy community.
	
	 
	  <br>      <br>      <br>
					<a class="btn btn-danger btn-lg" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
					  Proceed To Pay
					</a>
					
	 
	 
	</div>
    </div>
  </div>
  <div class="panel panel-danger">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          
        <del>LINUX/NETWORKING</del>  <!--<del> is used for strik  tag-->
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
          Networking Essentials covers basic networking concepts within the context of the networks you encounter every day. In this course, students will develop hands-on networking skills and understand the role networks play in our lives. This course introduces students to networking careers and prepares them for further study.

    Learn how to plan and install a network using real equipment and connect it to the Internet.
    Practice verifying and troubleshooting network and Internet connectivity.
    Learn how to recognize and mitigate security threats to a home network.
    Configure common Internet applications, set up sharing between computers, and configure basic IP services.
    Get immediate feedback on your work through built-in quizzes and tests.
    Connect with the global Cisco Networking Academy community.
	
            <br>      <br>      <br>
					<a class="btn btn-danger btn-lg" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
					  Proceed To Pay
					</a>
					

	
	</div>
    </div>
  </div>
</div>


</div>
</div>
</div>
</div>


      

    </div>
    </div>
</section>

    <%@include file="script.jsp" %>
</body>

    

</html>
