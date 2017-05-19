<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type='text/javascript'
  src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
    function EnableDisableTextBox(chkROD) {
        var txtROD = document.getElementById("txtROD");
        txtROD.disabled = chkROD.checked ? false : true;
        if (!txtROD.disabled) {
            txtROD.focus();
        }
        
    }
</script>
<script type="text/javascript">
    function EnableDisableTextBox(chkROD1) {
        var txtROD1 = document.getElementById("txtROD1");
        txtROD1.disabled = chkROD1.checked ? false : true;
        if (!txtROD1.disabled) {
            txtROD1.focus();
        }
        
    }
</script>
<script type="text/javascript">
    function EnableDisableTextBox(chkROD2) {
        var txtROD2 = document.getElementById("txtROD2");
        txtROD2.disabled = chkROD2.checked ? false : true;
        if (!txtROD2.disabled) {
            txtROD2.focus();
        }
        
    }
</script>
</head>
<body>
<form class="form-signin" name="loginForm" method="post" action="UploadServlet" enctype="multipart/form-data">
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                
                    
                    <a class="navbar-brand" href="#">Onboard</a>
              
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
</li>
                        <li>
                            <a href="#">Settings</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="Login.html">Logout</a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </nav>
        </div>
       
            <div class="row">
            <br>
                <div class="col-sm-2 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active">
                            <a href="display.jsp">Home </a>
                        </li>
                        <li>
                            <a href="display.jsp">Functional</a>
                        </li>
                        <li>
                            <a href="component.jsp">Component</a>
                        </li>
                        <li>
                            <a href="sample.jsp">Technical</a>
                        </li>
                        <li ><a href="business.jsp">Business</a></li>
                            
                        
                    </ul>
                </div>
                
                <div class="col-md-9">
                    <h1 class="page-header">Intake</h1>
                    <h3>Technical</h3>
                    <center>
	
	<label for="chkROD" text-align:"left">
    										<input type="checkbox" id="chkROD" onclick="EnableDisableTextBox(this)" />
    														Are there any Schema diagrams or Screen or Report Requirement Template?
												</label>
	
												
		<input type="file" name="file" size="60"  id="txtROD2" disabled="disabled" /><br />
		<br /> <input type="submit" class="btn btn-primary"  value="Upload" />
		
	</form>
</center>
       </div>

</body>
</html>