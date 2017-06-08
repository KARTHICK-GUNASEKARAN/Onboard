<!DOCTYPE html>
<html lang="en">
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
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="expdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
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


  </head><!--from  w  w w  . ja  va 2 s.co  m-->
  <body style='margin:30px'>
  <%@page language="java"%>
<%@page import="java.sql.*"%>


<%
try {
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "root");
String query = "select * from component where id=(select max(id) from component)";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
{
%>
<form class="form-signin"name="loginForm" method="post" action="business">
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
                            <a href="project.jsp">Home </a>
                        </li>
                        
                        <li class="active"><a href="business.jsp"><bold>Business</bold></a></li>
                            
                        
                        <li>
                            <a href="sample.jsp">Technical</a>
                        </li>
                        <li>
                            <a href="requirements.jsp">Archival Requirements</a>
                        </li>
                       
                    </ul>
                </div>
                
                
                <div class="col-md-9">
                    <h1 class="page-header">Intake</h1>
                    <h3>Archival Requirements</h3>
					<div class="panel-group" id="panels1"> 
                       
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1">Screen/Report Requirement</a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse in"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                   </form>
                                        
                                       
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">Archive Requirements</a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Current Legal holds on the application data must be applied to the application's archived data to override the Retention schedule
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Data from application must be retained based on the Client Retention schedule.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Data Localization Laws must be followed where relevant.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System has tools to reconstruct the data in its original format
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System allows for user viewing of blob data in its original format in relationship to its structured data
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived data maintains its field properties and formats from the source system (i.e. decimals, %, commas, .00x, YYY-MM-DD) to display values defined in Views and schemas
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived data maintains its field types from the source system (i.e. STRING, Integer, CHAR, VCHAR, Date) to display values defined in Views and schemas
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System supports archiving special characters as found in source data to include Foreign characters
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System supports archiving Foreign Language data and maintains the Language in the archive
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System Maintains CLOBs from source systems
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System supports archiving unstructured formats such as word, excel, PowerPoint, pdf.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Access to the Archive is role based and controlled through Active Directory.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System allows for configuration of data views.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Completeness Control - record level check (The number of records sent from the Application are compared to the number of records posted to the target.)
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Error Handling Control - record level check (During the load, records deemed as errors based on program logic will be written to an exception log in their entirety).
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System supports metadata management and indexing.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System provides advanced search tools to include data parameters and the standard search tools
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Based on search parameters, data can be exported out of the system for analysis
                                            </label>                                             
                                        </div> 
                                </div>                                 
                            </div>                             
                        </div>
                    
                   
                    </div>
       
					       <button type="submit" class="btn btn-primary btn pull-left" >Save</button>&nbsp;

                    <button type="button" class="btn btn-default" onclick="location.href = 'grid.jsp';">Cancel</button> 
       </div>
                
            </div>
            
            
      
        <%
}
}
catch(Exception e){}
%>
</form>
  </body>
  <center>
      <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="grid.jsp" tabindex="-1">Previous</a>
    </li>
    
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
</center>
</html>