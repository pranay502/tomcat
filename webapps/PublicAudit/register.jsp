<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
	<script language="javascript">
	function checkEmail(email) {
if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
return (true)
}
alert("Invalid E-mail Address! Please re-enter.")
return (false);
}
	
	function validate(formObj){
	if(formObj.fname.value.length==0)
	{
	alert("First Name Should not be Empty");
	formObj.fname.focus();
	return false;
	}
	if(formObj.lname.value.length==0)
	{
	alert("Last Name Should not be Empty");
	formObj.lname.focus();
	return false;
	}
	if(formObj.fname.value==formObj.lname.value)
	{
	alert("First Name and Last Name should not be Equal");
	formObj.fname.focus();
	return false;
	}
	if(formObj.uid.value==0)
	{
	alert("User Id Should not be Empty");
	formObj.uid.focus();
	return false;
	}
	if(formObj.uid.value.length<4)
	{
	alert("User Id Should not be less than 4 Characters");
	formObj.uid.focus();
	return false;
	}
	if(formObj.pwd.value==0)
	{
	alert("Password Should not be Empty");
	formObj.pwd.focus();
	return false;
	}
	if(formObj.rpwd.value==0)
	{
	alert("Re Enter Password ");
	formObj.rpwd.focus();
	return false;
	}
	if(formObj.pwd.value!=formObj.rpwd.value)
	{
	alert("Both Passwords should be equal");
	formObj.rpwd.focus();
	return false;
	}
	if(formObj.email.value==0)
	{
	alert("Please Enter Email Id");
	formObj.email.focus();
	return false;
	}
	if(!checkEmail(formObj.email.value)){
   formObj.email.focus();
   return false;
}
	
	if(formObj.pno.value==0)
	{
	alert("Please Enter Phone Number");
	formObj.pno.focus();
	return false;
	}
	if(isNaN(formObj.pno.value))
	{
	alert("Please Enter Correct Phone Number");
	formObj.pno.focus();
	return false;
	}
	return true;
	}
	</script>
	</head>
	<body>
		<div style="font-family: Georgia;position:absolute;top: 110;left:300">
			<center><font size="5">Registration Form</font>
			<%
			if(request.getParameter("regStatus")!=null)
			{
			 %>
			 <br/> 
			 <font color="#ff0000">User Id already exists try another</font> 
			 <%} %>
			<form method="post" action="./reg" onsubmit="return validate(this);">
			<table cellspacing=14>
				<tr>
					<td>
						First Name
					</td>
					<td>
						<input type="text" name="fname"/>
					</td>
				</tr>
				<tr>
					<td>
						Last Name
					</td>
					<td>
						<input type="text" name="lname"/>
					</td>
				</tr>
				<tr>
					<td>
						User Id
					</td>
					<td>
						<input type="text" name="uid"/>
					</td>
				</tr>
				<tr>
					<td>
						Password
					</td>
					<td>
						<input type="password" name="pwd"/>
					</td>
				</tr>
				<tr>
					<td>
						Re-Enter Password
					</td>
					<td>
						<input type="password" name="rpwd"/>
					</td>
				</tr>
				<tr>
					<td>
						Email ID
					</td>
					<td>
						<input type="text" name="email"/>
					</td>
				</tr>
				<tr>
					<td>
						Phone Number
					</td>
					<td>
						<input type="text" name="pno"/>
					</td>
				</tr>
				
				<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Register" style="font-family: Georgia;font-size: 16">				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" style="font-family: Georgia;font-size: 16">
				</td>
				</tr>
			</table>
			</form>
		</div>
	</body>
</html>
