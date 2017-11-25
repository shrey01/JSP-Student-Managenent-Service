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
                  
                    <a class="navbar-brand" >Download !!!</a>
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
 <%
            
                                            String str = session.getAttribute("UserName").toString();

                                            try
                                                {


                                                    Class.forName("com.mysql.jdbc.Driver");	

                                                    ResultSet res=st.executeQuery("select * from file ");

                                                     while(res.next())
                                                     {

                                                            str=res.getString("fname");
                                            %>
                                        <div class="content">
                                          <div class="container-fluid">

                                      <div class="Shreyaskar_Nath_Tripathi col-md-12" >
                                      <a href="../admin/file/<%=str%>" download><br>
                                      <img border="0" alt="<%=str%>" width="104" height="142" >
                               </a>
                                      </div >
             <%
                                                      } 
                                                }
                                                    catch(Exception ex)
                                                        {
                                                            ex.printStackTrace();

                                                        }
                                            %>                                                
                            </div>
                            
                        </div>
                        
                    
                    <div class="col-md-12 text-center typo-line" align="bottom">
                                    <span class="text-muted small">(ES)<sup>2</sup>AD | CSED, MNNIT Allahabad ©2018</span>

                    </div>

                </div>
            </div>
  

    <%@include file="script.jsp" %>
</body>

    

</html>
