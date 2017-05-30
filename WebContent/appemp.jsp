<!DOCTYPE html>
<html lang="en">
<head>
<script type='text/javascript'
  src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <style>

.glyphicon { cursor: pointer; }

input,
select { width: 100%; }


#table-scroll {
  height:150px;
  overflow:auto;  
  margin-top:20px;
}

</style>
  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
  
 
  
  <script>
  

  function kk2()
  {
      document.getElementById("est_archive").disabled  = false;
      document.getElementById("est_scrn").disabled  = false;
      document.getElementById("est_db_size").disabled  = false;
      document.getElementById("est_hrs").disabled  = false;
      document.getElementById("est_cst").disabled  = false;
      document.getElementById("ttl_IA_cst").disabled  = false;
      document.getElementById("ttl_infra_cst").disabled  = false;
      document.getElementById("ttl_IA_prdct_cst").disabled  = false;
      document.getElementById("ttl").disabled  = false;

  }
  </script>
  <script>
  
  function clk()
  {
 var f=document.loginForm;
 f.method="post";
 f.action="session.jsp";
 f.submit();
  }
  </script>
<script>

function againupdate(){
var a,b,c,d,e,z;
if(document.loginForm.complexity.value=="Low")
{
document.loginForm.est_archive.value =700;
document.loginForm.est_scrn.value ="<=5";
z=1;
}
if(document.loginForm.complexity.value=="Low to Medium")
{
document.loginForm.est_archive.value =1000;
document.loginForm.est_scrn.value ="<=10";
z=2;
}
if(document.loginForm.complexity.value=="Medium")
{
document.loginForm.est_archive.value =1400;
document.loginForm.est_scrn.value ="<=20";
z=3;
}
if(document.loginForm.complexity.value=="Medium to High")
{
document.loginForm.est_archive.value =1800;
document.loginForm.est_scrn.value ="<=25";
z=4;
}
if(document.loginForm.complexity.value=="High")
{
document.loginForm.est_archive.value =2500;
document.loginForm.est_scrn.value ="<=30";
z=5;
}
document.loginForm.est_db_size.value=(z*0.1*document.loginForm.strg_est.value).toFixed(2);
}
function hrs(){
document.loginForm.est_hrs.value =(document.loginForm.no_of_app.value*document.loginForm.est_archive.value).toFixed(2);
}
function esticst(){
var a,b,c,d;
a=(100*document.loginForm.est_hrs.value);
document.loginForm.est_cst.value="$"+a.toFixed(2);
b=document.loginForm.est_db_size.value*document.loginForm.IA_lic_cst.value;
document.loginForm.ttl_IA_cst.value ="$"+b.toFixed(2);
c=10000*document.loginForm.est_db_size.value;
document.loginForm.ttl_infra_cst.value="$"+c.toFixed(2);
d=5*b*document.loginForm.IA_maint_cst.value;
document.loginForm.ttl_IA_prdct_cst.value ="$"+d.toFixed(2);
e=(a*5)+(b*5)+(c*5)+d;
document.loginForm.ttl.value="$"+e.toFixed(2);
document.loginForm.ttl_cst_fr_app.value="$"+e.toFixed(2);
}
</script>  
  
  
  
  <script type="text/javascript">
  var e;
 function updatesum() {
var x=document.loginForm.data_size.value;
 var y=document.loginForm.curnt_users.value;

var a,b,c,d,z;
if(x.charAt(0)=='<' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low";
}
if(x.charAt(0)=='<' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Low";
}
if(x.charAt(0)=='<' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='<' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='<' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='1' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low";
}
if(x.charAt(0)=='1' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='1' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='1' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='1' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='2' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='5' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='5' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='5' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='5' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='5' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='>' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='>' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='>' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='>' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='>' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="High";
}
if(document.loginForm.complexity.value=="Low")
{
document.loginForm.est_archive.value =700;
document.loginForm.est_scrn.value ="<=5";
z=1;
}
if(document.loginForm.complexity.value=="Low to Medium")
{
document.loginForm.est_archive.value =1000;
document.loginForm.est_scrn.value ="<=10";
z=2;
}
if(document.loginForm.complexity.value=="Medium")
{
document.loginForm.est_archive.value =1400;
document.loginForm.est_scrn.value ="<=20";
z=3;
}
if(document.loginForm.complexity.value=="Medium to High")
{
document.loginForm.est_archive.value =1800;
document.loginForm.est_scrn.value ="<=25";
z=4;
}
if(document.loginForm.complexity.value=="High")
{
document.loginForm.est_archive.value =2500;
document.loginForm.est_scrn.value ="<=30";
z=5;
}
document.loginForm.est_db_size.value=(z*0.1*document.loginForm.strg_est.value).toFixed(2);
document.loginForm.est_hrs.value =(document.loginForm.no_of_app.value*document.loginForm.est_archive.value).toFixed(2);
a=(100*document.loginForm.est_hrs.value);
document.loginForm.est_cst.value="$"+a.toFixed(2);
b=document.loginForm.est_db_size.value*document.loginForm.IA_lic_cst.value;
document.loginForm.ttl_IA_cst.value ="$"+b.toFixed(2);
c=10000*document.loginForm.est_db_size.value;
document.loginForm.ttl_infra_cst.value="$"+c.toFixed(2);
d=5*b*document.loginForm.IA_maint_cst.value
document.loginForm.ttl_IA_prdct_cst.value ="$"+d.toFixed(2);
e=(a*5)+(5*b)+(5*c)+d;
document.loginForm.ttl.value="$"+e.toFixed(2);
document.loginForm.ttl_cst_fr_app.value="$"+e.toFixed(2);
document.loginForm.est_archive_cst.value="$"+(e-0).toFixed(2)+(document.loginForm.add_cst_fr_contigency.value-0)+(document.loginForm.add_cst.value-0)+(document.loginForm.IA_app_sprt_cst.value-0);;
}
function add()
{
var i;
i=(e-0)+(document.loginForm.add_cst_fr_contigency.value-0)+(document.loginForm.add_cst.value-0)+(document.loginForm.IA_app_sprt_cst.value-0);
document.loginForm.est_archive_cst.value="$"+i.toFixed(2); 
}
</script>
  
  <script>
  

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
  <body style='padding-top:40px'>
  <%
