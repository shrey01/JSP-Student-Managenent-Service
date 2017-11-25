<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("username");
            session.removeAttribute("password");
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
        <h1>Logout was done successfully.</h1>
    </body>
</html>
