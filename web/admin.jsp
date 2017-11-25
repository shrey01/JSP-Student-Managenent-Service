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
    <%@include file="file/header.jsp" %>
</head>

<body>
    
        <div class="container">
            <div class="row">
                <div class="col-md-12 ">
                       <% if(session.getAttribute("UserName")!=null)
                        {
                            String un=(String)session.getAttribute("UserName"); %>
                            <jsp:include page="adminmenu.jsp" />
                       <%
                         }
                         else
                         {
                            response.sendRedirect("login.jsp");
                         }
                    %>
                </div>

                    
            </div>
        </div>
                
                        <%@include file="script.jsp" %>
</body>
</html>
