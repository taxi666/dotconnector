<!--#include file="../inc/setup.asp" -->
<!--#include file="../dbconnect/admin.inc.asp" -->
<!--#include file="../inc/SysLoginCheck.inc.asp" -->

<script language="javascript">
<!--
function checkdel(username){
	if (confirm("��ȷ��Ҫɾ�� "+username+" ��������û���")){
		window.open("sysuser.asp?operate=del&username="+username,"_self");
	}
	else{
		//Do Nothing;
	}
}
-->
</script>
<%
operate=trim(Request("operate"))

'��ӳ����û�
  if operate="add" then
     operate_sta = "����û�ʧ��-�������û���Ϣ��ȫ�����û����к��в��Ϸ��ַ�"
     addsysuser = trim(Request.form("addsysuser"))
	 addusername = trim(Request.form("addusername"))
	 addpassword = trim(Request.form("addpassword"))
	 conaddpassword = trim(Request.form("conaddpassword"))

	 if addsysuser = "ok" and addusername<>"" and addpassword<>"" and conaddpassword<>"" and addpassword=conaddpassword and Instr(addusername,"'")<1 and Instr(addusername," ")<1 and Instr(addusername,"""")<1 and Instr(addusername,"&")<1 then
	    conn.Execute("INSERT INTO admin (user,pwd) VALUES ('"&addusername&"','"&addpassword&"')")
		operate_sta = "����û��ɹ�"
	 end if
  end if
 
'�޸��û�����
  if operate="mod" then
     operate_sta = "�޸��û�����ʧ��-�������û���Ϣ��ȫ�����û������в��Ϸ��ַ�"
	 modsysuser = trim(Request.form("modsysuser"))
     modusername = trim(Request.form("modusername"))
	 modpassword = trim(Request.form("modpassword"))
     newpassword = trim(Request.form("newpassword"))
	 connewpassword = trim(Request.form("connewpassword"))

	 if modsysuser = "ok" and modusername<>"" and modpassword<>"" and newpassword<>"" and connewpassword<>"" and newpassword=connewpassword and Instr(modusername,"'")<1 and Instr(modusername," ")<1 and Instr(modusername,"""")<1 and Instr(modusername,"&")<1 then
	    operate_sta = "�޸��û�����ʧ��-����������û�"
	    Set rs=Server.CreateObject("adodb.recordset")
	    sql="Select * From admin Where user='"&modusername&"'"
	    rs.Open sql,conn,1,1
	    if rs.RecordCount =1 then
		   operate_sta = "�޸��û�����ʧ��-�������ԭ���벻��"
	       password=trim(rs("pwd"))
		   if modpassword = password then
		      operate_sta = "�޸��û�����ɹ�"
		      conn.Execute("UPDATE admin SET pwd='"&newpassword&"' WHERE user='"&modusername&"'")		  
		   end if
	    end if
		set rs=nothing
	 end if
  end if
 
'ɾ�������û�
  if operate="del" then
     delusername = trim(Request.QueryString("username"))
	 conn.Execute("DELETE FROM admin WHERE user='"&delusername&"'")
  end if
%>
<HTML>
<HEAD>
<TITLE>ϵͳ�û�����</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../styles/admin.css" type="text/css">
</HEAD>

<BODY bgColor=#FFFFFF topMargin=0 leftmargin="0">
<!--#include file="../inc/top.asp" -->
<br>
<table class="text" width="500" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><%=homepage_title%> - <font color="#FF0000">�û�����</font></td>
  </tr>
</table>
<table class="text" width="500" border="0" cellspacing="6" cellpadding="0" align="center" bgcolor="#F6F6F6">
  <tr valign="top"> 
            <td height="240"> 
              <table class="text" width="100%" cellspacing="0" cellpadding="0" height="100%" border="0">
                <tr> 
                  <td height="260" valign="top"> 
                    <font color="#FF0000"><B>
                    <% =operate_sta %>
                    </b></font> 
                    <form name="addsysuser" method="post" action="sysuser.asp?operate=add">
                      
              <table class="text" width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr> 
                          <td height="24" width="21%"><b>����û�</b> </td>
                          <td height="24" width="79%">��&nbsp;��&nbsp;���� 
                            
                    <input type="text" size=25 name="addusername" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="24" width="21%">&nbsp; </td>
                          <td height="24" width="79%">��&nbsp;&nbsp;&nbsp;&nbsp;�룺 
                            
                    <input type="password" size=25 name="addpassword" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="24" width="21%">&nbsp; </td>
                          <td height="24" width="79%">ȷ�����룺 
                            
                    <input type="password" size=25 name="conaddpassword" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="28" width="21%">&nbsp; </td>
                          <td height="28" width="79%"> 
                            <input type="hidden" name="addsysuser" value="ok">
                            
                    <input type="submit" name="Submit2" value=" �� �� " class="button2">
                            
                    <input type="reset" name="Submit222" value=" �� д " class="button2">
                          </td>
                        </tr>
                      </table>
                    </form>
                    <form name="modsysuser" method="post" action="sysuser.asp?operate=mod">
                      
              <table class="text" width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr> 
                          <td height="24" width="21%"><b>�����޸�</b> </td>
                          <td height="24" width="79%">�� &nbsp;�� &nbsp;���� 
                            
                    <input type="text" size=25 name="modusername" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="24" width="21%">&nbsp; </td>
                          <td height="24" width="79%">ԭ &nbsp;�� &nbsp;�룺 
                            
                    <input type="password" size=25 name="modpassword" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="24" width="21%">&nbsp; </td>
                          <td height="24" width="79%">�� &nbsp;�� &nbsp;�룺 
                            
                    <input type="password" size=25 name="newpassword" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="24" width="21%">&nbsp; </td>
                          <td height="24" width="79%">ȷ�������룺 
                            
                    <input type="password" size=25 name="connewpassword" maxlength="30" class="button1">
                          </td>
                        </tr>
                        <tr> 
                          <td height="28" width="21%">&nbsp; </td>
                          <td height="28" width="79%"> 
                            <input type="hidden" name="modsysuser" value="ok">
                            
                    <input type="submit" name="Submit" value=" �� �� " class="button2">
                            
                    <input type="reset" name="Submit22" value=" �� д " class="button2">
                          </td>
                        </tr>
                      </table>
                    </form>
                    
            
                  </td>
                </tr>
              </table>
      </td>
          </tr>
        </table>
<p>&nbsp;</p></BODY>
</HTML>