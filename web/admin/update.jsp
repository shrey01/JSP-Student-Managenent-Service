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
                        <p>User List</p>
                    </a>
                </li>
                 <li>
                    <a href="editcr.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Edit course</p>
                    </a>
                 </li>  
                
               <li class="active">
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


        <div class="container">
<div class="row">
<div class="col-md-11">


<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-danger">
    <div class="panel-heading" role="tab" id="headingOne">
      <div class="col-md-6 ">
          <% 
                    String a=session.getAttribute("UserName").toString();
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    	
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement st=con.createStatement();

                    ResultSet rs = st.executeQuery("SELECT * FROM xyz WHERE email='"+a+"'");
                    %>
                <%
                        try{
                                Class.forName("com.mysql.jdbc.Driver");	
                                
                                String sql="select *  from xyz";
                                rs=st.executeQuery(sql);
                                out.println("<table class='table table-bordered'>");	
                                while(rs.next())
                                {
                                        String email=rs.getString(16);
                                        out.println("<tr><td>"+email+"</td>");
                                        out.println("<td>"+rs.getString(1)+"</td>");
                                        out.println("<td>"+rs.getString(2)+"</td>");
                                        out.println("<td>"+rs.getString(3)+"</td>");
                                        out.println("<td>"+rs.getString(4)+"</td>");
                                        out.println("<td>"+rs.getString(5)+"</td>");
                                        out.println("<td>"+rs.getString(6)+"</td>");
                                        out.println("<td>"+rs.getString(7)+"</td>");
                                        out.println("<td>"+rs.getString(8)+"</td>");
                                        out.println("<td>"+rs.getString(9)+"</td>");
                                        out.println("<td>"+rs.getString(10)+"</td>");
                                        out.println("<td>"+rs.getString(11)+"</td>");
                                        out.println("<td>"+rs.getString(12)+"</td>");
                                        out.println("<td>"+rs.getString(13)+"</td>");
                                        out.println("<td>"+rs.getString(14)+"</td>");
                                        out.println("<td>"+rs.getString(15)+"</td>");
                                      
                                        out.println("<td>"+rs.getString(18)+"</td>");
                                        out.println("<td>"+rs.getString(19)+"</td>");
                                        out.println("<td>"+rs.getString(20)+"</td>");
                %>
                                        <td>
                                        <a href="record_update_1.jsp?email=<%=email %>" ><span class="glyphicon glyphicon-pencil"></span>
                </a>
                                        </td>
                                        <%
                                        out.println("</tr>");		
                                }	
                                out.println("</table>");
                        }catch(Exception e)
                        {
                                out.println(e.toString());
                        }

                %>
                </div>


      

    </div>
    </div>
</section>

    <%@include file="script.jsp" %>
</body>

    

</html>
