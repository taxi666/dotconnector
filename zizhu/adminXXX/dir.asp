<!--#include file="dir.inc.asp"-->

<html>
<title>���Ź���Ŀ¼</title>
<link rel="stylesheet" href="../styles/admin.css" type="text/css">
<head>


<SCRIPT language="javascript1.2">
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
</head>
<BODY bgcolor="#799AE1" leftmargin="0" topmargin="0">
<div align=center>
  <table class="text" width="158" cellpadding="0" cellspacing="0" border="0" >
    <tr> 
      <td valign="top">
	    <table class="text" cellpadding="0" cellspacing="0" width="158">
          <tr> 
            <td height="42" valign="bottom">
			<img src="images/title.gif" width="158" height="38"> 
            </td>
          </tr>
        </table>
        <table class="text" cellpadding="0" cellspacing="0" width="158" align="center">
          <tr> 
            <td height="25" class="menu_title" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" background="images/title_bg_quit.gif"> 
              <div align="left">&nbsp;&nbsp;<a href="default.asp" target="_top"><b>������ҳ</b></a> 
                | <a href="logout.asp" target="_top"> <b>�˳�</b></a> </div>
            </td>
          </tr>
        </table>
        &nbsp; 
        <%     
        '//����˵�
        call showMenu()
	    %>
      </td>
    </tr>
  </table>
<p>&nbsp;</p></div>
</BODY>
</html>