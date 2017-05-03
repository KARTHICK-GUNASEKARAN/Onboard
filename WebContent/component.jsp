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
<form class="form-signin"name="loginForm" method="post" action="comp">
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
                    <h3>Component</h3>
<div class="panel-group" id="panels1"> 
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1">                            Application Data Information                            </a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                               
                                    <label> 
                                        Datatype Characteristics       
</label>
								 <%if(rs.next()){ %>
                                    <form role="form">
                                        <div class="form-group">
                                            <label>
                                                <label> 
                                                    <input class="control-label" type="checkbox" <%=rs.getString("datatype_char")%>>        Structured        
                                                </label>
                                                <label> 
                                                    <input class="control-label" type="checkbox" value="">       Unstructured       
                                                </label>                                                 
                                                <input class="control-label" type="checkbox" value="">        Hybrid       
                                            </label>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput198">If
                                                the Data Type is Unstructured or Hybrid, process for extracting unstructured
                                                data?&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput198" placeholder="Placeholder text" name="extracting_process" value="<%=rs.getString("extracting_process")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput95">Does
                                                Unstructured or Hybrid business objects needs to be archived&nbsp;&nbsp;
</label>                                             
                                            <select id="formInput95" class="form-control" name="archival_flg"> 
                                            <option><%=rs.getString("archival_flg")%></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>                                                   
                                            </select>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput95">Any
                                                Special/ Multi Language characters or Non- English Language contained in the
                                                application
</label>                                             
                                            <select id="formInput95" class="form-control" name="special_lang_flg"> 
                                               <option><%=rs.getString("special_lang_flg")%></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>                                                                        
                                            </select>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Database
                                                size of the application
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Placeholder text" name="db_size" value="<%=rs.getString("db_size")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Estimated
                                                No of Table in the application
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Placeholder text" name="estimated_table_count" value="<%=rs.getString("estimated_table_count")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">Estimated
                                                No of Records(volume) in the application
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Placeholder text" name="estimated_rec_count" value="<%=rs.getString("estimated_rec_count")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">XML
                                                counts for the database
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="Placeholder text" name="xml_count_db" value="<%=rs.getString("xml_count_db")%>">
                                        </div>                                         
                                   
                                </div>                                 
                            </div>                             
                        </div>                         
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">                               Infrastructure and Environment Information</a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse "> 
                                <div class="panel-body text-left">
                                   
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput253">Location of Data</label>
                                            <input type="text" class="form-control" id="formInput253" placeholder="Placeholder text" name="loc_data" value="<%=rs.getString("loc_data")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput253">Site
                                                Location of Application’s assets
</label>
                                            <input type="text" class="form-control" id="formInput253" placeholder="Placeholder text" name="site_loc_data" value="<%=rs.getString("site_loc_data")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput253">Contact
                                                Name or Entity for Infrastructure Engagement
</label>
                                            <input type="text" class="form-control" id="formInput253" placeholder="Placeholder text" name="contact_name" value="<%=rs.getString("contact_name")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput694">Is
                                                this Application a Hosted Service
</label>                                             
                                            <select id="formInput694" class="form-control" name ="hosted_service_flg"> 
                                            <option><%=rs.getString("hosted_service_flg")%></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>                                               
                                            </select>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput679">Is the Application external customer facing or have a component of being
                                                external customer facing
</label>
                                            <input type="text" class="form-control" id="formInput679" placeholder="Name of the Legal Retention &amp; e-Discovery SME " name="external_facing" value="<%=rs.getString("external_facing")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput679">If external facing, web apps/website URLs</label>
                                            <input type="text" class="form-control" id="formInput679" placeholder="Name of the Legal Retention &amp; e-Discovery SME " name="web_url" value="<%=rs.getString("web_url")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput679">Does this application utilize any Citrix environments for access</label>
                                            <input type="text" class="form-control" id="formInput679" placeholder="Name of the Legal Retention &amp; e-Discovery SME " name="citrix_access_flg" value="<%=rs.getString("citrix_access_flg")%>">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Citrix access required for application access</label>                                             
                                            <label class="control-label" for="formInput664">
</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label"> 
                                                <input class="control-label" type="checkbox" value="">&nbsp;Yes &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            </label>
                                            <label class="control-label"> 
                                                <input class="control-label" type="checkbox" value="">&nbsp;No &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            </label>                                             
                                            <label class="control-label" for="formInput664">
</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Does data in the Application integrate to or from other systems?</label>                                             
                                            <label class="control-label" for="formInput664">
</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label"> 
                                                <input class="control-label" type="checkbox" value="">&nbsp;Yes &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            </label>
                                            <label class="control-label"> 
                                                <input class="control-label" type="checkbox" value="">&nbsp;No &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            </label>                                             
                                            <label class="control-label" for="formInput664">
</label>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput679">Ready Date for Complete Server decommission and Application Retirement</label>
                                            <input type="date" class="form-control" id="formInput679" placeholder="Name of the Legal Retention &amp; e-Discovery SME " name="ready_date" value="<%=rs.getString("ready_date")%>">
                                        </div>
                                        <div class="form-group"> </div>                                         
                                    </form>  
                                      <% } %>                                    
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