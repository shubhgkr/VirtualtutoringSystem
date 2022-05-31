<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'Options.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>

		<%
			if (session.getAttribute("role") != null) {
				if (((String) session.getAttribute("role")).equals("admin")) {
		%>

		<jsp:include page="Adminoptions.jsp"></jsp:include>
		<%
			} else if (((String) session.getAttribute("role"))
						.equals("student")) {
		%>

		<jsp:include page="StudentOptions.jsp"></jsp:include>
		<%
			} else if (((String) session.getAttribute("role"))
						.equals("faculty")) {
		%>

		<jsp:include page="FacultyOptions.jsp"></jsp:include>
		<%
			} else if (((String) session.getAttribute("role"))
						.equals("assistant")) {
		%>

		<jsp:include page="Assistantoptions.jsp"></jsp:include>
		<%
			} else {
		%>

		<jsp:include page="GeneralOptions.jsp"></jsp:include>
		<%
			}
			} else {
		%>

		<jsp:include page="GeneralOptions.jsp"></jsp:include>
		<%
			}
		%>
		<br>
	</body>
</html>
