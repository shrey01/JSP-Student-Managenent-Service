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
   
<div class="wrapper">
    
    <div class="sidebar" data-color="red" data-image="img/sidebar-5.jpg">
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
                 <li class="active">
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
                        
        
                     <form class="form-horizontal" method="post" >
                        <div class="form-group">
                          <label class="control-label col-sm-2" for="course">Course Name:</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" name="t21" placeholder="Enter Course Name" required="true">
                          </div>
                        </div>
                        <div class="form-group">
                        <label class="control-label col-sm-2" for="comment">Comment:</label>
                         <div class="col-sm-10">
                         <textarea class="form-control" rows="5" name="t22" required="true"></textarea>
                         </div>
                        </div>
                        <div class="form-group">
                          <label class="control-label col-sm-2" for="course">Phone no:</label>
                          <div class="col-sm-10">
                              <input type="number" class="form-control" name="t25" placeholder="Enter Phone no of Manager " required="true">
                          </div>
                        </div>
                       
                         <div class="form-group">
                        <label class="control-label col-sm-2" for="comment">Duration</label>
                         <div class="col-sm-10">
                          From:<input type="date" name="t23" class="form-control" placeholder="DD/MM/YYYY" min="1980" max="2000" required/>
                          TO:<input type="date" name="t24" class="form-control" placeholder="DD/MM/YYYY" min="1980" max="2000" required/>
                        </div>
                       </div>
                        <div class="form-group" align="right"> 
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="reset" class="btn btn-danger btn-fill">Reset</button>&nbsp&nbsp&nbsp
                            <button type="submit" class="btn btn-default btn-fill"  name="btn_opt1">Submit</button>
                          </div>
                        </div>
                         <%
                              String a=session.getAttribute("UserName").toString(); 
              
                        if(request.getParameter("btn_opt1")!=null)
                        {
                                String opt1,comment,date_start,date_end,phone;
                                opt1=request.getParameter("t21");
                                comment=request.getParameter("t22");
                                date_start=request.getParameter("t23");
                                date_end=request.getParameter("t24");
                                phone=request.getParameter("t25");
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement st=con.createStatement();
                                        String sql="insert into course values('"+opt1+"','"+comment+"','"+date_start+"','"+date_end+"','"+phone+"')";
                                        int res=st.executeUpdate(sql);
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
                 
                    <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from course") ; 
                           

                   %>
        
<div class="container">
  <h2>MNNIT</h2>    
  <p><h1>PRESENTING LIVE!</h1></p>                  
  <table class="table table-striped">
    <thead>
      <tr>
          <th>Course Name.</th>
        <th>Description</th>
        <th>Start </th>
        <th>End</th>
      </tr>
    </thead>
    <% while(rs.next()){ %>
    <tbody>
      <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td> 
        <td><%=rs.getString(4)%></td>
      </tr>
      <% } %>
    </tbody>
  </table>



 
      <form class="form-horizontal" method="post" action="editcr.jsp" >
                       <div class="form-group">
                       <br> <br>   <label class="control-label col-sm-2" for="course">->  Delete Course!!!</label>
                          <div class="col-sm-3">
                             <input type="text" class="form-control" name="t12" placeholder="Remove Course Name " required="true">
                                                   
                          </div>
                       </div>
          
                                               
                        <div class="form-group" align="middle"> 
                          <div class="col-sm-offset-2 col-sm-10">
                              Press ->
                          <button type="submit" class="btn btn-danger btn-fill"  name="btn_opt2">Delete</button>
                          </div>
                        </div>
          <br>
              
                       
                      
          <h3>
                         <%
                              
              
                        if(request.getParameter("btn_opt2")!=null)
                        {
                                String dl;
                                dl=request.getParameter("t12");
                               
                               
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Statement st=con.createStatement();
                                        String sql="delete from course where opt1='"+dl+"' ;";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>Record deleted ");
                                        else
                                                out.println("<br>Record Not deleted may be you have enter the wrong course name/value .");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                        }
                        %></h3> 
                        
          </form>
                                   
                    </div>
                    

                </div>
            </div>
        </div>
       
    </div>
</div>

    <%@include file="script.jsp" %>
</body>

    

</html>
