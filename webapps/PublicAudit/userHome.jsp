<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<jsp:directive.page import="com.dao.TPADAO"/>
<html>
  <head>
    <title>My JSP 'userHome.jsp' starting page</title>
  </head>
  <body>
  <div style="position: absolute;top: 40;left: 250">
<% 
String uid=session.getAttribute("uid").toString(); 
Statement statement=TPADAO.getStatement(); 
ResultSet rs=statement.executeQuery("select fname,lname from user where uid like '"+uid+"'"); 
if(rs.next()) 
{ 
%> 
<font face="Georgia" style="font: small-caps"> Welcome <%=rs.getString(1)+"  "+rs.getString(2) %></font> 
 <%
 }
  %>
  <br/>
<img src="img/lock.png" width="200" height="200" align="middle" />  
<%
String user=session.getAttribute("uid").toString();
Statement statement1=TPADAO.getStatement();
boolean flag=true;
ResultSet rs1=statement1.executeQuery("select *from modified where user like '"+user+"'");
%>
<font style="Georgia" color="red">
<%
while(rs1.next())
{
flag=false;
%>
<font style=Georgia ><%=rs1.getString(2) %> Has Modified</font><br/>
<%} %>
</div>
  </body>
</html>
