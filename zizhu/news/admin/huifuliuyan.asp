<!--#include file="../../inc/setup.asp" -->
<!--#include file="../../dbconnect/news.admin.inc.asp" -->
<!--#include file="../../inc/SysLoginCheck.inc.asp" -->


<% 
set rs= Server.CreateObject("adodb.recordset")
sql="select * from liuyan where id="&request("id") '��λ�ظ���λ��,where��������ǻظ�������,ֻ�����Ǵ��ݹ���������IDֵ,����ֵ����ǰ��ID������,��������ֻ��Ե�ǰ�ظ����������ظ�,����ܹؼ�,��Ȼ��������
rs.open sql,conn,1,3
if request.form("active")="" then  '�����жϵı��ύ����ˢ��ҳ��,������ύ��,��ô�������ֵ�϶����ύ,����Request.form("active")��Ϊ��,��ִ�����»ظ����.���û�ύ��,����ˢ��ҳ��,��ô�������ֵû���ύ,Request.form("active")�϶�Ϊ��,��������ִ��
 else
 rs("title")=request.form("title")
 rs("content")=request.form("content")
rs("answer")=request.form("repcontent") 'ע��˴���ǰû�м�rsedit.addnew,��Ϊ���Ǹ���ԭ�еļ�¼,��ԭ�е���������׷�ӻظ�����,�����������һ���¼�¼
rs("active")=true
rs("publishdate")=date
rs.update
rs.close
set rs=nothing
response.redirect "admin_liuyan.asp?pageno=1"
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����ϵͳ-�ظ�����</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style2 {font-size: 18px}
-->
</style>
<link href="css.css" rel="stylesheet" type="text/css">
</head>

<body background=image/back.jpg>


   <table width="770" height="1" border="0" align="center" cellpadding="0" cellspacing="0" id="talbe0001"> 
    <tr> 
      <td height="1" background="image/0004.gif"></td> 
    </tr> 
</table>
<form action="huifuliuyan.asp?id=<%=request("id")%>" method="post" name="add">
  <table width="450" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#FCA2A1">
    <tr bgcolor="#FFE7E7">
      <td height="40" colspan="3" align="center"><span class="text3 style2">����ϵͳ-�ظ�����</span></td>
    </tr>
    
  
    <tr bgcolor="#FFFFFF">
      <td valign="top"><P style="MARGIN-TOP: 2px; MARGIN-LEFT: 80px">��������</p></td>
      <td colspan="2"><input name="title" type="text" id="title" value="<% =rs("title") %>" size="25" maxlength="30">
      <span class="style1 style3" style="color: #FF0000"></span></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td valign="top"><P style="MARGIN-TOP: 5px; MARGIN-LEFT: 80px">����</p></td>
      <td colspan="2"><textarea name="content" cols="35" rows="8"><% =rs("content") %>
      </textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td valign="top"><P style="MARGIN-TOP: 5px; MARGIN-LEFT: 80px">�ظ�</p></td>
      <td colspan="2"><textarea name="repcontent" cols="35" rows="8" id="repcontent"><% =rs("answer") %>
      </textarea>
      <input name="active" type="hidden" id="active" value="yes"></td>
    </tr>
    <tr align="center" bgcolor="#FFFFFF">
      <td colspan="3"><input type="submit" name="Submit" value="д����">
    ����������������
      <input type="reset" name="Submit" value="����д">
      </td>
    </tr>
  </table>
</form>
  <table width="770" height="1" border="0" align="center" cellpadding="0" cellspacing="0" id="talbe0001"> 
    <tr> 
      <td height="1" background="image/0004.gif"></td> 
    </tr> 
  </table>

</body>
</html>