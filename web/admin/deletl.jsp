<!DOCTYPE html>
<html lang="en">
<head>
    <%@page import="java.sql.*"%>
 <%@include file="head/header.jsp" %>
 <title>Remove file</title>

</head>
<body>
    

   <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from weblink") ; 
                           

                   %>
<div class="container container-fluid">
    
  <h1>Select</h1>
  <form class="form-horizontal" method="post" action="deletl.jsp">
    <div class="form-group">
      <label for="sel1">Select tool (select one):</label>
      
      <select class="form-control form-success" name="t12">
        <% while(rs.next()){ %>
          <option><%=rs.getString(1)%></option>
       <% } %>
      </select>
    </div>
      
                                
       <div class="form-group"> 
                          <div class="col-sm-offset-2 col-sm-10">
                              <label class="checkbox-inline pull-left checkbox-success"><input type="checkbox" value="" required="true">Confirmed.</label>
                         
                         &nbsp&nbsp<button type="submit" class="btn btn-danger btn-hovern btn-fill pull-right"  name="btn_opt2">Delete tool</button>
                          </div>
                        </div>
      
                        
        <h3>
                         <%
                             response.setIntHeader("Refresh", 30); 
             
                        if(request.getParameter("btn_opt2")!=null)
                        {
                                String dl;
                                dl=request.getParameter("t12");
                               
                               
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Statement st=con.createStatement();
                                        String sql="delete from weblink where tool='"+dl+"' ;";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>Record deleted Press f5");
                                        else
                                                out.println("");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                        }
                        %></h3> 
                        
      
  </form>
                          <div>
                <div class="col-sm-12">
                          <br>
                              <a href="admin.jsp" class="btn btn-xl btn-fill btn-hover bg-info center-block "  name="btn"><h3>Back</h3></a>
                          </div>
            </div>
</div>

</body>
</html>
