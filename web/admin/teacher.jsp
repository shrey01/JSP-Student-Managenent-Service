<%-- 
    Document   : teacher.jsp
    Created on : 8 Nov, 2017, 11:36:55 PM
    Author     : SHREYASKARNATH
--%>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    
  <title>Member Registration </title>
    <%@page import="java.sql.*"%>
 <%@include file="head/header.jsp" %>



  <style>
body  {
   
    background-color: #cccccc;
}
</style>
</head>
    <body >
        <div class="container " >
            <h1>Add Member ...</h1>
        <form class="form-horizontal" method="post" >
             <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" name="t1" required="true" alt="RAGHU RAM">
  </div>
                    <div class="form-group">
    <label for="Experience">Experience:</label>
    <input type="text" class="form-control text-dark" name="t2" alt="3-YEAR etc">
  </div>
                    <div class="form-group ">
    <label for="Phone">Phone:</label>
    <input type="number" class="form-control text-dark"  alt="+1234567890" name="t3" required="true">
  </div>
            
  <div class="form-group ">
    <label for="email">Email address:</label>
    <input type="email" class="form-control text-lowercase" name="t4" required="true"  alt="shreyaskar06@gmail.com">
  </div>
  <div class="form-group ">
    <label for="Designation">Designation:</label>
    <input type="text"  class="form-control text-capitalize" name="t5" alt="Student/Doctor/phd/prof. etc">
  </div>
<%
                              String a=session.getAttribute("UserName").toString(); 
              
                        if(request.getParameter("btn_opt1")!=null)
                        {
                                String name,expr,phn,mail,desi;
                                name=request.getParameter("t1");
                                expr=request.getParameter("t2");
                                phn=request.getParameter("t3");
                                mail=request.getParameter("t4");
                                desi=request.getParameter("t5");
                                try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement st=con.createStatement();
                                        String sql="insert into team values('"+name+"','"+expr+"','"+phn+"','"+mail+"','"+desi+"')";
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

            
            <button type="reset" class="btn btn-warning btn-fill pull-left btn-hover">Reset</button>
            <button type="submit" class="btn btn-success btn-fill btn-hover pull-right" name="btn_opt1">Save</button>
   <% 
                        
                           Class.forName("com.mysql.jdbc.Driver");	
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                           Statement statement = con.createStatement() ;
                           ResultSet rs =statement.executeQuery("select * from course") ; 
                           

                   %>
</form>
            <div>
                <div class="col-sm-12">
                          <br>
                              <a href="admin.jsp" class="btn btn-xl btn-fill btn-hover bg-info center-block"  name="btn"><h3>Back</h3></a>
                          </div>
            </div>
 <div>
                <div class="col-sm-12">
                          <br>
                              <a href="removet.jsp" class="btn btn-xl btn-fill btn-hover bg-danger center-block"  name="btn"><h3>Remove Member</h3></a>
                          </div>
            </div>
            </div><hr><br>
    </body>
</html>
