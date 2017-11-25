<!DOCTYPE html>
<html lang="en">
<head>
    <%@page import="java.sql.*"%>
 <%@include file="head/header.jsp" %>
 <title>Remove Member</title>

</head>
<body>
   <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from team") ; 
                           

                   %>
<div class="container container-fluid">
  <h1>Select</h1>
  <form class="form-horizontal" method="post" action="removet.jsp">
    <div class="form-group">
      <label for="sel1">Select Member (select one):</label>
      
      <select class="form-control form-success" name="t12">
        <% while(rs.next()){ %>
          <option><%=rs.getString(1)%></option>
       <% } %>
      </select>
    </div>
                          
                      
                        <div class="form-group" align="right"> 
                          <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-danger btn-hovern btn-fill"  name="btn_opt2">Delete</button>
                          </div>
                        </div>
        <h3>
                         <%
                              
              
                        if(request.getParameter("btn_opt2")!=null)
                        {
                                String dl;
                                dl=request.getParameter("t12");
                               
                               
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Statement st=con.createStatement();
                                        String sql="delete from team where name='"+dl+"' ;";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0)
                                                out.println("<br>Record deleted ");
                                        else
                                                out.println("<br>Record Not deleted may be you have enter the wrong with Member name/value .");
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
