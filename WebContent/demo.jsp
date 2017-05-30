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
<script>
function update()
{
var anl_org=document.loginForm.anl_org.value-0; 
var mf_serv=document.loginForm.mf_serv.value-0;
var app_serv=document.loginForm.app_serv.value-0;
var web_serv=document.loginForm.web_serv.value-0;
var ws_serv=document.loginForm.ws_serv.value-0;
var vtl_serv=document.loginForm.vtl_serv.value-0;
var db_serv=document.loginForm.db_serv.value-0;
var anl_lic_cst=document.loginForm.anl_lic_cst.value-0;
var db_lic=document.loginForm.db_lic.value-0;
var op_sys_lic=document.loginForm.op_sys_lic.value-0;
var swft_lic=document.loginForm.swft_lic.value-0;
var oth_lic=document.loginForm.oth_lic.value-0;
var anl_sprt_cst=document.loginForm.anl_sprt_cst.value-0;
var yrly_upgrd_cst=document.loginForm.yrly_upgrd_cst.value-0;
var yrly_res_cst=document.loginForm.yrly_res_cst.value-0;
document.loginForm.ttl.value=anl_org+mf_serv+app_serv+web_serv+ws_serv+vtl_serv+db_serv+anl_lic_cst+db_lic+op_sys_lic+swft_lic+oth_lic+anl_sprt_cst+yrly_upgrd_cst+yrly_res_cst; 

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
  <body style='padding-top:40px'>
  <%@page language="java"%>
<%@page import="java.sql.*"%>


<%
try {
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
{
%>
<form class="form-signin"name="loginForm" method="post" action="comp">
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
                        <li>
                            <a href="editproject.jsp?item=<%=pid%>">Project Information</a>
                        </li>
                        <li>
                            <a href="appemp.jsp">Application Prioritization</a>
                        </li>
                        <li>
                            <a href="demo.jsp">ROI Calculation</a>
                        </li>
                        
                    </ul>
                </div>
                
                 <div class="col-md-9">
                    <h1 class="page-header">App Emphasize Module</h1>
                    <h3>ROI Calculation</h3>
                    <div class="panel-group" id="panels1"> 
                                                <div class="panel panel-default">
        <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1"> Legacy Application Maintenance Inputs   </a> </h4> 
                            </div>  
                                                       
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                

                                    
                                    
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Annual Organization pay on Server maintenances</label>
                                            <input type="text" class="form-control" id="formInput526"  name="anl_org" onChange="update()">
                                        </div>
                                       
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Mainframe Servers</label>
                                            <input type="text" class="form-control" id="formInput526"  name="mf_serv" onChange="update()">
                                        </div>
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Application Servers</label>
                                            <input type="text" class="form-control" id="formInput526"  name=app_serv onChange="update()">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput316">Web Servers</label>
                                              <input type="text" class="form-control"  name="web_serv"  onChange="update()"> 
                                         </div>
                                        <div class="form-group">
                                       
                                            <label class="control-label" for="formInput526">Windows Servers</label>
                                            <input type="text" class="form-control" id="formInput526"  name="ws_serv" onChange="update()">
                                      
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Virtual Servers</label>
                                            <input type="text" class="form-control" id="formInput526"  name="vtl_serv" onChange="update()">
                                        </div>
                                                <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Database Servers</label>
                                            <input type="text" class="form-control" id="formInput526"  name="db_serv" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Annual License/Contractual Cost for each application</label>
                                            <input type="text" class="form-control" id="formInput526"  name="anl_lic_cst"  onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Database License</label>
                                            <input type="text" class="form-control" id="formInput526"  name="db_lic" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Operating Systems License</label>
                                            <input type="text" class="form-control" id="formInput526"  name="op_sys_lic" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Software Product License</label>
                                            <input type="text" class="form-control" id="formInput526"  name="swft_lic" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Other License</label>
                                            <input type="text" class="form-control" id="formInput526"  name="oth_lic" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Annual Operational Support Cost</label>
                                            <input type="text" class="form-control" id="formInput526"  name="anl_sprt_cst" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Yearly Product Upgrade Cost</label>
                                            <input type="text" class="form-control" id="formInput526"  name="yrly_upgrd_cst" onChange="update()">
                                        </div>
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Yearly resource cost</label>
                                            <input type="text" class="form-control" id="formInput526"  name="yrly_res_cst"  onChange="update()">
                                        </div>   
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Total</label>
                                            <input type="text" class="form-control" id="formInput526"  name="ttl">
                                        </div>                         
                               
                               
                                </div>                                 
                            </div>                             
                        </div> 
                                                                                            
                                   <button type="submit" class="btn btn-primary" >Save</button>
        <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
                    <a href="project.jsp" class="btn btn-default" class="btn pull-right">Cancel</a>
                                      <% } %> 
                                      
                                </div>                                 
                            </div>                             
                        </div>                       
                  
                        
                    </div> 
        
                    
                  
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


