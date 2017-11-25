 <%@include file="file/header.jsp" %>
 <%@page import="java.sql.*"%>
 <html>
    <head>
        

        <title>Our Motive</title>
    </head>
    <body>
        
        
         <table class="table">
    <thead>
         <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from abt") ; 
                           

                   %>
      <tr>
       
        <th>Our Motive</th>
      </tr>
    </thead>
    <tbody>
      <tr class="active">
        <% rs.last();%>
        <td><div class="shreyaskar text-warning"><%=rs.getString(1)%></div></td>
       
      </tr>
      
    </tbody>
  </table>
            <div>
                <div class="col-sm-12">
                          <br>
                              <a href="index.jsp" class="btn btn-xl btn-fill btn-hover bg-info center-block "  name="btn"><h3>Exit</h3></a>
                          </div>
            </div>
        
           </body>
</html>
