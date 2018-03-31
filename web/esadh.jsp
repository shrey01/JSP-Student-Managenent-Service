 <%@include file="file/header.jsp" %>
 <%@page import="java.sql.*"%>
 <html>
    <head>
        
<style>
p.normal {
    font-style: normal;
}

p.italic {
    font-style: italic ;
}
h1 {
    font-size: 40px;
}
p.oblique {
    font-style: oblique ;
}
</style>
        <title>Our Motive</title>
    </head>
    <body>
         <div>
             
                <div class="col-sm-12" align="center">
                    <img src="img/index.png" alt="" />
                          <br>
                              <a href="index.jsp" class="btn pull-right btn-fill btn-hover bg-warning center-block "  name="btn"><h3>Exit</h3></a>
                          </div>
            </div>
        
         <table class="table">
    <thead>
         <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from abt") ; 
                           

                   %>
      <tr>
       
          <th><p class="italic"><h1>Our Motive</h1></p></th>
      </tr>
       </thead>
    <tbody>
      <tr class="active">
        <% rs.last();%>
        <td><div class="shreyaskar text-warning"><p class="oblique"><%=rs.getString(1)%></p></div></td>
       
      </tr>
      
    </tbody>
  </table>
        
           <div>
             
                <div class="col-sm-12" align="center">
                   
                          <br>
                              <a href="index.jsp" class="btn  btn-fill btn-hover bg-info center-block "  name="btn"><h3>Exit</h3></a>
                          </div>
            </div>
        
           </body>
</html>
