<%@page import="com.dts.project.dao.CourseLecturerMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.yourcompany.struts.form.CourseLecturerMasterForm"%>
<html><head>
<jsp:include page="Header.jsp"></jsp:include>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">

<title>VirtualTutorialSystem</title>
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
        	 
        	<center><jsp:include page="StudentOptions.jsp"/></center> </td></tr>
    
    
    <td valign="top" width="617">
<table style="border-collapse: collapse; border-right-width: 0pt; border-top-width: 0pt; border-bottom-width: 0pt;" id="AutoNumber2" border="1" bordercolor="#dddddd" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td style="border-style: none none none solid; border-width: medium medium medium 1px;" width="100%">

 	<p align="center">
 	</p>
      

  
</tbody></table>


<div align="right">
  <p>&nbsp;</p>
  
  <table width="357" height="260" border="0" style="width: 357px; height: 265px;">
    <tr><td>
    <%
String storepath=request.getRealPath("/images");

CourseLecturerMasterDao adao=new CourseLecturerMasterDao();
int facultyid=Integer.parseInt(request.getParameter("facultyid"));
int courseid=Integer.parseInt(request.getParameter("courseid"));

CoreList acorelist=adao.ViewCourseLecturerMaster(storepath,facultyid,courseid);
Enumeration aenumeration=acorelist.elements();
%>
<table width="500">
<tr bgcolor="white"><td>Faculty Name</td>
<td>Course Name</td>
<td>Lecture id</td>
<td>Audio</td>
<td>Video</td>
<td>PowerPoint</td>
<td>Document File</td>
<td>Assignment File</td>
<td>Lecture Duration Time</td>
<td>View Exam Schedule</td>
<td>Upload Assignment</td></tr>
<%while(aenumeration.hasMoreElements())
{
CourseLecturerMasterForm aform=(CourseLecturerMasterForm)aenumeration.nextElement();
  %>
  <tr bgcolor="skyblue"><td><%=aform.getFname() %></td>
  <td><%=aform.getCname() %></td>
  <td><%=aform.getLecturerId() %></td>
  <td><a href="images/<%=aform.getLecturerAudio() %>"><%=aform.getLecturerAudio() %></a></td>
  <td><a href="images/<%=aform.getLecturerVideo() %>"><%=aform.getLecturerVideo() %></a></td>
  <td><a href="images/<%=aform.getLecturerPowerPoint() %>"><%=aform.getLecturerPowerPoint() %></a></td>
  <td><a href="images/<%=aform.getLectureDocumentfile() %>"><%=aform.getLectureDocumentfile() %></a></td>
  <td><a href="images/<%=aform.getLectureassignmentFile() %>"><%=aform.getLectureassignmentFile() %></a></td>
  <td><%=aform.getLectureDurationTime() %></td>
  <td><a href="ViewExamSchdule.jsp?courseid=<%=aform.getCourseId() %>&facultyid=<%=aform.getFacultyId() %>&lectureid=<%=aform.getLecturerId() %>">Exam Schdule</a></td>
  <td><a href="StudentAssignSubmissionMaster.jsp?courseid=<%=aform.getCourseId() %>&lectureid=<%=aform.getLecturerId() %>">Upload Assignment</a></td>
  </tr>
  <%} %></table>
    
    
    </td></tr>
  </body>
 

      
      
      
      
   
   
   
  <p>&nbsp;</p>










 
     
    
 
 </html>