<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.project.dao.FacultyMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.yourcompany.struts.form.FacultyMasterForm"%>
<html>
	<head>
		<jsp:include page="Header.jsp"></jsp:include>
		<meta http-equiv="content-type"
			content="text/html; charset=ISO-8859-1">

		<title>VirtualTutoringSystem</title>
		<meta name="DESCRIPTION"
			content="The Municipal Suppliers Directory is the most complete reference tool available to the Canadian Municipalities.">
		<meta name="KEYWORDS"
			content="Government,Purchasing,Municipal,city,heavy machinerie,water,pump,snow,Fire,environment,street,bus,batterie,cable,concrete,pipe,snowplow,waste management,police,lighting,sign,suppliers,tender,engine,generator,tools,meter,pole,security,traffic,valve,suppliers, parking">
		<meta name="subject"
			content="The Municipal Suppliers Directory is the most complete reference tool available to the Canadian Municipalities.">
		<meta name="robots" content="index, follow">
		<meta name="revisit-after" content="1 days">
		<meta name="reply-to" content="info@jaguar-media.com">
		<meta name="author" content="Jaguar Media">
		<meta name="location" content="Qu�bec, Canada">
		<meta name="Identifier-URL"
			content="http://www.municipalsuppliers.com/">
		<meta name="Publisher" content="Jaguar Media Inc">

		<link rel="stylesheet" href="images/style_municipal1.css">
		<link rel="stylesheet" href="images/style_municipal2.css">
		<link rel="stylesheet" href="images/style_municipal3.css">
		<link rel="stylesheet" href="images/style_municipal1.css">
		<script src="images/include.js">
</script>
		<script type="text/javascript" src="scripts/ts_picker.js">
</script>
		<script type="text/javascript" src="scripts/project.js">
</script>
		<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
	</head>
	<center>
		<body topmargin="0" bgcolor="#33FFCC" marginwidth="">


			<!-- ========================== HAUT ====================================== -->
			<!-- ============================ CENTRE TOP ============================================= -->

			<table border=1 bordercolor="white" width="695" height="450"
				cellpadding="0" cellspacing="0" bgcolor="#CC9933">
				<tr>
					<td bgcolor="white" height="10" width="750">

						<center><jsp:include page="FacultyOptions.jsp" /></center>
					</td>
				</tr>


				<td valign="top" width="617">
					<table
						style="border-collapse: collapse; border-right-width: 0pt; border-top-width: 0pt; border-bottom-width: 0pt;"
						id="AutoNumber2" border="1" bordercolor="#dddddd" cellpadding="0"
						cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td
									style="border-style: none none none solid; border-width: medium medium medium 1px;"
									width="100%">

									<p align="center">
									</p>
						</tbody>
					</table>


					<div align="right">
						<p>
							&nbsp;
						</p>
						<%
							if (request.getParameter("status") != null) {
						%>
						<font color="#ffff00"><b><%=request.getParameter("status")%>
								<%
									}
								%>
								<center>
									<h3>
										<font color="white">Faculty Notices Master 
									</h3>
								</center>
								<table width="357" height="260" border="0"
									style="width: 357px; height: 265px;">
									<form action="./facultyNoticesMaster.do" name="register"
										onsubmit="return validateFields()">
										<table align="center">
											<tr>
												<td>
													<b><!--<td>
															<input type="hidden" name="facultyId"
																value="<%=(Integer) session.getAttribute("facultyid")%>" />
															<%=(Integer) session.getAttribute("facultyid")%>
															--><tr>
																<td>
																	<b><font color="white">NoticeDate : 
																</td>
																<td>
																	<input type=text name="noticeDate" readonly />
																	<a
																		href="javascript:show_calendar('document.register.noticeDate',document.register.noticeDate.value);"><img
																			src="images/cal.gif" alt="a" width="18" height="18"
																			border="0" /> </a>
																</td>
															</tr>
															<tr>
																<td>
																	<b><font color="white">NoticeFile : 
																</td>
																<td>
																	<input type=file name="noticeFile" />
																</td>
															</tr>
															<tr>
																<td>
																	<b><font color="white">NoticeText : 
																</td>
																<td>
																	<input type=text name="noticeText" />
																</td>
															</tr>
															<tr>
																<td></td>
																<td>
																	<input type=submit name="Register" value="Register" />
																</td>
															</tr>
										</table>
									</form>
								</table>
								<p>
									&nbsp;
								</p>
					</div>
				</td>
		</body>
</html>







