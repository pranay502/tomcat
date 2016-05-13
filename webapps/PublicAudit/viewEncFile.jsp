<%@ page language="java" import="java.io.*,java.sql.*"
	pageEncoding="ISO-8859-1"%>
<jsp:directive.page import="com.dao.TPADAO" />

<html>
	<head>
		<title>My JSP 'viewEncFile.jsp' starting page</title>
	</head>
	<body>
		<%
			String user = session.getAttribute("uid").toString();
			Statement stmt = TPADAO.getStatement();
			String src[] = new String[10];
			int a = 0;
			ResultSet rs = stmt
					.executeQuery("select filename From userfile where user like '"
					+ user + "'");
			while (rs.next()) {
				src[a] = rs.getString(1);
				a++;
			}
			String path = request.getContextPath();
			File folder = new File("./webapps" + path + "/CloudFiles");
			if (folder.exists()) {
				File[] listOfFiles = folder.listFiles();
				for (int i = 0; i < listOfFiles.length; i++) {
					for (int j = 0; j < src.length; j++) {
					if(src[j]!=null)
					if (src[j].equalsIgnoreCase(listOfFiles[i].getName())) {
						%>
		<strong><a href="viewEncFile.jsp?fileName=<%=src[j]%>"
			style="font-family:Georgia;text-decoration: none;color:black "><%=src[j]%>
		</a> <br /> </strong>
		<%
				}}
				}
			}
			if (request.getParameter("fileName") != null) {
				String fileName = request.getParameter("fileName").trim();
				File f = new File("./webapps" + path + "/CloudFiles/"
				+ fileName);
				FileInputStream fis = new FileInputStream(f);
				BufferedInputStream bis = new BufferedInputStream(fis);
		%>
		<br />
		<br />
		<%
					while (bis.read() > 0) {
					out.println((char) bis.read());
				}
				
			}
		%>
	</body>
</html>
