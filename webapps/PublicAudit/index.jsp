<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Third Party Auditor</title>
		<Style>
<!--
a{text-decoration:none}
a:hover  { text-decoration: underline}
//-->
</style>
	</head>
	<body>
		<div
			style="font-family: Georgia;font-size: 29;font-variant: small-caps;"
			align="center">
			Public Auditing for Data Storage in Cloud Computing
		</div>
		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;position:absolute;left: 240;color: black;top:70"
			href="index.jsp" >Home</a>
		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;color: black;position:absolute;left: 440;top:70"
			href="regMain.jsp" >Registration</a>
		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;position:absolute;left: 700;color: black;top:70"
			href="logMain.jsp" >Login</a>
		<jsp:include page="home.jsp"></jsp:include>
		
		<div style="position: absolute;top:510;left:450">
			Copy Rights Reserved &copy
		</div>
	</body>
</html>
