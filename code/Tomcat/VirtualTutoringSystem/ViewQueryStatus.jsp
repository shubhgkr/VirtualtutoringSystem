
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
<meta name="location" content="Québec, Canada">
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
               


                  <p align="center"> <fieldset>
					<legend><span class="style3">View Query Status</span></legend>
                    <br />
                    <form name="f" method="post" action="DeleteQueryAction.jsp">
 
    <table width="637" border="0" align="center" bordercolor="">
    
      <tr bgcolor="">
      <%
         String header = request.getParameter("header");
	     String role = (String) session.getAttribute("role");
	     CoreHash aCoreHash = new CoreHash();
	     try{
             int queryid = 0;
             QueryDAO querydao = new QueryDAO();
             aCoreHash = querydao.getQueryStatus((String)session.getAttribute("user"));
         	if(!aCoreHash.isEmpty())
         	{
       	%>
        <td width="18"><div align="center">
                 
        </div></td>
        <td width="233"><div align="center" class="style8">Query ID</div></td>
        <td width="372"><div align="center" class="style8">Query Date</div></td>
        <td width="372"><div align="center" class="style8">Status</div></td>
        <td width="372"><div align="center" class="style8">Solution</div></td>
      </tr>
          <%
             Enumeration enu = aCoreHash.elements();
             Query aQuery;
             while(enu.hasMoreElements())     
            {
               aQuery = (Query)enu.nextElement();
               queryid = aQuery.getQueryid();
           %>
      <tr bgcolor="">
              <td bgcolor=""><input name="ch" type="checkbox" id="checkbox2" onClick="check1()" value="<%=queryid%>"/></td> 
      <td bgcolor=""><div align="center"><span class="style7"><%=queryid%></span></div></td>
        <td bgcolor=""><div align="center" class="style7">
         
        <%=DateWrapper.parseDate(aQuery.getQueryDate1())%>
        </div></td>
        <td bgcolor=""><div align="center"><span class="style7"><%=aQuery.getStatus()%></span></div></td>
        <%
           if(!aQuery.getStatus().equals("Process"))
           {
         %>
        <td bgcolor=""><div align="center"><span class="style7"><a href="ViewSolution.jsp?id=<%=queryid%>">View</a></span></div></td>
      </tr>
      <%} 
      }
      }
      else 
      {%>
         <tr><td height="24" colspan="6"><div align="center" class="style3"><strong>No Records Found</strong></div></td>
         </tr>
      <%}
      }
      catch(Exception e){}
       
       %>
      
          
          &nbsp;
          <%if(!aCoreHash.isEmpty())
          {%>
          <tr>
        <td colspan="6"><div align="center">
         
          <input type="submit" name="button2" id="button2" value="Delete"/>
          <%}%>
        </div></td>
      </tr>
     
    </table>
  </form>
					</fieldset>
				 </td>
  </body>
  <p>&nbsp;</p>
</html>