String pid= request.getParameter("item");
int no=Integer.parseInt(pid);
System.out.println(pid);
%>
  <%@page language="java"%>
<%@page import="java.sql.*"%>


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
String query = "select * from appinfo";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

 
<form class="form-signin" name="loginForm" method="post" action="Onb">
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
                    <h3>Application Prioritization</h3>
                    <div class="panel-group" id="panels1"> 
                                                <div class="panel panel-default">
        <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1"> Parameters   </a> </h4> 
                            </div>  
                                                       
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                
                                
                                    
                                    
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Project Name</label>
                                            <input type="text" class="form-control" id="formInput526"  name="prj_name" value="">
                                        </div>
                                       
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">IA License cost per TB</label>
                                            <input type="text" class="form-control" id="formInput526"  name="IA_lic_cst" value="">
                                        </div>
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput526">IA Maintenance Cost Per Year</label>
                                            <input type="text" class="form-control" id="formInput526"  name="IA_maint_cst" value="">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput316">Infra Structure Cost per TB</label>
                                              <input type="text" class="form-control"  name="Infrastrct_cst" value=""> 
                                         </div>
                                        <div class="form-group">
                                       
                                            <label class="control-label" for="formInput526">Storage Estimate</label>
                                            <input type="text" class="form-control" id="formInput526"  name="strg_est" value="">
                                      
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Labor Cost Per Hour for IA Dev Team</label>
                                            <input type="text" class="form-control" id="formInput526"  name="lab_cst" value="">
                                        </div>
                                                                        </div>                                 
                            </div>                             
                        </div> 
                  
                               <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">    Application Archival Complexity Calculation   </a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                
 
  <div class="table-responsive" id="table-scroll"> 
    
    <!-- Initialization 
                * js-dynamitable => dynamitable trigger (table)
                -->
    <table class="js-dynamitable     table table-bordered" id="myTable">
      
      <!-- table heading -->
      <thead>
        
        <!-- Sortering
                        * js-sorter-asc => ascending sorter trigger
                        * js-sorter-desc => desending sorter trigger
                        -->
        <tr>
          <th>Application Name <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th>Complexity<span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th>Estimated Size of xDB <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th>Estimated Service Cost <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
        </tr>
        
        <!-- Filtering
                        * js-filter => filter trigger (input, select)
                        -->
        <tr>
          <th> <!-- input filter -->
            
            <input  class="js-filter  form-control" type="text" value="">
          </th>
          <th> <!-- select filter -->
            
            <input  class="js-filter  form-control" type="text" value="">
          </th>
          <th><input class="js-filter  form-control" type="text" value=""></th>
          <th><input class="js-filter  form-control" type="text" value=""></th>
        </tr>
      </thead>
      
      <!-- table body -->
      <tbody>
      <%
