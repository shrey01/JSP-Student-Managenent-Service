<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>

        <%@page import="java.sql.*"%>
<%
            
            String str = session.getAttribute("UserName").toString();
            
            try
                {
                    
            
                    Class.forName("com.mysql.jdbc.Driver");	
                    
                    ResultSet res=st.executeQuery("select * from img where email='"+str+"'");
                   
                    while(res.next())
                        {
                            
                            str=res.getString("str");
            %>
                <div>
                    <img src="image/<%=str%>">
                    <h2><%=str%></h2>
                </div>
            <%
                        }
                }
                    catch(Exception ex)
                        {
                            ex.printStackTrace();

                        }
            %>
    