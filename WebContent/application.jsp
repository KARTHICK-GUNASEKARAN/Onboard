<%@ page import="java.sql.*" %>
<html>
<head>
<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='display.jsp?id='+id;
    f.submit();
}
</script>
</head>
<body>

<br><br>
<form method="post" name="form">
<table border="1">
<tr><th>Name</th><th>Address</th><th>Contact No</th><th>Email</th></tr>
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
<td><input type="radio" name="name" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
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
</form>
</body>
</html>

