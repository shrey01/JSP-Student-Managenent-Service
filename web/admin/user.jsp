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
 
    <script>
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
</script>
</head>


                    <% 
                    String a=session.getAttribute("UserName").toString();
                    
                    try{ 
                        Class.forName("com.mysql.jdbc.Driver");
                    	
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement st=con.createStatement();

                    ResultSet rs = st.executeQuery("SELECT * FROM xyz WHERE email='"+a+"'");
                    while(rs.next()){
                    %>
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
                <li  class="active">
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
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content" align="center">
                                <div class="author">
                                     <%
            
                                            String str = session.getAttribute("UserName").toString();

                                            try
                                                {


                                                    Class.forName("com.mysql.jdbc.Driver");	

                                                    ResultSet res=st.executeQuery("select * from img where email='"+str+"'");

                                                     res.last();

                                                            str=res.getString("str");
                                            %>
                                                
                                            
                                    <img class="avatar border-gray " src="image/<%=str%>" >
                                    
                                    <%
                                                       
                                                }
                                                    catch(Exception ex)
                                                        {
                                                            ex.printStackTrace();

                                                        }
                                            %>
                                    <h4>Upload Photo</h4>
                                    <p class="description text-center"><%@include file="upload.jsp" %></p>
                                    <%
                                        rs = st.executeQuery("SELECT * FROM xyz WHERE email='"+a+"'");
                                        while(rs.next()){
                                        %>
                                        <div id="printableArea">
                                            <img src="img/index.png"/>
                                                 
                                          <h4 class="title" >
                                       
                                          <table border="2"  style="background-color:#42f4c8"  BORDERCOLOR="#5e8776" align="center" >
                                          <tr><td> User Name</td> <td><%=rs.getString("name") %></td>  </tr>
                                          <tr><td> F.Name</td> <td><%=rs.getString("fathername") %></td>  </tr>
                                          <tr><td> M.Name</td> <td><%=rs.getString("mothername") %></td>  </tr>
                                          <tr><td> D.O.B</td> <td><%=rs.getString("dob") %></td>  </tr>
                                          <tr><td> Gender</td> <td><%=rs.getString("gender") %></td>  </tr>
                                          <tr><td> Qualification</td> <td><%=rs.getString("qualification") %></td>  </tr>
                                          <tr><td> Branch</td> <td><%=rs.getString("branch") %></td>  </tr>
                                          <tr><td> Organisation</td> <td><%=rs.getString("organisation") %></td></tr>
                                          <tr><td> Designation</td> <td><%=rs.getString("designation") %></td>  </tr>
                                          <tr><td> Address</td> <td><%=rs.getString("address") %></td>  </tr>
                                          <tr><td> City</td> <td><%=rs.getString("city") %></td>  </tr>
                                          <tr><td> Pincode</td> <td><%=rs.getString("pincode") %></td>  </tr>
                                          <tr><td> Email</td> <td><%=rs.getString("email") %></td></tr>
                                          <tr><td> Accomodation</td> <td><%=rs.getString("accomodation") %></td></tr>
                                          <tr><td> Mobile no</td> <td><%=rs.getString("mobile") %> </td></tr>
                                          <tr><td> User Type</td> <td><%=rs.getString("utype") %></td></tr> 
                                          <tr><td> Authenticated</td> <td><%=rs.getString("auth") %></td></tr>
                                          <% } %>
                                         
                                   
                                            </table>
                                             
                                        </div>    
                                        <br> <br>   
                                        <input type="button" class="btn btn-danger active" onclick="printDiv('printableArea')" value="Print Id.Card" />          
                                            
                                           
                                             
                                             
                                      </h4>
                                    
                                </div>
                                
                                                 
                               
                            </div>
                            <hr>
                            
                        </div>
                    </div>

                </div>
            </div>
                                          
                              
                            
                             <form  method="post" action="changepass.jsp" >
                                
                              <button class="btn btn-primary btn-fill" type="submit"" >Change Password </button>                                
            
                               </form>
                                      
                               </div>
                                           <div>
                <div class="col-sm-12">
                          <br>
                              <a href="abut.jsp" class="btn btn-xl btn-fill btn-hover bg-success center-block "  name="btn"><h3>Write Motivation / AIM / About Organization this w'll be visible to every one </h3></a>
                          </div>
            </div>
        </div>


      

    </div>
  

    <%@include file="script.jsp" %>
                    <% 
                    
                    }
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>
                   


    

</html>