while(rs.next()){
%>
        <tr>
        
          <td class="edit_row" style="cursor:pointer"><%=rs.getString(3) %></td>
          <td class="row_s"><%=rs.getString(9) %></td>
          <td class="row_t"><%=rs.getString(10) %></td>
          <td class="row_d"><%=rs.getString(11) %></td>
         
        </tr>
      <%
}
%>      
      </tbody>
    </table>
    <%

}
catch(Exception e){
e.printStackTrace();
}
%>
  </div>
  <br />
                                
                                
                                
<script>
// JavaScript script from: http://coursesweb.net/javascript/

// gets all the .edit_row cells, registers click to each one
var edit_row = document.querySelectorAll('#myTable .edit_row');
for(var i=0; i<edit_row.length; i++) {
  edit_row[i].addEventListener('click', function(e){
    // get parent row, add data from its cells in form fields
    var tr_parent = this.parentNode;
    document.getElementById('proj_name').value = tr_parent.querySelector('.edit_row').innerHTML;
    document.getElementById('complexity').value = tr_parent.querySelector('.row_s').innerHTML;
    document.getElementById('est_db_size').value = tr_parent.querySelector('.row_t').innerHTML;
    document.getElementById('est_cst').value = tr_parent.querySelector('.row_d').innerHTML;
    }, false);
}

