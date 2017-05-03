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
                
                    
                    <a class="navbar-brand" href="#">Project name</a>
              
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
                            <a href="#">Help</a>
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
                            <a href="#">Technical</a>
                        </li>
                        <li>
                            <a href="business.jsp">Business</a>
                        </li>
                    </ul>
                </div>
                
                
                <div class="col-md-9">
                    <h1 class="page-header">Intake</h1>
                    <h3>Business</h3>
					<div class="panel-group" id="panels1"> 
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1">Screen/Report Requirements</a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">This
                                                Page should have an option of add/modify/delete button
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">After
                                                the process of development, Business Analyst will be adding the requirements
                                                that are specific to the application with respect to it screens/Reports
                                            </label>                                             
                                        </div>                                         
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
                                    <form role="form"> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Current Legal holds on the application data must be applied to the application's archived data to override the Retention schedule
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Data from application must be retained based on the Client Retention schedule
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived Data encrypted must remain encrypted for data classified as Personal Sensitive or Personal Confidential
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Data Localization Laws must be followed where relevant
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Storage must be in a secure zone with minimal access
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Data Masking must be applied to archived data classified as Business Restricted
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">&nbsp;The System supports archiving structured formats maintaining the relationship to blobs                       
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">&nbsp;The System has tools to reconstruct the data in its original format                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System allows for user viewing of blob data in its original format in relationship to its structured data                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox"> Archived data maintains its field properties and formats from the source system (i.e. decimals, %, commas, .00x, YYY-MM-DD) to display values defined in Views and schemas                      
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived data maintains its field types from the source system (i.e. STRING, Integer, CHAR, VCHAR, Date) to display values defined in Views and schemas                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">At least one search field must be completed to retrieve data                        
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
                                                <input type="checkbox">The System Maintains table relationships                       
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System Maintains CLOBs from source systems
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System supports archiving unstructured formats such as word, excel, PowerPoint, pdf                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Access to the Archive is role based and controlled through Active Directory                      
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived data must be accessible for use in existing BI data warehouses or AA Reporting solutions after XML data has been converted
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived Master data marked as Master Data from the source system will     maintain is data relationships
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System allows for configuration of data views                       
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Completeness Control - record level check (The number of records sent from the Application are compared to the number of records posted to the target.)                       
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Error Handling Control - record level check (During the load, records deemed as errors based on program logic will be written to an exception log in their entirety)                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Archived Master data must maintain data relationships to application's archived data                        
                                            </label>                                             
                                        </div>
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3">System Requirements</a> </h4> 
                            </div>                             
                            <div id="collapse3" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System supports metadata management and indexing
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
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">The System allows for configuration of data views. Archive Screen/views can be configured to allow archive users to view data in a format similar to the legacy application
                                                <br>
                                            </label>                                             
                                        </div>                                         
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                    </div>
       
					       <button type="submit" class="btn btn-primary btn pull-left" >Save</button>&nbsp;
        <button type="button" class="btn btn-primary">Submit</button>&nbsp;
                    <button type="button" class="btn btn-default" href="index.html">Cancel</button> 
       </div>
                
            </div>
            
            
      
        <%
}
}
catch(Exception e){}
%>
</form>
  </body>
</html>