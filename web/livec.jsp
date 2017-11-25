<%-- 
    Document   : livec
    Created on : 23 Sep, 2017, 8:19:04 PM
    Author     : SHREYASKARNATH
--%>

    <body>
        
        <div class="column">
            <%@page import="java.sql.*"%>
  <div class="col-lg-12">
 <% 
                  
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    	
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement sst=conn.createStatement();

                    ResultSet rss = sst.executeQuery("SELECT * FROM course ");
                     
                    %>
                    
     
    
<div class="container">
  <h2>MNNIT</h2>    
  <p><h1>PRESENTING LIVE!</h1></p>                  
  <table class="table table-striped table-responsive  " >
    <thead>
      <tr>
          <th>Course Name.</th>
       
        <th>Start </th>
        <th>End</th>
         <th>Description</th>
         <th>Contact</th>
      </tr>
    </thead>
    <% while(rss.next()){ %>
    <tbody>
        <tr class="text-danger text-uppercase">
        <td><%=rss.getString(1)%></td>
        
        <td><%=rss.getString(3)%></td> 
        <td><%=rss.getString(4)%></td> 
        <td><a data-toggle="popover" title="<%=rss.getString(2)%>" data-content="<%=rss.getString(2)%>">view</a></td>
        <td><%=rss.getString(5)%></td>
         </tr>
      <% } %>
    </tbody>
  </table>

</div>
    </body>
   

