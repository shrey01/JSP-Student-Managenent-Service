<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
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
                        <a href="admin.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li>
                        <a href="#">Information</a>
                    </li>
                    <li>
                        <a href="ashowall.jsp">Show</a>
                    </li>
                    <li>
                        <a href="#">Delete Info</a>
                    </li>
                    <li>
                        <a href="#">Update Info</a>
                    </li>
                    <li>
                        <a href="#">Search By ID</a>
                    </li>
                    <li>
                        <a href="#">Search By Name</a>
                    </li>
                    
                    
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

</body>
</html>
