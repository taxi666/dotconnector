<!--#include file="../inc/setup.asp" -->
<!--#include file="../dbconnect/admin.inc.asp" -->
<!--#include file="../inc/SysLoginCheck.inc.asp" -->

<%
action =trim(Request("action"))
'��ӳ����û�
if action="ok" then
     homepage_title = trim(Request.form("homepage_title"))
	 homepage_caption = trim(Request.form("homepage_caption"))
	 homepage_link = trim(Request.form("homepage_link"))
	 your_email = trim(Request.form("your_email"))
	 creattime = trim(Request.form("creattime"))
	 news_back_count = trim(Request.form("news_back_count")) 
	 news_front_count = trim(Request.form("news_front_count"))
	 news_permission = trim(Request.form("news_permission"))
	 products_back_count = trim(Request.form("products_back_count")) 
	 products_front_count = trim(Request.form("products_front_count")) 
	 imageswidth = trim(Request.form("imageswidth")) 
	 imagesheight = trim(Request.form("imagesheight")) 
	 b_imageswidth = trim(Request.form("b_imageswidth")) 
	 b_imagesheight = trim(Request.form("b_imagesheight")) 
	 products_permission = trim(Request.form("products_permission"))
  
	voteincdir = server.mappath("../inc/setup.asp")
	Const ForReading =1, ForWriting = 2
	set fs = CreateObject("Scripting.FileSystemObject")
	set ts = fs.OpenTextFile(voteincdir,ForWriting, True)
	ts.Write ""
	ts.Write "<"
	ts.Write "%"& vbCrLf
	ts.Write " homepage_title= "&""""&homepage_title&""""& vbCrLf 
	ts.Write " homepage_caption= "&""""&homepage_caption&""""& vbCrLf
	ts.Write " homepage_link= "&""""&homepage_link&""""& vbCrLf
	ts.Write " your_email= "&""""&your_email&""""& vbCrLf
	ts.Write " creattime= "&""""&creattime&""""& vbCrLf
	ts.Write " news_back_count= "&""""&news_back_count&""""& vbCrLf
	ts.Write " news_front_count= "&""""&news_front_count&""""& vbCrLf
	ts.Write " news_permission= "&""""&news_permission&""""& vbCrLf	
	ts.Write " products_back_count= "&""""&products_back_count&""""& vbCrLf
	ts.Write " products_front_count= "&""""&products_front_count&""""& vbCrLf
	ts.Write " imageswidth= "&""""&imageswidth&""""& vbCrLf
	ts.Write " imagesheight= "&""""&imagesheight&""""& vbCrLf
	ts.Write " b_imageswidth= "&""""&b_imageswidth&""""& vbCrLf
	ts.Write " b_imagesheight= "&""""&b_imagesheight&""""& vbCrLf
	ts.Write " products_permission= "&""""&products_permission&""""& vbCrLf
	ts.Write "%"
	ts.Write ">"
	ts.close
	response.write "<script language=javascript>"
	response.write "alert('ϵͳ���óɹ���');"
	response.write "</script>"
end if
if action="reok" then
	Set rs=Server.CreateObject("ADODB.Recordset")
	sql="select * from sysset where id = 1"
	rs.open sql,conn,1,1
	
    homepage_title = trim(rs("homepage"))
	homepage_link = trim(rs("http"))
	your_email = trim(rs("email"))
	creattime = now()
	news_back_count = trim(rs("news_back_count")) 
	news_front_count = trim(rs("news_front_count"))
	products_back_count = trim(rs("products_back_count")) 
	products_front_count = trim(rs("products_front_count")) 
	imageswidth = trim(rs("imageswidth")) 
	imagesheight = trim(rs("imagesheight")) 
	b_imageswidth = trim(rs("b_imageswidth")) 
	b_imagesheight = trim(rs("b_imagesheight"))
	
	rs.close
	set rs = nothing
end if

%>

<HTML>
<HEAD>
<TITLE>ϵͳ�û�����</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<script language="JavaScript">
function reok(){
if (confirm("�����Ҫ�ָ�ϵͳĬ��������")){
	document.location.href="sysset.asp?action=reok";
	}
}
</script>
</HEAD>

