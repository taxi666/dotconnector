<!--#include file="../inc/setup.asp" -->
<!--#include file="../dbconnect/admin.inc.asp" -->
<!--#include file="../inc/SysLoginCheck.inc.asp" -->

<%	
 	Sub Showspecialspaceinfo(method)
 		dim fso,d,fc,f1,size,showsize,drvpath 		
 		set fso=server.createobject("scripting.filesystemobject")
 		drvpath=server.mappath("../db/")
 		drvpath=left(drvpath,(instrrev(drvpath,"\")-1))
 		set d=fso.getfolder(drvpath) 		
 		
 		if method="All" then 		
 			size=d.size
 		elseif method="Program" then
 			set fc=d.Files
 			for each f1 in fc
 				size=size+f1.size
 			next	
 		end if	
 		
 		showsize=size & "&nbsp;Byte" 
 		if size>1024 then
 		   size=(size\1024)
 		   showsize=size & "&nbsp;KB"
 		end if
 		if size>1024 then
 		   size=(size/1024)
 		   showsize=formatnumber(size,2) & "&nbsp;MB"		
 		end if
 		if size>1024 then
 		   size=(size/1024)
 		   showsize=formatnumber(size,2) & "&nbsp;GB"	   
 		end if   
 		response.write "<font face=verdana>" & showsize & "</font>"
 	end sub 	 	 	

%>

<%
	Dim theInstalledObjects(17)
    theInstalledObjects(0) = "MSWC.AdRotator"
    theInstalledObjects(1) = "MSWC.BrowserType"
    theInstalledObjects(2) = "MSWC.NextLink"
    theInstalledObjects(3) = "MSWC.Tools"
    theInstalledObjects(4) = "MSWC.Status"
    theInstalledObjects(5) = "MSWC.Counters"
    theInstalledObjects(6) = "IISSample.ContentRotator"
    theInstalledObjects(7) = "IISSample.PageCounter"
    theInstalledObjects(8) = "MSWC.PermissionChecker"
    theInstalledObjects(9) = "Scripting.FileSystemObject"
    theInstalledObjects(10) = "adodb.connection"
    
    theInstalledObjects(11) = "SoftArtisans.FileUp"
    theInstalledObjects(12) = "SoftArtisans.FileManager"
    theInstalledObjects(13) = "JMail.SMTPMail"
    theInstalledObjects(14) = "CDONTS.NewMail"
    theInstalledObjects(15) = "Persits.MailSender"
    theInstalledObjects(16) = "LyfUpload.UploadFile"
    theInstalledObjects(17) = "Persits.Upload.1"

Function IsObjInstalled(strClassString)
	On Error Resume Next
	IsObjInstalled = False
	Err = 0
	Dim xTestObj
	Set xTestObj = Server.CreateObject(strClassString)
	If 0 = Err Then IsObjInstalled = True
	Set xTestObj = Nothing
	Err = 0
End Function
%>
<HTML>
<HEAD>
<TITLE>管理中心</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../styles/admin.css" type="text/css">
<style type="text/css">
<!--
.STYLE1 {color: #000099}
.STYLE2 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</HEAD>

<BODY bgColor=#FFFFFF topMargin=0 leftmargin="0">
<!--#include file="../inc/top.asp" -->
<table class="text" cellSpacing=0 cellPadding=0 width=95% align=center border=0>
  <TR> 
    <TD > 
      <p><b><font color="#FF0000">欢迎光临 <%=homepage_title%>--管理控制面板</font></b></p>
      <p>&nbsp;</p>
      <p>在这里，您可以控制你所有的网站设置。请在此页的左侧选择您要进行管理的链接。</p>
    </TD>
  </TR>
</TABLE>
<table class="text" cellpadding="2" cellspacing="1" border="0" width="95%" align="center">
  <tr bgcolor="#799AE1"> 
    <td colspan=2 height=25> 
      <div align="center"><font color="#FFFFFF"><b>数据库信息统计</b></font></div>
    </td>
  <tr> 
  <tr> 
    <td width="50%"   height=23 bgcolor="#DDEEFF">服务器类型：<%=Request.ServerVariables("OS")%>(IP:<%=Request.ServerVariables("LOCAL_ADDR")%>)</td>
    <td width="50%"  bgcolor="#DDEEFF">脚本解释引擎：<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></td>
  </tr>
  <tr> 
    <td width="50%"  height=23 bgcolor="#DDEEFF">站点物理路径：<%=request.ServerVariables("APPL_PHYSICAL_PATH")%></td>
    <td width="50%"  bgcolor="#DDEEFF">数据库占用空间总计： 
      <%
 			fsoflag=1
 			if fsoflag=1 then	
 				showspecialspaceinfo("All")
 			else
 				response.write "本功能已经被关闭"
 			end if
 			%>
    </td>
  </tr>
  <tr> 
    <td width="50%"  height=23 bgcolor="#DDEEFF">FSO文本读写： 
      <%If Not IsObjInstalled(theInstalledObjects(9)) Then%>
      <font color="#FF0000"><b>×</b></font> 
      <%else%>
      <b>√</b> 
      <%end if%>
    </td>
    <td width="50%"  bgcolor="#DDEEFF">数据库使用： 
      <%If Not IsObjInstalled(theInstalledObjects(10)) Then%>
      <font color="#FF0000"><b>×</b></font> 
      <%else%>
      <b>√</b> 
      <%end if%>
    </td>
  </tr>
  <tr> 
    <td width="50%"  height=23 bgcolor="#DDEEFF">Jmail组件支持： 
      <%If Not IsObjInstalled(theInstalledObjects(13)) Then%>
      <font color="#FF0000"><b>×</b></font> 
      <%else%>
      <b>√</b> 
      <%end if%>
    </td>
    <td width="50%"  bgcolor="#DDEEFF">CDONTS组件支持： 
      <%If Not IsObjInstalled(theInstalledObjects(14)) Then%>
      <font color="#FF0000"><b>×</b></font> 
      <%else%>
      <b>√</b> 
      <%end if%>
    </td>
  </tr>
</table>
<table class="text" cellpadding="2" cellspacing="1" border="0" width="95%" align="center">
  <tr bgcolor="#799AE1">
    <td colspan=2 height=25><div align="center"></div></td>
  <tr>
    <td   height=150 colspan="2" bgcolor="#DDEEFF"><div align="center"></div></td>
  </tr>
</table>
<br>

</BODY>
</HTML>