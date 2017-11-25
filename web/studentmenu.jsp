<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="file/header.jsp" %>
</head>
<body>
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#first"><i class="ion-ios-analytics-outline"></i> (ES)<sup>2</sup>AD</a>
            </div>
            <div class="navbar-collapse collapse" id="bs-navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="student.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li>
                        <a href="#">Information</a>
                    </li>
                    <li>
                        <a href="#">My Details</a>
                    </li>
                    <li>
                        <a href="#">Classroom Solution</a>
                    </li>
                    <li>
                        <a href="#">Test Solution</a>
                    </li>
                    
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Logout.jsp">Logout</a>
                        
                    </li>
                </ul>
            </div>
            <h2>
            <% 
                String a=session.getAttribute("UserName").toString();
                out.println("Hello "+a);
                %>
            </h2>
            <table align="center" cellpadding="5" cellspacing="5" border="1">
                <tr>

                </tr>
                <tr bgcolor="#A52A2A">
                <td><b>id</b></td>
                <td><b>user_id</b></td>
                <td><b>Password</b></td>
                <td><b>Name</b></td>
                <td><b>Email</b></td>
                </tr>
            <%
                try{ 
                    Class.forName("com.mysql.jdbc.Driver");	
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement st=con.createStatement();

                    ResultSet rs = st.executeQuery("SELECT * FROM xyz WHERE email='"+a+"'");
                    while(rs.next()){
                    %>
                    <tr bgcolor="#DEB887">

                    <td><%=rs.getString("name") %></td>
                    <td><%=rs.getString("dob") %></td>
                    <td><%=rs.getString("gender") %></td>
                    
                    </tr>

                    <% 
                    }

                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>
            </table>
           <%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
        </div>
    </nav>

</body>
</html>
