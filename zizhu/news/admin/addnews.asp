<!--made by xiasp & ����Ұ���� http://www.xsyzx.net/-->
<!--#include file="../../inc/setup.asp" -->
<!--#include file="../../dbconnect/news.admin.inc.asp" -->
<!--#include file="../../inc/SysLoginCheck.inc.asp" -->

<%
	dim rs,sql
	set rs=server.createobject("adodb.recordset")
	mimageNum = 0
	action = "addnew"
	newsId = Trim(Request.QueryString("newsId"))
	
	if isNumeric(newsId)=false or newsId="" then
		newsId=0
		action = "addnew"
	end if
	

set rsp=Server.CreateObject("ADODB.RecordSet")
sqlp = "select * FROM news where id="&newsId
rsp.Open sqlp,conn,1,3
	if rsp.RecordCount=1 then
		action = "modify"   
		mcataid=rsp("cataid")
		mtitle=rsp("title")
		mcontent=rsp("content")
		mfrom=rsp("from")
		mtu1=rsp("tu1")
		mtu2=rsp("tu2")
		mspecial=rsp("special")
		mpermission=rsp("permission")
		if mspecial ="True" then 
			mspecial1 = "checked"
		else
			mspecial1 = ""
		end if
		
	else
		action = "addnew"
		mspecial1 = ""
		newsId = 0
	end if
rsp.Close
set rsp=nothing

sub produceForm()

	mcataid=trim(request.form("cataid"))
	mtitle=trim(request.form("title"))
	mfrom=trim(request.form("from"))
	mtu1=trim(request.form("tu1"))
	mtu2=trim(request.form("tu2"))
	mspecial=trim(request.form("special"))
	mpermission=trim(request.form("permission"))
	mContent = trim(Request.form("cnWords")) 
	mContent = Replace(mContent,"<script","<sscript") 
	mContent = Replace(mContent,"/script>","/scripts>")
	mContent = Replace(mContent,"/script >","/scripts>")
		   
	mimageNum = Request.form("imageNum")
	firstImageName = trim(Request.form("editFirstImageName"))
		   
	sqlq = "select * from news where id="&Trim(Request.Form("newsId"))
	set rsq = Server.CreateObject("ADODB.RecordSet")
	rsq.Open sqlq,conn,1,3
        if Trim(Request.Form("action"))="modify" then
			if rsq.RecordCount = 1 then
			//�޸�
				rsq("cataid") = mcataid
				rsq("title") = mtitle
				rsq("content") = mcontent
				rsq("from") = mfrom
				rsq("tu1") = mtu1
				rsq("tu2") = mtu2
			
				if mimageNum<>"" then rsq("imageNum") = mimageNum 
				if firstImageName<>"" then rsq("firstImageName") = firstImageName	
				if mspecial<>"" then rsq("special") = mspecial
				if mpermission<>"" then rsq("permission") = mpermission
				
				rsq("addtime") = Now()
				rsq("date") = Now()
				
				rsq.Update
             end if 
			 Response.Write("<Script Language='Javascript'>")
			 Response.Write("alert('�޸ĳɹ�!');")
			 Response.Write("</Script>")
             Response.Write "<script language=javascript>"&_
                            "history.go(-2);"&_
                            "</script>"                                     
		else
            rsq.AddNew
			rsq("cataid") = mcataid
			rsq("title") = mtitle
			rsq("content") = mcontent
			rsq("from") = mfrom
			rsq("tu1") = mtu1
			rsq("tu2") = mtu2
			
			if mimageNum<>"" then rsq("imageNum") = mimageNum 
			if firstImageName<>"" then rsq("firstImageName") = firstImageName
			
			rsq("addtime") = Now()
			rsq("date") = Now()
			rsq("hits") = 1
			if mspecial<>"" then rsq("special") = mspecial
			if mpermission<>"" then rsq("permission") = mpermission
			
			rsq.update
			rsq("sortid")=rsq("id")
			rsq.update			
			
			Response.Write("<Script Language='Javascript'>")
			Response.Write("alert('����ɹ�!');")
			Response.Write("</Script>")
			
		end if
	rsq.Close
	set rsq = nothing 
end sub

if Trim(Request.Form("action"))<>"" then
   call produceForm()
end if

