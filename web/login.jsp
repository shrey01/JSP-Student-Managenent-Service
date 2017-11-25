<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>    
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    <%@include file="file/header.jsp" %>
    <script type="text/javascript">
        function blockSpecialChar(e) {
            var k = e.keyCode;
            return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8   || (k >= 48 && k <= 57));
         
    }
    </script>
</head>

<body>
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="index.jsp#first"><i class=""><img src="img/Welcome.png" height="25" width="auto"></i> (ES)<sup>2</sup>AD</a>
            </div>
            <div class="navbar-collapse collapse" id="bs-navbar">
                <ul class="nav navbar-nav">
                    <li>
                        <a class="page-scroll" href="index.jsp#aboutModal">Intro</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="index.jsp#gallery">Gallery</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="index.jsp#feature">Features</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="index.jsp#last">Contact</a>
                    </li>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" title="Login" href="register.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <%@include file="script.jsp" %>

    <br>
    <section id="last" >
        <div class="container">
            <div class="row">
                <div class="col-xs-8 col-md-offset-2 text-center">
                    <h2 class="margin-top-0 wow fadeIn">Login</h2>
                    <hr class="primary">
                    <p>Not registered yet? <a href="register.jsp">click here</a></p>
                </div>
                <div class="col-xs-12 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                    <form role="form" method="post" action="">
                        <div class="form-group" >
                          <label for="t1">Email</label>
                          <input type="email" class="form-control" id="t1" name="t1" placeholder="Enter User Name" required="true">
                        </div>
                        <div class="form-group">
                          <label for="t2">Password</label>
                          <input type="password" class="form-control" id="t2" name="t2" placeholder="Password"required="true" onkeypress="return blockSpecialChar(event)">
                        </div>
                           <div class="form-group">
                          <div >
                            <div class="checkbox">
                              <label>
                                  <input type="checkbox" > Remember me &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <span class="psw"> <a href="forget.jsp">Forget password?</a></span>
                              </label>
                            </div>
                          </div>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Login" />
                      <!---jdbc start
                      <%
                      if(request.getParameter("t1")!=null &&request.getParameter("t1")!="admin" || (request.getParameter("t2")!=null && request.getParameter("t2")!="a' or '1'='1"))
                      {
                                
                              String un=request.getParameter("t1");
                              String pw=request.getParameter("t2");
                              boolean flag=false;
                              try{
                                      Class.forName("com.mysql.jdbc.Driver");	
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                      Statement st=con.createStatement();
                                      ResultSet rs=st.executeQuery("select * from xyz where email='"+un+"' and password='"+pw+"'");
                                      if(rs.next())
                                      {
                                              flag=true;
                                              String ut=rs.getString(19);
                                              if(ut.equals("student"))
                                              {
                                                      session.setAttribute("UserName",un);
                                                      response.sendRedirect("student/student.jsp");
                                                      return;
                                                      
                                              }
                                              else if(ut.equals("admin"))
                                              {
                                                     session.setAttribute("UserName",un);
                                                      response.sendRedirect("admin/admin.jsp");
                                                      return;
                                              }


                                      }
                                      if(flag==false)
                                      {
                                              out.println("<br><div class='text-danger'>Invalid User Name or Password</div>");
                                      }
                              }catch(Exception e)
                              {
                                      out.println(e.toString());
                              }
                      }
                      %>

                      jdbc end -->
<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>

                      <hr>
                    </form>
                </div>

    </div>
<div class="col-md-12 " >

</div>


</div>

                        <%@include file="script.jsp" %>
</body>
</html>