<BODY bgColor=#FFFFFF topMargin=0 leftmargin="0">
<!--#include file="../inc/top.asp" -->
<br>
<table class="text" width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><%=homepage_title%> - <font color="#FF0000">ϵͳ����</font></td>
  </tr>
</table>
<table class="text" width="95%" border="0" cellspacing="1" cellpadding="3"  align=center>
  <form name="form1" method="post" action="sysset.asp?action=ok">
    <tr bgcolor="#AABFEC"> 
      <td colspan=2> 
        <div align="left"><font color="#FFFFFF"><b><font color="#000000">�� �������� 
          </font></b><font color="#000000">�� ϵͳ�е�һЩ������Ϣ ��</font><b><font color="#000000"> 
          </font></b></font></div>
      </td>
    </tr>
    <tr> 
      <td width="27%"  bgcolor="#F3F3F3" height="25"> 
        <div align="right">��ҳ���ƣ� </div>
      </td>
      <td width="73%"  bgcolor="#F3F3F3"> 
        <input type="text" name="homepage_title" class="button1" size="40" value="<%=homepage_title%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��ҳ������ʾ�� </div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%">
        <input type="text" name="homepage_caption" class="button1" size="40" value="<%=homepage_caption%>">
      </td>
    </tr>
    <tr>
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��ҳ��ַ�� </div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="homepage_link" class="button1" size="40" value="<%=homepage_link%>">
      </td>
    </tr>
    <tr>
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">ϵͳ�ʼ���ַ�� </div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="your_email" class="button1" size="40" value="<%=your_email%>">
      </td>
    </tr>
    <tr>
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��վ����ʱ�䣺 </div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="creattime" class="button1" size="40" value="<%=creattime%>">
      </td>
    </tr>
    <tr bgcolor="#AABFEC"> 
      <td height="23" align=left colspan="2"><font color="#FFFFFF"><b> <font color="#000000">�� 
        �������� </font></b><font color="#000000">��������Ŀ�Ļ������� ��</font></font></td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��̨ÿҳ��ʾ������Ŀ��</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="news_back_count" class="button1" size="10" value="<%=news_back_count%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">ǰ̨ÿҳ��ʾ������Ŀ��</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="news_front_count" class="button1" size="10" value="<%=news_front_count%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">�Ƿ������������Ȩ�ޣ�</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="radio" name="news_permission" value="yes">
        �� 
        <input type="radio" name="news_permission" value="no" checked>
        ��</td>
    </tr>
    <tr bgcolor="#AABFEC"> 
      <td height="23" align=left colspan="2"><font color="#FFFFFF"><b> <font color="#000000">�� 
        �������� </font></b><font color="#000000">����Ʒ��Ŀ�Ļ������� ��</font></font></td>
    </tr>
    <tr> 
      <td height="23" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��̨ÿҳ��ʾ������Ŀ��</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="products_back_count" class="button1" size="10" value="<%=products_back_count%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">ǰ̨ÿҳ��ʾ������Ŀ��</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="text" name="products_front_count" class="button1" size="10" value="<%=products_front_count%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��Ʒ��СͼƬ������</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> �� 
        <input type="text" name="imageswidth" class="button1" size="10" value="<%=imageswidth%>">
        �ߣ� 
        <input type="text" name="imagesheight" class="button1" size="10" value="<%=imagesheight%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">��Ʒ�Ŵ�ͼƬ������</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%">�� 
        <input type="text" name="b_imageswidth" class="button1" size="10" value="<%=b_imageswidth%>">
        �ߣ� 
        <input type="text" name="b_imagesheight" class="button1" size="10" value="<%=b_imagesheight%>">
      </td>
    </tr>
    <tr> 
      <td height="25" align=left bgcolor="#F3F3F3" width="27%"> 
        <div align="right">�Ƿ����ò�Ʒ���Ȩ�ޣ�</div>
      </td>
      <td align=left bgcolor="#F3F3F3" width="73%"> 
        <input type="radio" name="products_permission" value="yes">
        �� 
        <input type="radio" name="products_permission" value="no" checked>
        ��</td>
    </tr>
    <tr bgcolor="#F3F3F3"> 
      <td height="30" align=left colspan="2">        <div align="center"> 
          <input type="submit" name="Submit" value="  �� ��  " class="button2">
        </div>
      </td>
    </tr>
  </form>
</table>
<br>
</BODY>
</HTML>