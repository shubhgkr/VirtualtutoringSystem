 <%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.project.dao.StudentMasterDao"%>
<%@page import="com.yourcompany.struts.form.StudentMasterForm"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<script type="text/javascript" src="scripts/image.js"></script>
<script type="text/javascript" src="scripts/ts_picker.js"> </script>
 <%
 String storepath=request.getRealPath("/images");
int id=Integer.parseInt(request.getParameter("Id"));
 StudentMasterDao dao=new StudentMasterDao();
 StudentMasterForm form=dao.ViewStudentMasterById(storepath,id);
 %><html><head>
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
</head><center><body topmargin="0" bgcolor="#33FFCC" marginwidth="">


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
  <p>&nbsp;</p> 
  <center><h3><b><font color="white">Update Student Details </h3></center>
  <table width="357" height="260" border="0" style="width: 357px; height: 265px;">
    
  <form action="UpdateStudentMasterAction.jsp" name="register">
		<table align="center">
		<tr><td><b><font color="white">StudentId:</td><td><input type=text name="studentId" value="<%=id %>"></td></tr>
		<tr><td><b><font color="white">StudentFirstname:</td><td><input type=text name="studentfirstname" value="<%=form.getStudentfirstname() %>"/></td></tr>
		<tr><td><b><font color="white">StudentMiddlename:</td><td><input type=text name="studentmiddlename" value="<%=form.getStudentmiddlename() %>"/></td></tr>
		<tr><td><b><font color="white">StudentLastname:</td><td><input type=text name="studentlastname" value="<%=form.getStudentlastname() %>"/></td></tr>
		<tr><td><b><font color="white">Phone:</td><td><input type=text name="phone" value="<%=form.getPhone() %>"/></td></tr> 
		<tr><td><b><font color="white">Dor:</td><td><input type=text name="dor" value="<%=form.getDor() %>"/><a href="javascript:show_calendar('document.register.dor',document.register.dor.value);"><img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>
		<tr><td><b><font color="white">Address:</td><td><input type=text name="address" value="<%=form.getAddress() %>"/> </td></tr>
		<tr><td><b><font color="white">Image:</td><td><input type=file name="image"  onChange="preview(this)"/> </td><td><img alt="See Photo Here" id="previewField" src="images/<%=form.getImage() %>" height="100" width="120" /></td></tr>
			<% System.out.println("storepath="+storepath+"/"+form.getImage());%>
		<input type="text" name="image1" value="<%=storepath+"/"+form.getImage()%>"/>	
		<tr><td><b><font color="white">Dob:</td><td><input type=text name="dob" value="<%=form.getDob() %>"/><a href="javascript:show_calendar('document.register.dob',document.register.dob.value);"><img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>
		<tr><td><b><font color="white">Email:</td><td><input type=text name="email" value="<%=form.getEmail() %>"/> </td></tr>
		<tr><td></td><td><input type=submit name="Update" value="Update"/> </td></tr></table>
		</form>
   
       
	
		 
	 
      
      
      
      
   
     
  </table>
  <p>&nbsp;</p>
</div>









</td>   
     
    
 
</body></html> 
 
	
 
		
	 

 