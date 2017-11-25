<%-- 
    Document   : Action_file.jsp
    Created on : 20 Oct, 2017, 11:22:47 AM
    Author     : SHREYASKARNATH
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
     
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css'>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File</title>
</head>
<body background="img/index.png">
    <img src="img/index.png" align="middle"/>
    <style>
div{
    background-color: white;
}
</style>


<!--picture -->
<div>
<h3 align="middle"><a>Photo Upload:</a></h3>
<h4 align="middle">Select Photo: </h4>



<form method="POST" action="Action_file_upload3.jsp" enctype="multipart/form-data" align="middle">
	     
&nbsp&nbsp&nbsp&nbsp<div class="btn-file btn btn-primary btn-lg">
  <span>
    <i class="glyphicon glyphicon-file"></i> Upload
  </span>
    <input type="file" name="file" required="true"><br>
  
</div>
		<br><br>&nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary">Submit</button>&nbsp
		<button type="reset" class="btn btn-danger">Reset</button> <br>
<div class="active pull-right alert-danger"><h6>(only png/jpg acceptable upload size should be less than 4X1024kb ie: 4.5MB)**</h6>
</div>	
</form>
</div>
<div class="active alert-danger">
                        <div class="form-group" > 
                          <div class="col-sm-12">
                              
                              <a href="dashboard.jsp" class="btn btn-xl btn-fill btn-warning pull-left "  name="">Back</a>
                                                
                              <a href="viewp.jsp" class=" btn btn-xl btn-fill btn-warning pull-right"  name="">View Photo</a>
                          </div>
                        </div>
                      
</div>	
<!--file upload-->
<div>
<br><h3 align="middle"><a>File Upload:</a></h3>
<h4 align="middle">Select File: </h4>


<form method="POST" action="Action_file_upload2.jsp" enctype="multipart/form-data" align="middle">
	     
&nbsp&nbsp&nbsp&nbsp<div class="btn-file btn btn-primary btn-lg">
  <span>
    <i class="glyphicon glyphicon-file"></i> Upload
  </span>
    <input type="file" name="file" required="true"><br>
</div>
		<br><br>&nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary">Submit</button>&nbsp
		<button type="reset" class="btn btn-danger">Reset</button> <br>
<div class="active pull-right alert-danger"><h6>(upload size should be less than 4X1024kb ie: 4.5MB)**</h6>
</div>	
</form></div>
<div class="active alert-danger">
                        <div class="form-group" > 
                          <div class="col-sm-12">
                              
                              <a href="dashboard.jsp" class="btn btn-xl btn-fill btn-warning pull-left "  name="">Back</a>
                                                
                              <a href="viewd.jsp" class=" btn btn-xl btn-fill btn-warning pull-right"  name="">View Upload</a>
                          </div>
                        </div>
                      
</div>	
</div>
</body>
</html>