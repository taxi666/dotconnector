
<!--#include file="../../inc/setup.asp" -->
<!--#include file="../../dbconnect/news.admin.inc.asp" -->
<!--#include file="../../inc/SysLoginCheck.inc.asp" -->

<%
's_keyword = trim(request("keyword"))
's_cataid=trim(request("cataid"))

dim pmcount,pageno

'//����������ʾ����
pmcount=8

dim rs,sql
set rs=server.createobject("adodb.recordset")

Function DelNews(idstr)
	sqld = "select * from jiajiao where id="&idstr
	set rsd=Server.CreateObject("ADODB.RecordSet")
	rsd.Open sqld,conn,1,3   
	if not rsd.EOF then
       rsd.Delete
       rsd.Update
	 
	end if
	 rsd.close	     
	   
    set rsd=nothing 
End Function

if request("action")="del" then	
	Dim strIdList,arrIdList,iId,i
	strIdList = Trim(Request("news"))
	If Not IsEmpty(strIdList) Then
		arrIdList = Split(strIdList,",")
		
		For i=0 To UBound(arrIdList)
			iId = clng(arrIdList(i))			
			Call DelNews(iId)			
		Next	
		
		response.write "<script language=javascript>"
		response.write "alert('ɾ���ɹ���');"
		response.write "</script>"
	End If
end if
%>

<html>
<head>
<title>�ҽ���Ϣ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../../css/style.css" type="text/css">
<script language="JavaScript">
<!--
function cdel(){
if (confirm("�����Ҫɾ����Щ�𣿲��ɻָ���")){
	document.delnews.submit();;
	}
}

function view(newsfile) {
	var gt = unescape('%3e');
	var popup = null;
	var over = "Launch Pop-up Navigator";
	popup = window.open('', 'popupnav', 'width=300,height=160,left=200,top=200,,resizable=no,scrollbars=no');
	if (popup != null) {
		if (popup.opener == null) {
		popup.opener = self;
		}
	popup.location.href = newsfile;
	}
}
function SelectCheckBox()
{
	for(i=0;i<document.delnews.elements.length;i++)
	{
		if(document.all("selectCheck").checked == true)
		{
			document.delnews.elements[i].checked = true;					
		}
		else
		{
			document.delnews.elements[i].checked = false;
		}
	}
}
//-->
</script>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<!--#include file="../../inc/top.asp" -->
<br>
<table width="101%" border="0" align="center" cellspacing="3" cellpadding="3" bgcolor="#FFFFFF">
  <tr> 
    <td colspan="2"><%=homepage_title%> - <font color="#FF0000">�ҽ���Ϣ����</font></td>
  </tr>
  <tr> 
    <td valign="top" nowrap> 
     
      <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolordark="#FFFFFF" bordercolorlight="#CCCCCC">
        
		<form name="delnews" action="admin_jiajiao.asp?action=del" method=post>
        <%
 dim id,parentname,telephone,address,sex,grade,course,addtime,requirements
sql="select * from jiajiao order by ID desc"
rs.open sql,conn,1,1
rcount=rs.recordcount

if pmcount="" or isempty(pmcount) or pmcount<1 then
        pmcount=8
end if
	rs.pagesize=pmcount   	'����ÿҳ��
	mpage=rs.pagecount    	'�õ���ҳ��
	pageno=clng(request("pageno"))
	
if isempty(pageno) or cint(pageno)<1 or cint(pageno)>mpage then
	pageno=1
end if

if rs.bof and rs.eof then
	response.write "<tr><td colspan='6'><div align='center'>����������</div></td></tr>"
else
	rs.absolutepage=pageno	'��ָ������ָ��ҳ�ĵ�һ����¼
	loopno=pmcount
	i=1
	do while not rs.eof and loopno>0
%>
<%
id=rs("id")
 parentname=rs("parentname")
telephone=rs("telno")
address=rs("address")
if rs("sex")=true then 
    sex="��"
else 
    sex="Ů"
end if
grade=rs("grade")
course=rs("course")
addtime=rs("addtime")
requirements=rs("requirements")%>
       <tr bgcolor="#EEEEEE" height="25">
    <td width="3%" rowspan="3" align="center">
        <input type='checkbox' name='news' value='<%=Trim(rs("id"))%>'> 
        <%=rs("id")%></td>
    <td width="15%">�ҳ�������&nbsp;<%=parentname%></td> 
    <td width="11%" >ѧ���Ա�&nbsp;<%=sex%></td>
    <td width="18%">�绰��&nbsp;<%=telephone%></td>
    
    <td width="18%">ѧ���꼶��&nbsp;<%=grade%></td>
    <td width="16%">������Ŀ��&nbsp;<%=course%></td>
    <td width="19%">���ʱ�䣺&nbsp;<%=addtime%></td>
    </tr>
  <tr bgcolor="#EEEEEE" height="25">
    <td colspan="6" >��ͥ��ַ��&nbsp;<%=address%></td>
    </tr>
  <tr height="25" style="table-layout:fixed;word-break:break-all ">
    <td colspan="6">����ʦҪ��&nbsp;<%=requirements%>  </td>
    </tr>
        <%
		rs.movenext						
		loopno=loopno-1
		i=i+1
		loop		
		end if
		
		rs.close
		set rs=Nothing
		endconnection
		%>
		</form>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class=buinput>
        <form name="pageform" method=get action="admin_jiajiao.asp">
          <tr>
		    <td width="6%" height="25"> 
              <div align="center">
                <input type='checkbox' name='selectCheck' id=selectCheck onClick="SelectCheckBox()">
              </div>
            </td>
            <td width="16%">ȫ��ѡ�� <input name="delbtn" value=" ɾ �� " type="button" class="button2" onClick="cdel();"></td>
            <td>
              <div align="right">������ 
                <input type=text size=3 name="pageno" value="<%=pageno%>" class="button1">
                ҳ 
                <%if cint(pageno)>1 then%>
                [<a href='admin_jiajiao.asp?pageno=<%=pageno-1%>' class="tt4">��һҳ</a>] 
                <%end if
			if cint(pageno)<cint(mpage) then
			%>
                [<a href='admin_jiajiao.asp?pageno=<%=pageno+1%>' class="tt4">��һҳ</a>] 
                <%end if%>
                ��<%=cstr(pageno)&"/"&cstr(mpage)&"ҳ "&cstr(rcount)%>�� </div>
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>

