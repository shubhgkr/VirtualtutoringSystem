<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="com.yourcompany.struts.form.CourseMasterForm"%>
<%@page import="com.dts.project.dao.CourseMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
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
<script type="text/javascript" src="scripts/ts_picker.js"> </script>
<script type="text/javascript" src="scripts/image.js"> </script>
<script type="text/javascript" src="scripts/project.js"> </script>
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
  <p>&nbsp;</p><% if(request.getParameter("status")!=null){%>
	<font color="#ffff00"><b><%=request.getParameter("status") %><%} %>
  <center><h3><font color="white">Faculty Master </h3></center>
  <table width="357" height="260" border="0" style="width: 357px; height: 265px;">
    
 
   
       
	<form action="./faculytMaster.do" name="register" onsubmit="return validateFields()"><table align="center">
			<tr><td><b><font color="white">FacultyName : </td><td><input type=text name="facultyfirstname"/> </td></tr>
			<tr><td><b><font color="white">LoginName : </td><td><input type=text name="username"/> </td></tr>
			<tr><td><b><font color="white">Password : </td><td><input type=password name="password"/> </td></tr>
			<!--<tr><td><b><font color="white">DescByFaculty : </td><td><input type=text name="descByDFaculty"/> </td></tr>
			--><tr><td><b><font color="white">CourseId:</font></b></td><td><select name="courseId">
			<%
			String storepath=request.getRealPath("/images");
			CourseMasterDao dao3=new CourseMasterDao();
			CoreList cl3=dao3.ViewCourseMaster(storepath);
			Enumeration en3=cl3.elements();
			while(en3.hasMoreElements())
			{
			CourseMasterForm form3=(CourseMasterForm)en3.nextElement();
			 %><option value="<%=form3.getCourseId() %>"><%=form3.getCourseName() %></option>
			 <%} %>
			</select></td></tr>
			<tr><td><b><font color="white">Address : </td><td><input type=text name="address"/> </td></tr>
			<tr><td><b><font color="white">Email : </td><td><input type=text name="email"/> </td></tr>
			<tr><td><b><font color="white">Phone : </td><td><input type=text name="phone"/></td></tr>			 
			<tr><td><b><font color="white">Dor : </td><td><input type=text name="dor" readonly/><a href="javascript:show_calendar('document.register.dor',document.register.dor.value);"><img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>
			<tr><td><b><font color="white">Dob : </td><td><input type=text name="dob" readonly/><a href="javascript:show_calendar('document.register.dob',document.register.dob.value);"><img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>
			<tr><td><b><font color="white">Experience : </td><td><input type=text name="experience"/> </td></tr>
			<!--<tr><td><b><font color="white">SpecialRemarks :</td><td> <input type=text name="specialRemarks"/> </td></tr>
			--><tr><td><b><font color="white">Image : </td><td><input type=file name="image"  onChange="preview(this)"/> </td><td><img alt="See Photo Here" id="previewField" src="images/5116.jpg" height="100" width="120" /></td></tr>
			<tr><td></td><td><input type=submit name="Register" value="Register"/> </td></tr></table>
		</form>
      
      
      
      
   
     
  </table>
  <p>&nbsp;</p>
</div>









</td>   
     
    
 
</body></html> 
 
	
 
 
		
	 
