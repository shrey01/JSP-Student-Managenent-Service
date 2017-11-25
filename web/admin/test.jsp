<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <%@include file="header.jsp" %>
    <style>

        .bgimg {
            background-image: url('http://blog.connectionsacademy.com/wp-content/uploads/history-of-computer-programming.jpg');
            height: 100%;
            background-position: center;
            background-size: cover;
            position: relative;
            color: white;
            font-family: "Courier New", Courier, monospace;
            font-size: 25px;
        }

        .topleft {
            position: absolute;
            top: 0;
            left: 16px;
        }

        .bottomleft {
            position: absolute;
            bottom: 0;
            left: 16px;
        }

        .middle {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        hr {
            margin: auto;
            width: 40%;
        }
        </style>
</head>

<body>
<%@include file="connection.jsp" %>
<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
            <div class="logo">
               <a href="dashboard.jsp" class="simple-text">
                    HOME
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="dashboard.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="table.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Table List</p>
                    </a>
                </li>
                <li class="active">
                    <a href="test.jsp">
                        <i class="pe-7s-news-paper"></i>
                        <p>Skill-Test</p>
                    </a>
                </li>
                <li >
                    <a href="course.jsp">
                        <i class="pe-7s-science"></i>
                        <p>COURSE</p>
                    </a>
                </li>
                
               
                
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" >Test</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                       
                       
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="user.jsp">
                               <p>Account</p>
                            </a>
                        </li>
                       
                        <li>
                            <a href="../Logout.jsp">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-md-12">
                        <div class="bgimg">
                            <div class="topleft">
                            </div>
                            <div class="middle">
                              <h1></h1>
                              <p id="demo" style="font-size:30px "></p>
                            </div>
                            <div class="bottomleft">
                                <br>
                                <br>
                              <p style="color: red;">Test Start Time</p>
                            </div>
                          </div>

                          <script>
                          // Set the date we're counting down to
                          var countDownDate = new Date("Jun 30, 2018 07:29:10").getTime();
                          // Update the count down every 1 second
                          var countdownfunction = setInterval(function() {

                              // Get todays date and time
                              var now = new Date().getTime();
                              ("https://www.w3schools.com");
                              // Find the distance between now an the count down date
                              var distance = countDownDate - now;

                              // Time calculations for days, hours, minutes and seconds
                              var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                              var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                              var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                              var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                              var q=days + "d " + hours + "h "
                              + minutes + "m " + seconds + "s ";
                              var w=q.fontcolor("black");
                              document.getElementById("demo").innerHTML =w; 

                              // If the count down is over, write some text 
                              if (distance < 0) {
                              var a="For Participating Click";
                              var rs=a.fontcolor("black");
                                  var click="here";
                                  var link=click.link("https://www.codechef.com");
                                  clearInterval(countdownfunction);
                                  document.getElementById("demo").innerHTML = rs+" " +link ;

                              }
                          }, 1000);
                          </script>
                    </div>

                </div>
            </div>
        </div>


       

       

    </div>
</div>

    <%@include file="script.jsp" %>
</body>

    

</html>
