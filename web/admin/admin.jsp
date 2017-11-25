<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    
</head>

<body>
    
        
                <div>
                       <% if(session.getAttribute("UserName")!=null)
                        {
                            
                            String un =(String)session.getAttribute("UserName"); %>
                            <jsp:include page="dashboard.jsp" />
                       <%
                         }
                         else
                         {
                            response.sendRedirect("../login.jsp");
                         }
                    %>
                </div>

                    
           
</body>
</html>
