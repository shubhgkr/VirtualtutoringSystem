<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.project.dao.FacultyMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.yourcompany.struts.form.FacultyMasterForm"%>
<%@page import="com.dts.project.dao.CourseMasterDao"%>
<%@page import="com.yourcompany.struts.form.CourseMasterForm"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html><head>
<jsp:include page="Header.jsp"></jsp:include>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">

<title>VirtualTutoringSystem</title>
<meta name="DESCRIPTION" content="The Municipal Suppliers Directory is the most complete reference tool available to the Canadian Municipalities.">
<meta name="KEYWORDS" content="Government,Purchasing,Municipal,city,heavy machinerie,water,pump,snow,Fire,environment,street,bus,batterie,cable,concrete,pipe,snowplow,waste management,police,lighting,sign,suppliers,tender,engine,generator,tools,meter,pole,security,traffic,valve,suppliers, parking">
<meta name="subject" content="The Municipal Suppliers Directory is the most complete reference tool available to the Canadian Municipalities.">
<meta name="robots" content="index, follow">
<meta name="revisit-after" content="1 days">
<meta name="reply-to" content="info@jaguar-media.com">
<meta name="author" content="Jaguar Media">
<meta name="location" content="Qu�bec, Canada">
<meta name="Identifier-URL" content="http://www.municipalsuppliers.com/">
<meta name="Publisher" content="Jaguar Media Inc">

<link rel="stylesheet" href="images/style_municipal1.css">
<link rel="stylesheet" href="images/style_municipal2.css">
<link rel="stylesheet" href="images/style_municipal3.css">
<link rel="stylesheet" href="images/style_municipal1.css">
<script src="images/include.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<center><body topmargin="0" bgcolor="#33FFCC" marginwidth="">
<table border=1><tr><td colspan="2" bordercolor="white"></td></tr></table>  

<!-- ========================== HAUT ====================================== --><!-- ============================ CENTRE TOP ============================================= -->

<table border=1 bordercolor="white" width="695" height="450" cellpadding="0" cellspacing="0"  bgcolor="#CC9933">
  <tr><td bgcolor="white" height="10" width="750">
        	 
        	<center><jsp:include page="Adminoptions.jsp"/></center> </td></tr>
    
    
    <td valign="top" width="617">
<table style="border-collapse: collapse; border-right-width: 0pt; border-top-width: 0pt; border-bottom-width: 0pt;" id="AutoNumber2" border="1" bordercolor="#dddddd" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td style="border-style: none none none solid; border-width: medium medium medium 1px;" width="100%">

 	<p align="center">
 	</p>
      

  
</tbody></table>


<div align="right">
  <p>&nbsp;</p><% if(request.getParameter("status")!=null){%>
	<font color="#ffff00"><b><%=request.getParameter("status") %><%} %>
  <center><h3><font color="white">Change Password form </h3></center>
  <table width="357" height="260" border="0" style="width: 357px; height: 265px;">
    
  
   
       
	
		
		<form id="form3" name="newedesignation" method="post"
			action="./studentChangePassword.do">
			<table border="0" align="center">
				<tr>
					<td>
						<font color="white">Login Name</font>
					</td>
					<td>
						<input type="text" name="username"  value="<%=(String)session.getAttribute("user") %>" readonly/>
					</td>
				</tr>
				<tr>
					<td>
						<font color="white">Old Password</font>
					</td>
					<td>
						<input type="password" name="oldpassword" />
					</td>
				</tr>
				<tr>
					<td>
						<font color="white">New Password</font>
					</td>
					<td>
						<input type="password" name="newpassword" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="center">
							<input type="submit" name="Submit" value="Change" />

						</div>
					</td>
				</tr>
			</table>
		</form>
      
      
   
     
  </table>
  <p>&nbsp;</p>
</div>









</td>   
     
    
 
</body></html> 
 
	

 
 
	 	
	 
