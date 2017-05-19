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

<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='grid.jsp';
    f.submit();
}
</script>
  </head><!--from  w  w w  . ja  va 2 s.co  m-->
  <body style='margin:30px'>
  <%@page language="java"%>
<%@page import="java.sql.*"%>



<form method="post" name="form" action="Appin">
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
                    <br>
                        <li >
                            <a href="display.jsp">Admin </a>
                        </li>
                        
                    </ul>
                </div>
                
                <div class="col-md-9">
                    <h1 class="page-header">Applications</h1>
                    
                    <div class="panel-group" id="panels1"> 
                                                <div class="panel panel-default">
     

<table class="table table-striped">
<tr><th></th><th>Application Name</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "onboard";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from applicat";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr>
<td name="name" onClick="editRecord(<%=rs.getString(1)%>);" ><a><%=rs.getString(1)%></a></td>
<td><%=rs.getString(2)%></td>

</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>                   
                        </div>                       
                  
                        
                    </div> 
       <div>
       <label>Application Name:</label>
                    <input type="text" class="form-control" name="appname">
                    <br>
                    <button type="submit" class="btn btn-primary" onClick="reload">Add</button>
                    </div>
       </div>
                
            </div>
            
      
        
</form>
  </body>
</html>