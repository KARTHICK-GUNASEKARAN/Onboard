<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Blueprint: View Mode Switch</title>
		<meta name="description" content="Blueprint: View Mode Switch" />
		<meta name="keywords" content="view mode, switch, css, style, grid, list, template" />
		<meta name="author" content="Codrops" />
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	
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
   <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="Startdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Enddate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>   
  
<script type="text/javascript">
    function EnableDisableTextBox(chkROD) {
        var txtROD = document.getElementById("txtROD");
        txtROD.disabled = chkROD.checked ? false : true;
        if (!txtROD.disabled) {
            txtROD.focus();
        }
        
    }
</script>
<script>

$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox").attr("disabled", "disabled");
        }
    });
});
$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox1").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox1").attr("disabled", "disabled");
        }
    });
});


</script>
<script type="text/javascript">
    function ShowHideDiv() {
        var adMigrated = document.getElementById("adMigrated");
        var adMigratedDet = document.getElementById("adMigratedDet");
        adMigratedDet.style.display = adMigrated.value == "Y" ? "block" : "none";
    }
</script>

<script type="text/javascript">
    function ShowHideDiv() {
        var arcNeed = document.getElementById("arcNeed");
        var arcReason = document.getElementById("arcReason");
        arcReason.style.display = arcNeed.value == "N" ? "block" : "none";
        var arcComment = document.getElementById("arcComment");
        arcComment.style.display = arcNeed.value == "O" ? "block" : "none";
    }
</script>

<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='first.jsp';
    f.submit();
}
</script>
  
	</head>
	<body>
	<%@page language="java"%>
<%@page import="java.sql.*"%>



<form method="post" name="form" action="Project">
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
        <br>
        <br>
        <br>
       
         
        <span><h1 class="page-header" >Projects</h1></span>
       
			<div class="main">
				<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
				
					<div class="cbp-vm-options">
					<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  New Project 
</button>
						<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid">Grid View</a>
						<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list">List View</a>
					</div>
		<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "strutsdb";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from projinfo";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
	<ul>
<%
while(rs.next()){
%>			
				
						<li>
							
							
							<div class="cbp-vm-price" ><%=rs.getString(1)%></div>
							<h3 class="cbp-vm-title"><%=rs.getString(2)%></h3>
							<div class="cbp-vm-details">
								<%=rs.getString(4)%>
							</div>
							 <div class="progress">
  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10"
  aria-valuemin="0" aria-valuemax="100" style="width:10%">
    10%
  </div>
</div> 
							<a class="btn btn-primary" href="#" name="name" onClick="editRecord(<%=rs.getString(1)%>);">Add Application</a>
						</li>
												
					
					<%
}
%>
</ul>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
				</div>
			</div><!-- /main -->
			      <div id="one" class="panel-body text-left">
                     
                     <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Project Details</h4>
      </div>
      <div class="modal-body">
      <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Project Name</label>
            <input placeholder="Project Name" id="date" name="Projectname" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Description</label>
            <textarea class="form-control" placeholder="Description" name="Descr"></textarea>
            </div>
          
        </div>
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Company</label>
            <input placeholder="Company Name"  name="Company" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Start Date</label>
            <input placeholder="MM/dd/yyyy" id="date" name="Startdate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">End Date</label>
            <input placeholder="MM/dd/yyyy" id="date" name="Enddate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
        
        
      </div>
      
      <div class="modal-footer">
  
      
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="Submit" class="btn btn-primary" onClick="reload">Save changes</button>
       
      </div>
    </div>
  </div>
</div>
    
                
	
	</div>
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/cbpViewModeSwitch.js"></script>
	</body>
</html>
