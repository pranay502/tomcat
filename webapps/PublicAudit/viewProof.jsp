<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<jsp:directive.page import="com.dao.TPADAO"/>
<html>
  <head>
    <title>My JSP 'viewProof.jsp' starting page</title>
  </head>
  <body>
<%
String user=session.getAttribute("uid").toString();
Statement statement=TPADAO.getStatement();
boolean flag=true;
ResultSet rs=statement.executeQuery("select *from modified where user like '"+user+"'");
%>
<font style="Georgia" color="red">
<%
while(rs.next())
{
flag=false;
%>
<font style=Georgia><%=rs.getString(2) %> Has Modified</font><br/>
<%} 
if(flag)
{
%>
<font color=green style=Georgia size="4">Your Files are Safe in Cloud Space</font>
<%
}

statement.executeUpdate("delete from modified");
%>
  </body>
</html>
