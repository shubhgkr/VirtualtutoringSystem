
<%@ page import="com.dts.dae.model.*,com.dts.dae.dao.*,com.dts.core.util.*,java.util.*"%>
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

<table border=1 bordercolor="white" width="695" height="450" cellpadding="0" cellspacing="0"  bgcolor="CC9933">
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
    
  
   
      


 

    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
 <br><br><br><br><br><br>
    <tr><center><font size="4" color="white"></font></center></tr>
    <td valign="top" width="604"> 
                   <p align="center">&nbsp;</p>
               


                  <p align="center">  <fieldset>
					<legend class="style1">Send Query</legend>
					<br/>
					<form id="form1" method="post" action="sendQuery.do" name="f">
					  <table width="337" border="0" align="center">
                        <tr>
                          <td width="54"><span class="style1">From</span></td>
                          <td width="273"><label>
                            <input name="customerID" type="text" id="textfield" size="48" value="<%=(String)session.getAttribute("user")%>" readonly />
                          </label></td>
                        </tr>
                        <tr>
                          <td><span class="style1">To</span></td>
                          <td><label>
                            <input name="to" type="text" id="textfield2" size="48"  value="assistant" readonly/>
                          </label></td>
                        </tr>
                        <tr>
                          <td><span class="style1">Query</span></td>
                          <td><label>
                            <textarea name="description" id="textarea" cols="45" rows="5"></textarea>
                          </label></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td colspan="2"><label>
                            <div align="center">
                              <input type="submit" name="button" id="button" value="Send" />
                              </div>
                          </label></td>
                        </tr>
                      </table>
                      </form>
                      <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("f");
  
 
   frmvalidator.addValidation("description","req","Please enter Description");
  
   
    
 </script>
 
					<br/>
                    
					  </fieldset></td>
  </body>
  <p>&nbsp;</p>
</html>