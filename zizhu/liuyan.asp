<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
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
	color:#555;
	font-family:"����";
	font-size:16px;
	font-weight:bold;
	text-decoration: none;
}
a:focus {
	-moz-outline-style: none;
} /*ȥ���������� for firefox*/
a:hover {
	color:#FF0000;
	text-decoration:none;
}
a:active {
	color:#FF0000;
	text-decoration:none;
}

#container {
	text-align: center;
	width:100%;
	overflow: scroll;
	position: relative;
	visibility: visible;
	margin:0px auto;
}
#top_image {
	width:960px;
	height:120px;
	margin:0px auto;
	background:url(image/topnew.jpg);
}
#div_main {
	position: relative;
	height: 800px;
	width: 960px;
	margin:0px auto;
	background-color:#f2f2f2;
	border:solid 1px #bdbdbd;
	text-align:left;
}
#div_foot {
	position: relative;
	height: 50px;
	width: 960px;
	margin:0px auto;
}
#main_liuyan {
	margin:0 auto;
	list-style:none;
	height:775px;
}
.liuyan {
	list-style:none;
}
.ly1 {
	margin:0px auto;
	font-family:"����";
	font-size:14px;
	font-weight:bold;
	color:#666;
}
.ly2 {
	margin:5px auto;
	font-family:"����";
	font-size:14px;
	font-weight:bold;
	color:#666;
}
.answer_title {
	margin:5px auto;
	height:20px;
	line-height:19px;
	font-family:"����";
	font-size:12px;
	font-weight:bold;
	color:#fff;
	background-color:#666;
	margin:10px 20px auto 20px;
}
.answer_content {
	margin:10px auto;
	font-family:"����";
	font-size:12px;
	color:#666;
	background-color:#FF9;
	margin:0px 20px auto 20px;
	letter-spacing:1px;
	line-height:16px;
}
.answer_time {
	text-align:right;
	margin:4px 20px auto 20px;
	font-family:"����";
	font-size:14px;
	color:#666;
}
#main_daohang{
	
	text-align:right;
}


-->
</style>
</head>
<body>
<div id="container" >
  <div id="top_image"> </div>
  <div id="div_main"> 
  
  <div id="main_liuyan">
    <!--#include file ="conn.asp"-->
    <%
  set rs=server.createobject("adodb.recordset")
  exec="select * from liuyan where active=true order by id desc"
  rs.open exec,conn,1,1
  totalnumber=rs.recordcount
  MaxPerPage=5
  pageno=request("pageno")
  i=0
  rs.move  (pageno-1)*MaxPerPage
  %>
    <ul class="liuyan">
      <%if not rs.eof then
		do while not rs.eof%>
      <li class="ly1"> ���Ա��⣺<%=rs("title")%> </li>
      <li class="ly2">�������ݣ�<%=rs("content")%> </li>
      <li class="answer_title">&nbsp;&nbsp;&nbsp;�ظ�����</li>
      <li class="answer_content"><%=rs("answer")%></li>
      <li class="answer_time">�ظ�ʱ�䣺<%=rs("publishdate")%></li>
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
    		response.write "<a href='liuyan.asp?pageno=1'>��ҳ</a>&nbsp;"
    		response.write "<a href='liuyan.asp?pageno="&(pageno-1)&"'>��һҳ</a>&nbsp;"
  	end if

  	if n-pageno<1 then
    		response.write "��һҳ βҳ"
  	else
    		response.write "<a href='liuyan.asp?pageno="&(pageno+1)&"'>"
    		response.write "��һҳ</a> <a href='liuyan.asp?pageno="&n&"'>βҳ</a>"
  	end if
   	response.write "&nbsp;ҳ�Σ�<strong><font color=red>"&pageno&"</font>/"&n&"</strong>ҳ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
    

	%>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="newliuyan.asp">��Ҫ����>>&nbsp;&nbsp;&nbsp;</a>
      </div> 
    
  
</div>

<!--main����-->

</div>
<!--container����-->
</body>
</html>