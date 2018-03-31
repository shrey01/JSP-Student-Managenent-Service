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
				<li >
                    <a href="download.jsp">
                        <i class="pe-7s-albums"></i>
                        <p>download</p>
                    </a>
                </li>
                <li class="active">
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
        
         <div class="author">
                                     <%
            
                                            String str = session.getAttribute("UserName").toString();

                                            try
                                                {


                                                    Class.forName("com.mysql.jdbc.Driver");	

                                                    ResultSet res=st.executeQuery("select * from rupload where email='"+str+"'");

                                                   res.last();
                                                        

                                                            str=res.getString("rest");
                                            %>
                                                     
                                            <img class="img-responsive"  src="..//admin/Rupload/<%=str%>" alt="<%=str%>" height="20%" width="35%" /> 
                 <%
                                                                                                 
                                                }
                                                    catch(Exception ex)
                                                        {
                                                            ex.printStackTrace();

                                                        }
                                            %> 
                                            
                                           
                                       
             </div>
          
        <div>           
         <h3>File Upload:</h3>
          Select a file to upload: <br />
           <form action = "uprct.jsp" method = "post" enctype = "multipart/form-data">
              <input type = "file" name = "file"  />
              <br />
             <input type = "submit"  value = "Upload File" />
           
           </form>
          <h4>Max File Size Should not exceed more than 0.2Mb (only .jpg is Applicable)</h4>
        </div>
        
 
    <%@include file="script.jsp" %>
</body>

    

</html>
