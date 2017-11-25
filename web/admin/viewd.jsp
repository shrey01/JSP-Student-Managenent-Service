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
            
                                            String str = session.getAttribute("UserName").toString();

                                            try
                                                {


                                                    Class.forName("com.mysql.jdbc.Driver");	

                                                    ResultSet res=st.executeQuery("select * from file ");

                                                     while(res.next())
                                                     {

                                                            str=res.getString("fname");
                                            %>
                                        <div class="content">
                                          <div class="container-fluid">

                                      <div class="Shreyaskar_Nath_Tripathi col-md-12" >
                                      <a href="../admin/file/<%=str%>" download><br>
                                      <img border="0" alt="<%=str%>" />
                               </a>
                                      </div >
             <%
                                                      } 
                                                }
                                                    catch(Exception ex)
                                                        {
                                                            ex.printStackTrace();

                                                        }
                                            %>                                                
                            </div>
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
