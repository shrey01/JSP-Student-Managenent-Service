<!DOCTYPE html>
<html lang="en">
<head>
    <%@page import="java.sql.*"%>
 <%@include file="head/header.jsp" %>
   <%@include file="connection.jsp" %>
 <title>Remove file</title>

</head>
<body>
 <%
            
                                        
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    	
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement sst=conn.createStatement();

                    ResultSet res = sst.executeQuery("SELECT * FROM weblink ");
                     
                    %>
                                      
                                            <div class="container">
  <h3>MNNIT</h3>    
  <p><h2>Download  !</h2></p>                  
  <table class="table table-striped table-responsive  " >
    <thead>
      <tr>
         
          <th>Link </th>
          <th>About</th>
     </tr>
    </thead>
    <% while(res.next()){ %>
    <tbody>
        <tr class="text-danger text-uppercase">
       
        
        <td><a href="../admin/file/<%=res.getString(2)%>" download><%=res.getString(2)%></a>
                                      </td> 
        <td><%=res.getString(2)%></td>
   
         </tr>
      <% } %>
    </tbody>
  </table>
      
                            </div>
                            
                        </div>
                        
                    
                    <div class="col-md-12 text-center typo-line" align="bottom">
                                    <span class="text-muted small">(ES)<sup>2</sup>AD | CSED, MNNIT Allahabad ©2018 <br>Developed By Shreyaskar Nath Tripathi </span>

                    </div>

                </div>
            </div>
  

    <%@include file="script.jsp" %>
                        <div>
                <div class="col-sm-12">
                          <br>
                              <a href="deletf.jsp" class="btn btn-xl btn-fill btn-hover bg-warning center-block "  name="btn"><h3>Delete</h3></a>
                          </div>
            </div>
                        <div>
                <div class="col-sm-12">
                          <br>
                              <a href="admin.jsp" class="btn btn-xl btn-fill btn-hover bg-info center-block "  name="btn"><h3>Back</h3></a>
                          </div>
            </div>
                        
</div>

</body>
</html>