</script>
                                
                                
                                
                                 
                                  
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput664">Application Name</label>
                                            <input type="text" class="form-control" id="proj_name"  name="proj_name" value="" >
                                        </div>                                         
                                                                      
                                              <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Data Size</label>                                             
                                            <select id="formInput26" class="form-control" name="data_size" onChange="updatesum()" > 
                                            <option></option>
                                                <option><100 GB</option>                                                 
                                                <option>100 to 250 GB</option>
                                                <option>250 to 500 GB</option>
                                                <option>500 to 1 TB</option>
                                                <option>>1 TB</option>                                                 
                                            </select>
                                        </div>                    
                                       
                                        
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664"><b>Data Source</b></label> 
                                            </div>
                                            <div class="checkbox"> 
                                            <label class="Data Source"> 
                                                <input type="checkbox" name="data_source" value="regulardb" >Regular DB</label>
                                                <br />
                                            <label class="Data Source">     <input type="checkbox" name="data_source" value="erp" >ERP</label>
                                            <br />
                                                <label class="Data Source"> <input type="checkbox" name="data_source" value="product" >Product based 
                                                </label>                                          
                                                <br />   
                                        </div>
                                        
                                      
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Current users</label>                                             
                                            <select id="formInput26" class="form-control" name="curnt_users" onChange="updatesum()"> 
                                            <option></option>
                                                <option><10</option>                                                 
                                                <option><25</option>
                                                <option><50</option>
                                                <option><100</option> 
                                                <option>100 to 500</option>                                                 
                                            </select>
                                        </div>         
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Complexity</label>                                             
                                            <select id="complexity" class="form-control" name="complexity" onChange="againupdate()">
                                                <option></option>
                                                <option>Low</option>                                                 
                                                <option>Low to Medium</option>
                                                <option>Medium</option>
                                                <option>Medium to High</option> 
                                                <option>High</option>                                                 
                                            </select>
                                        </div>                    
                                 
                                        
                                    <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Archival Service Effort</label>                                             
                                            <input type="text" class="form-control" id="est_archive"  name="est_archive" onChange="hrs()" value="" disabled> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Screen</label>                                             
                                            <input type="text" class="form-control" id="est_scrn"  name="est_scrn" onChange="againupdate()" value="" disabled> 
                                        </div>
                                     <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Size of xDB</label>                                             
                                            <input type="text" class="form-control" id="est_db_size"  name="est_db_size" onChange="againupdate()" value="" disabled> 
                                        </div>
                                      <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Hours</label>                                             
                                            <input type="text" class="form-control" id="est_hrs"  name="est_hrs" onChange="esticst()"  value="" disabled>  
                                        </div>
                                                                                <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Total Service Cost</label>                                             
                                            <input type="text" class="form-control" id="est_cst"  name="est_cst" onChange="ttl()" value="" disabled> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total IA License Cost</label>                                             
                                            <input type="text" class="form-control" id="ttl_IA_cst"  name="ttl_IA_cst" onChange="ttl()" value="" disabled> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total Infrastructure Storage Cost</label>                                             
                                            <input type="text" class="form-control" id="ttl_infra_cst"  name="ttl_infra_cst" onChange="ttl()" value="" disabled> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total Info Archive Product Maintenance Cost for 5 years</label>                                             
                                            <input type="text" class="form-control" id="ttl_IA_prdct_cst"  name="ttl_IA_prdct_cst" onChange="ttl()"  value="" disabled> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total</label>                                             
                                            <input type="text" class="form-control" id="ttl"  name="ttl"  value="" disabled> 
                                        </div>                                                     
                                </div>                                 
                            </div>                             
                        </div>
                   
                        
                               <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3">    Archival Cost Estimate    </a> </h4> 
                            </div>                             
                            <div id="collapse3" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                 
                                  
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput664">Total Cost for all applications in the project</label>
                                            <input type="text" class="form-control" id="formInput664"  name="ttl_cst_fr_app" onChange="add()" value="" >
                                        </div>                                         
                                          <div class="form-group">
                                            <label class="control-label" for="formInput664">Additional Cost for Contingency</label>
                                             <div class="input-group">
                                               <input type="text" class="form-control" id="formInput664" name="add_cst_fr_contigency" onChange="add()" value=""> 
                                                <div class="input-group-addon">
                                          <a href="#" data-toggle="tooltip" title="Infra Setup/unplanned labor/travel Etc."> <span class="glyphicon glyphicon-info-sign" ></span></a> 
                                               </div>
                                               </div>                                     
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Additional Cost</label>     
                                             <div class="input-group">                                        
                                            <input type="text" class="form-control" id="formInput664" name="add_cst" onChange="add()" value="">
                                            <div class="input-group-addon">
                                          <a href="#" data-toggle="tooltip" title="if there is a program team"> <span class="glyphicon glyphicon-info-sign" ></span></a> 
                                               </div>
                                               </div>    
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">IA Application Support Cost Labor</label>                                             
                                            <input type="text" class="form-control" id="formInput664" name="IA_app_sprt_cst" onChange="add()" value=""> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Archival Cost for CAR Projection</label>                                             
                                            <input type="text" class="form-control" id="formInput664" name="est_archive_cst" value=""> 
                                        </div>
                        
                        </div>
                        </div>
                        </div>
                        

                                                                                            
                                   <button type="submit" class="btn btn-primary" >Save</button>
       
      <button type="button" class="btn btn-primary" onclick="kk2()" value="Enable">Update</button>
                    <a href="root1.jsp" class="btn btn-default" class="btn pull-right">Cancel</a>
                                  
                                      
                                </div>                                 
                            </div>                             
                        </div>                       
                  
                        
                    </div> 
        
                    
                  
       </div>
                
            </div>
           
           

 </form>
 <center>
      <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="project.jsp" tabindex="-1">Previous</a>
    </li>
    
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
</center>
 <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 

<!-- dynamitable --> 
<script src="js/dynamitable.jquery.min.js"></script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>


