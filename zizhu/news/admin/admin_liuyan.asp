
<!--#include file="../../inc/setup.asp" -->
<!--#include file="../../dbconnect/news.admin.inc.asp" -->
<!--#include file="../../inc/SysLoginCheck.inc.asp" -->

<head>
<style type="text/css">
<!--
* {
	margin:0;
	padding:0;
	border:0;
}
body {
	font-family: arial, ����, serif;
	font-size:12px;}
	
a {
	color:#a00;
	text-decoration: none;
}

a:hover {
	color:#FF0000;
	text-decoration:underline;
}


#main_content{
	height:780px;
	overflow:scroll;
}

.liuyan {
	list-style:none;
}
.ly1 {
	margin:10px auto;
	font-family:"����";
	font-size:14px;
	font-weight:bold;
	color:#666;
	height:20px;
	width:85%;

	float:left;
}
.ly10{
	margin:10 auto;
	font-family:"����";
	font-size:14px;
	height:20px;
	width:15%;
	float:right;
	
}
.ly2 {
	margin:5px auto;
	font-family:"����";
	font-size:14px;
	font-weight:bold;
	color:#666;
	
	float:none;
}

.answer_time {
	text-align:right;
	margin:4px auto;
	font-family:"����";
	font-size:12px;
	color:#666;
	border-bottom:solid 1px #b2b2b2;
	float:none;
}
#main_daohang{
	margin-bottom:0px;
	text-align:right;
}
td {  font-size: 12px; line-height: 20px}

-->
</style>
<title>���Թ���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<body>
<!--#include file="../../inc/top.asp" -->
<br>
<div id="main_content">
    <%
	dim tempid
  set rs=server.createobject("adodb.recordset")
  exec="select * from liuyan  order by id desc"
  rs.open exec,conn,1,1
  totalnumber=rs.recordcount
  MaxPerPage=6
  pageno=request("pageno")
  i=0
  rs.move  (pageno-1)*MaxPerPage
  %>
    <ul class="liuyan">
      <%if not rs.eof then
		do while not rs.eof%>
      <li class="ly1"> �������⣺<%=rs("title")%>   </li>

      <li class="ly10"><a href="del_liuyan.asp?id=<%=rs("id")%>">ɾ��</a>&nbsp; &nbsp;<a href="huifuliuyan.asp?id=<%=rs("id")%>">�ظ�</a></li>
      <li class="ly2">�������ݣ�<%=rs("content")%> </li>
      <li class="answer_time">�ύʱ�䣺<%=rs("indate")%></li>
       <%
	    i=i+1
	    if i>=MaxPerPage then exit do
		rs.movenext
		loop
		rs.close
		set rs=nothing
		end if
		%>
    </ul>
</div>
    <div id="main_daohang">
      <%
  	if totalnumber mod maxperpage=0 then
     		n= totalnumber \ maxperpage
  	else
     		n= totalnumber \ maxperpage+1
  	end if
	
  	if pageno<2 then
    		response.write "��ҳ ��һҳ&nbsp;"
  	else
    		response.write "<a href='admin_liuyan.asp?pageno=1'>��ҳ</a>&nbsp;"
    		response.write "<a href='admin_liuyan.asp?pageno="&(pageno-1)&"'>��һҳ</a>&nbsp;"
  	end if

  	if n-pageno<1 then
    		response.write "��һҳ βҳ"
  	else
    		response.write "<a href='admin_liuyan.asp?pageno="&(pageno+1)&"'>"
    		response.write "��һҳ</a> <a href='admin_liuyan.asp?pageno="&n&"'>βҳ</a>"
  	end if
   	response.write "&nbsp;ҳ�Σ�<strong><font color=red>"&pageno&"</font>/"&n&"</strong>ҳ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
    

	%>
    
</body>
</html>

