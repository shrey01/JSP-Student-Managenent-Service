<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>


<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        
    </head>
    <body>
        <form>
            <button type="submit" name="b1"> Click me</button>
            <% 
                if(request.getParameter("b1")!=null){
                out.println("<input type='submit' name='t1'/>");
            }
            %>
            <input type ="file" name="picture">
        </form>
    </body>
</html>