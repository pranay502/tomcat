<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Third Party Auditor for User</title>
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
		<div
			style="font-family: Georgia;font-size: 29;font-variant: small-caps;"
			align="center">
			Data Storage Security in Cloud Computing
		</div>
		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;position:absolute;left: 100;color: black;top:70"
			href="userHome.jsp" target="userBody">Home</a>
		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;color: black;position:absolute;left: 190;top:70"
			href="uploadFile.jsp" target="userBody">Upload File</a>

		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;color: black;position:absolute;left: 320;top:70"
			href="viewEncFile.jsp" target="userBody">View Encrypted File</a>

		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;color: black;position:absolute;left: 520;top:70"
			href="viewProof.jsp" target="userBody">View Proof</a>
			
		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;color: black;position:absolute;left: 640;top:70"
			href="downLoadFile.jsp" target="userBody">DownLoad File</a>	

		<a
			style="font-family: Georgia;font-size: 20;text-decoration: none;position:absolute;left: 800;color: black;top:70"
			href="logout.jsp" target="_top">Log Out</a>
		<iframe src="userHome.jsp" width=700 height=340
			style="position:absolute;left:130;top:130" name="userBody"
			frameborder="0"></iframe>

		<div style="position: absolute;top:510;left:450">
			Copy Rights Reserved &copy
		</div>
	</body>
</html>