%>
<html>
<head>
<title>���Ӳ�Ʒ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../../css/style.css" type="text/css">
<script language=javascript>
<!--

function CContext()
{}
var g_cContext = new CContext();
g_cContext.StaticContentServer = '';


function saveIt()
{
     document.pub_topic.cnWords.value = document.frames.cnEditBox.getHTML(true);     
     document.pub_topic.imageNum.value = document.frames.cnEditBox.document.all("editImageNum").value;
     document.pub_topic.editFirstImageName.value = document.frames.cnEditBox.document.all("editFirstImageName").value;
	
	if (document.pub_topic.cataid.value=="")
	{ 
	 	alert('��ѡ���Ʒ�����'); 
		document.pub_topic.cataid.focus();
		return false; 
	}
	
	if (document.pub_topic.title.value=="")
	{ 
	 	alert('�������Ʒ�����ƣ�'); 
		document.pub_topic.title.focus();
		return false; 
	}
     document.pub_topic.submit();
}
//-->
</script>
<script language="Javascript">
function openScript(url, width, height){
	var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
function openem()
{ 
openScript('Up1.asp',460,220); 
}
function openem2()
{ 
openScript('Up2.asp',460,220); 
}

</script>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<!--#include file="../../inc/top.asp" -->
<br>
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
        
    <td>&nbsp;&nbsp;&nbsp;<%=homepage_title%> - <font color="#FF0000">����/�޸Ĳ�Ʒ 
      </font>
     <form name="pub_topic" method="post" action="addnews.asp?action=addnew"  ID="pub_topic">
        <table width="98%" border="0" align="center" cellspacing="2" cellpadding="2">
          <tr> 
            <td width="13%"> 
              <div align="right">��Ʒ���</div>            </td>
            <td width="87%"> 
              <select name="cataid" size="1" style="background-color:#ECF3FF;">
                <option value=''>--��ѡ��--</option>
                <%
		set rs=server.CreateObject("adodb.recordset")
		sql="Select * from newscata order by rootid"
		rs.Open sql,conn,1,3
  
		do while not rs.EOF
			tempcataStr="<option value='"&trim(rs("id"))&"'"

			if rs("id") = mcataid then tempcataStr = tempcataStr&" selected "
			
			tempcataStr = tempcataStr&">"
			tempcataStr = tempcataStr&" | |"
			
			for i=1 to rs("level")-1
				tempcataStr = tempcataStr&" |"
			next
			
			tempcataStr = tempcataStr&"_"&trim(rs("title"))&"</option>"  
			
			Response.Write tempcataStr
			
		rs.MoveNext
		loop 
		
  		rs.Close()
  		set rs=nothing
		%>
              </select>            </td>
          </tr>
          <tr> 
            <td width="13%"> 
              <div align="right">��Ʒ���ƣ�</div>            </td>
            <td width="87%"> 
              <input type="text" name="title" size="30" class="button1" value="<%=mtitle%>">            </td>
          </tr>
          <tr> 
            <td valign="top" width="13%"> 
              <div align="right">��Ʒ���ܣ�</div>            </td>
            <td width="87%"> <IFRAME STYLE="border: none" NAME=cnEditBox src="EditBox.asp?newsId=<%=newsId%>" WIDTH=500 HEIGHT=400></IFRAME>            </td>
          </tr>
          <%if news_permission ="yes" then%>
          <%end if%>
          <tr>
            <td><div align="right"><font color="#FF0000">ע�⣺</font></div></td>
            <td><font color="#FF0000">Ϊ��ǰ̨��ʾ������������Ϣ��������д����ͼƬ��Ҫ���С����</font></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td> 
              <input type="button" name="post" value=" �� �� " onClick="return saveIt();" ID="post" class="button2">
              <input type="hidden" name="newsId" value="<%=newsId%>">
              <input type="hidden" name="action" value="<%=action%>">
              <input type="reset" name="reset" value=" �� �� " class="button2">
              <!--��ȡEditBox������-->
              <input name=cnWords type=hidden ID="cnWords" value="">
              <input name=imageNum type=hidden ID="imageNum" value="<%=mImageNum%>">
              <input name=editFirstImageName type=hidden ID="editFirstImageName" value="">
              <!--��ȡEditBox������-->            </td>
          </tr>
        </table>
</form>
		</td>
      </tr>
    </table>
</body>
</html>