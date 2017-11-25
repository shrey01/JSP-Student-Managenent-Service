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
         <script type="text/javascript">
        function blockSpecialChar(e) {
            var k = e.keyCode;
            return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8   || (k >= 48 && k <= 57));
         
    }
    </script>
        <style>
            .container{
                             
              font-size: 24;
            }
            
            
        </style>
         <script type="text/javascript">

 

</script>
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
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="margin-top-0 wow fadeIn cursive">Registration form</h2>
                    <hr class="primary">
                    
                </div>
                <div class="col-sm-8 col-lg-offset-1 text-center">
                    
                    <form role="form" method="post" onsubmit="return  checkForm(this);">  
                        <table class="table">
                            <tr >
                               
                            </tr>
                            <tr></tr>

                        <tr>
                                <td>Name</td>
                                <td><input type="char" name="t1" class="form-control" required/></td>
                        </tr>
                        <tr>
                                <td>Father Name</td>
                                <td><input type="text" name="t2" class="form-control" required/></td>
                        </tr>
                        <tr>
                                <td>Mother Name</td>
                                <td><input type="text" name="t3" class="form-control" /></td>
                        </tr>
                        <tr>
                                <td>Date of Birth</td>
                                <td><input type="date" name="t4" class="form-control" placeholder="DD/MM/YYYY" min="1980" max="2000" required/></td>
                        </tr>
                        <tr>
                        <td>Gender</td>
                        <td><input type="radio" name="t5" value="male" checked="checked" >M
                        <input type ="radio" name="t5" value="female">F
                        </td>
                        </tr>
                        <tr>
                                <td>Qualification</td>
                                <td>
                                        <select  class="form-control" name="t6">
                                            <option value="B.Tech.">B.Tech</option>
                                            <option value="M.Tech.">M.Tech</option>
                                            <option value="PHD">PHD</option>
                                        </select>
                                </td>
                        </tr>

                        <tr>
                                <td>Branch</td>
                                <td>
                                        <select  class="form-control" name="t7">
                                        <option value="CS">Computer Science</option>
                                        <option value="IT">Information Technology</option>
                                        <option value="EC">Electronics and Communication Engg.</option>
                                        <option value="OS">Other</option>
                                        </select>
                                </td>
                        </tr>
                        <tr>
                                <td>Organization</td>
                                <td><input type="text" name="t8" class="form-control" /></td>
                        </tr>
                        <tr>
                        <td>AICTE Approved</td>
                        <td><input type="radio" name="t9" value="Yes" checked="checked">Yes
                        <input type ="radio" name="t9" value="No">No
                        </td>
                        </tr>
                        <tr>
                        <td>Designation</td>
                                <td><input type="text" name="t10" class="form-control" /></td>
                        </tr>
                        <td>Semester</td>
                                <td><input type="text" name="t11" class="form-control" /></td>

                        <tr>
                        <td>Address</td>
                                <td><input type="text" name="t12" class="form-control" /></td>
                        </tr>
                        <tr>
                        <td>City</td>
                                <td><input type="text" name="t13" class="form-control" /></td>
                        </tr>
                        <tr>
                        <td>Pin Code</td>
                        <td>
                            <input type="number" name="t14" class="form-control" maxlength="6" placeholder="Zip code" pattern="[1-9]{1}[0-9]{5}" title="Pin Code" />
                        </td>
                        </tr>

                        <tr>
                        <td>Mobile Number</td>
                        <td><input type="number" id="mob"  name="t15"  class="form-control"  maxlength="10" pattern="[1-9]{1}[0-9]{9}" title="Enter Phone Number" placeholder="Mobile Number" /></td>
                        </tr>

                        <tr>
                        <td>Email</td>
                        <td>
                            <input type="email" name="t16" class="form-control" placeholder="Email" required  />
                        </td>
                        </tr>

                        <tr>
                        <td>Password</td>
                        <td><input type="password" name="t17" class="form-control"  placeholder="ie: Aa1234 /{!,@,#,$,%,*,' symbols are not allowed}" onkeypress="return blockSpecialChar(event)"/></td>
                        </tr>
                        <tr>
                        <td>Accommodation</td>
                        <td><input type="radio" name="t18" value="Yes" checked="checked">Yes
                        <input type ="radio" name="t18" value="No">No
                        </td>
                        </tr>
                        <tr>
                            <td>User Type</td>
                            <td>
                                <input type="radio" name ="t19" value="student" checked="checked">Student
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"> <input type="checkbox" onclick="tncaccept(this.checked);" >I accept all the terms and condition</td>
                        </tr>
                        <tr>
                                <td colspan="2" align="right">
                                <input type="submit" id="sub" value="Register Me" class="btn btn-success btn-lg" name="btn_reg" disabled />
                                <input type="reset" value="Reset" class="btn btn-danger btn-lg" name="btn_reg" />
                                </td>
                        </tr>
                        </table>
                        <%
                        if(request.getParameter("btn_reg")!=null)
                        {
                                String name,fathername,mothername,dob,gender,qualification,branch,organisation,aicte,designation,workexperience,address,city,pincode,mobile,email,password,accomodation, utype;
                                name=request.getParameter("t1");
                                fathername=request.getParameter("t2");
                                mothername=request.getParameter("t3");
                                dob=request.getParameter("t4");
                                gender=request.getParameter("t5");
                                qualification=request.getParameter("t6");
                                branch=request.getParameter("t7");
                                organisation=request.getParameter("t8");
                                aicte=request.getParameter("t9");
                                designation=request.getParameter("t10");
                                workexperience=request.getParameter("t11");
                                address=request.getParameter("t12");
                                city=request.getParameter("t13");
                                pincode=request.getParameter("t14");
                                mobile=request.getParameter("t15");
                                email=request.getParameter("t16");
                                password=request.getParameter("t17");
                                accomodation=request.getParameter("t18");
                                utype=request.getParameter("t19");
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement st=con.createStatement();
                                        String sql="insert into xyz values('"+name+"','"+fathername+"','"+mothername+"','"+dob+"','"+gender+"','"+qualification+"','"+branch+"','"+organisation+"','"+aicte+"','"+designation+"','"+workexperience+"','"+address+"','"+city+"','"+pincode+"','"+mobile+"','"+email+"','"+password+"','"+accomodation+"','"+utype+"','No')";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>User Registration successful .Loging now!!");
                                        else
                                                out.println("<br>Error 404 Connection error!!!Check your Connection.");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                        }
                        %> 
                        <%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">

  function checkForm(form)
  {
    
   
    if(form.t17.value != "" ) {
              
      if(form.t17.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.t17.focus();
        return false;
      }
      re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}$/;
      if(!re.test(form.t17.value)) {
        alert("Error: password must contain at least one number (0-9), one lowercase letter (a-z) and one uppercase letter (A-Z)!");
        form.t17.focus();
        return false;
      }
      
     
    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.t17.focus();
      return false;
    }

    alert("You entered a valid password Press ok .");
    return true;
  }

</script>
                        <%@include file="script.jsp" %>
</body>
</html>
