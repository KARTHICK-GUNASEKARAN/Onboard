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
  <!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="Startdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Intdate"]'); //our date input has the name "date"
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
      var date_input=$('input[name="Plandate"]'); //our date input has the name "date"
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
      var date_input=$('input[name="Execdate"]'); //our date input has the name "date"
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
      var date_input=$('input[name="Hyperdate"]'); //our date input has the name "date"
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
<script type="text/javascript">

    var link,color;

 function disable_link() { 

  document.getElementById('testlink').disabled=true;

  link = document.getElementById('testlink').href;

  document.getElementById('testlink').removeAttribute('href');
  //document.getElementById('testlink').style.color = "grey";

   } 


 function enable_link() { 

  document.getElementById('testlink').setAttribute("href",link);

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
String prid= request.getParameter("id");
int no=Integer.parseInt(prid);
System.out.println(prid);
%>

<form class="form-signin"name="loginForm" method="post" action="Appin">
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
                        <li >
                            <a href="display.jsp">Application Information</a>
                        </li>
                        <li class="active"><a href="business.jsp"><bold>Business</bold></a></li>
                            
                        
                        <li>
                            <a href="sample.jsp">Technical</a>
                        </li>
                        <li>
                            <a href="sample.jsp">Requirements</a>
                        </li>
                       
                    </ul>
                    </div>
                
                <div class="col-md-9">
                    <h1 class="page-header">Intake</h1>
                    <h3>Application Details</h3>
<div class="panel-group" id="panels1"> 
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1">                           Application Information                            </a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                               
                                    
								
                                   
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput198">
                                               Project ID&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput198" placeholder="Project Name" name="pid" value="<%= no%>"  >
                                        </div>
                                        
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput198">
                                               Application Name&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput198" placeholder="Application Name" name="appname" >
                                        </div>
                                        
                                
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Description
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Description" name="descr" >
                                        </div>
                                       
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Read Only Date</label>
            <input placeholder="yyyy/mm/dd" id="date" name="rod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
         <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Size of DB
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="DB Size" name="dbsize" >
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Location of DB
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Location of DB" name="dbloc" >
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Legacy Application SME
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Legacy Application SME" name="legappsme" >
                                        </div>
                                       
                       
                             
                                </div>                                 
                            </div>                             
                        </div>                         
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">                 Additional Details</a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse "> 
                                <div class="panel-body text-left">
                                   
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput253">Details</label>
                                            <input type="text" class="form-control" id="formInput253" placeholder="Details" name="users">
                                        </div>
                                       
                                          
                                        
                                     </div>   
                                     </div>  
                                     </div> 
                                                                           
                                                                    
                                                               
                            
                                                
                    </div>
                    
        <button type="submit" class="btn btn-primary btn pull-left" >Save</button>&nbsp;
                    <button type="button" class="btn btn-default" >Back</button> 
                    </form>
       </div>
                  
            </div>
            
         <center>
      <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="project.jsp" tabindex="-1">Previous</a>
    </li>
    
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
</center>



  </body>
</html>