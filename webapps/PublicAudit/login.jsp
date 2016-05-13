<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>My JSP 'login.jsp' starting page</title>
		<Style>
<!--
a{text-decoration:none}
a:hover  { text-decoration: underline}
//-->
</style>
<script language="javascript">
window.history.go(1);
</script>

	</head>
	<body>
		<br />
		<br />
		<br />
		<br />
		<br />
		<div align="center">
			<font size="4"><strong><font face="Georgia">Login
						Form</font>
			</strong>
			</font>
		</div>
		<br />
		<%
		if (request.getParameter("loginStatus") != null) {
		%>
		<div
			style="font-family: Georgia;color: red;position: absolute;left: 370;top:180">
			User Id and Password are Incorrect
		</div>
		<%
		}
		%>
		<%
		if (request.getParameter("regStatus") != null) {
		%>
		<div
			style="font-family: Georgia;color: green;position: absolute;left: 370;top:180">
			Registration Success You can Login Now
		</div>
		<%
		}
		%>
		<form method="post" action="./login">
			<table cellspacing=9 style="position: absolute;top: 200;left: 200">
				<tr>
					<td>
						<font face="Georgia"> User Id</font>
					</td>
					<td>
						<input type="text" name="uid" style="font-family: Georgia">
					</td>
				</tr>
				<tr>
					<td>
						<font face="Georgia"> Password</font>
					</td>
					<td>
						<input type="password" name="pwd" style="font-family: Georgia">
					</td>
				</tr>
				<tr>
					<td colspan=2 align="center">
						<input type="submit" style="font-family: Georgia;font-size: 16"
							value="Login">
					</td>
				</tr>
				<tr>
					<td colspan=2 align="center">
						<font face="Georgia">New User Register <a
							href="regMain.jsp"> Click Here</a> to Register.</font>
					</td>
				</tr>
			</table>
	</body>
</html>
