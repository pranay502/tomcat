<%@ page import="java.util.*" %>
<%@ page language="java"%>
<HTml>
	<HEAD>
		<TITLE>Display file upload form to the user</TITLE>
	</HEAD>
	<%
	//  for uploading the file we used Encrypt type of multipart/form-data and input of file type to browse and submit the file
	%>
	<BODY>
		<FORM ENCTYPE="multipart/form-data" ACTION="./upload"
			METHOD=POST>
			<br>
			<%Vector v=new Vector();

			 %>
			<center>
				<table cellspacing="9" style="color: color:#38ACEC">
					<tr>
						<center>
						<td colspan="2">
							<p align="center" style="font-size: larger">
								<font face="Georgia"><b>UPLOADING THE FILE TO CLOUD SERVER</b>
								</font>
							<center>
							<br/><br/>
						</td>
					</tr>
					<tr>
						<td>
							<div style="font-size: medium;font-style:Georgia;">
								<font face="Georgia">S</font><font face="Georgia">elect
									File:</font>
							</div>
						</td>
						<td>
							<INPUT NAME="F1" TYPE="file"
								style="font-size: 16px; font: Georgia;;width: 9cm;">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<p align="center">
								<INPUT TYPE="submit" VALUE="Upload File"
									style="font-size: 16px; font: Georgia;">
							</p>
						</td>
					</tr>
					<table>

						</FORM>
	</BODY>
</HTML>
