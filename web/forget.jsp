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
		function tncaccept(v)
		{
			s=document.getElementById("sub");
			if (v==true){
				s.disabled=false;
			}
			else{
				s.disabled=true;
			}
		}
	</script>
        <style>
            .container{
                             
              font-size: 24;
            }
            
            
        </style>
        
</head>


<body>
   <%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<script src="js/bootstrap.min.js"></script>
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
                        <a class="page-scroll" title="Login" href="login.jsp">Login</a>
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
                <div class="col-xs-12 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                    <h2 class="margin-top-0 wow fadeIn">Forgot Password?</h2>
                    
                    
                </div>
                <div class="col-sm-8 col-lg-offset-1 text-center">
                    <form role="form" method="post" action="">
                      <div class="form-group" >
                       <div class="margin-top-0 wow fadeIn">
                          <label for="t1">User Name &nbsp&nbsp&nbsp&nbsp</label>
                          <input type="email" class="form-control" id="a1" name="a1" placeholder="Enter your Registered Email" ><br>

                       <input type="number" class="form-control" id="a2" name="a2" placeholder="Enter Registered Mobile no" >
                       </div>
                      </div>
                                <br>  <br><input type="submit" class="btn btn-primary" value="Submit" /><br>
                                <%
                                    if(request.getParameter("a1")!=null && request.getParameter("a2")!=null)
                                        
                                    {
                                       String un1=request.getParameter("a1");
                                         String un2=request.getParameter("a2");
                                        boolean flag=false;
                            try{
                                    Class.forName("com.mysql.jdbc.Driver");	
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                    Statement st=con.createStatement();
                                    ResultSet rs=st.executeQuery("select * from xyz where email='"+un1+"' and mobile='"+un2+"'");
                                    if(rs.next())
                                    {
                                        flag=true;
                                        out.println("Hello "+ un1 +" Have a Good day .One last Moment Please! Thanks for your patience");
                                %>
                                      
                                 
                             <fieldset  method="post" form="form1">
                                 <div class="form-group">
                                  <p class="hidden"><input type="email" class="form-control" name="recv" value="<%=rs.getString(16) %>" readonly="true" size="40" required="required"></p>
                                 </div>
                                 
                                 <div class="form-group">
                                 <p class="hidden"> <input type="password" class="form-control" name="password" value="<%=rs.getString(17) %>" readonly="true" size="40" required="required">
                                
                                  </p> </div>
                                         <div class="checkbox">
                                             <label><input type="checkbox" value="" required="true"> If found ineligible,wrong I understand that criminal proceedings can
                                          be initiated against me for fraudulent entry and Account will be the state of being rejected.</label>
                                          </div>
                                
                                  <button class="btn btn-primary" type="submit" formaction="https://heavywater.000webhostapp.com/mail2.php" >Send My Password </button>                                
                                       
                               </fieldset>
                                 
                                <%
                                    }
                                else 
                                {
                                out.println("Wrong Password or Invalid User. Try again!!!");
                                }


                                    }
                        catch(Exception e)
                            {
                                    out.println(e.toString());
                            }
                                    }
                        %>
                    </form>
                    
                    
                                              
                    </div>
            </div>
        </div>
    </section>
                        <%@include file="script.jsp" %>
</body>
</html>

