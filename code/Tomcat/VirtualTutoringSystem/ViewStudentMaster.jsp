
<%@page import="com.dts.project.dao.StudentMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.yourcompany.struts.form.StudentMasterForm"%>
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
<meta name="location" content="Qu?bec, Canada">
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
  <% if(request.getParameter("status")!=null){%>
	<font color="#ffff00"><b><%=request.getParameter("status") %><%} %></b></font>
   
	<center><h3><font color="white">Student Details</h3></center>
  <table width="357" height="260" border="0" style="width: 357px; height: 265px;">
    
  
   <form action="DeleteStudentMaster.jsp">
 
<%
try
{
//String storepath=request.getRealPath("./images");
//StudentMasterDao dao=new StudentMasterDao();
//CoreList cl=dao.ViewStudentMaster(storepath);
CoreList cl=(CoreList)request.getAttribute("cl");
Enumeration en=cl.elements();
%>
<table align="center" border=1>
<tr><th><input type=checkbox name="TypeId"></th>
<th><font color="white">FName</th>       
<th><font color="white">MName</th>
<th><font color="white">LName</th>        
<th><font color="white">DOB</th>                    
<th><font color="white">DOR</th>                    
<th><font color="white">Address</th>                
<th><font color="white">Email</th>                  
<th><font color="white">Phone</th>                  
<th><font color="white">Image</th></tr>
<%while(en.hasMoreElements())
{
StudentMasterForm form=(StudentMasterForm)en.nextElement();
%>
<tr><td><input type="checkbox" name="TypeId" value="<%=form.getStudentid() %>"></td>
<td><b><a href="UpdateStudentMaster.jsp?Id=<%=form.getStudentid() %>"><font color="#ffff00"><u><%=form.getStudentfirstname() %></a></td>
<td><b><font color="#ffff00"><%=form.getStudentmiddlename() %></td>
<td><b><font color="#ffff00"><%=form.getStudentlastname() %></td>
<td><b><font color="#ffff00"><%=form.getDob() %></td>
<td><b><font color="#ffff00"><%=form.getDor() %></td>
<td><b><font color="#ffff00"><%=form.getAddress() %></td>
<td><b><font color="#ffff00"><%=form.getEmail() %></td>
<td><b><font color="#ffff00"><%=form.getPhone() %></td>
<td><img src="images/<%=form.getImage() %>" height=50 width=100></td></tr>
<%}}catch(Exception e)
{
e.printStackTrace();
}
 %>              
 </table>
 <center><input type=submit name="Delete" value="Delete"></center>
 </form>    
       
	
		 
	 
      
      
      
      
   
     
  </table>
  <p>&nbsp;</p>
</div>









</td>   
     
    
 
</body></html> 
 
	

