<!--#include file="Up3.inc"-->
<html>
<head>
<title>�ϴ��ļ�</title>
<script language="JavaScript"> 
<!-- 

function Addpic(mtu5){
	window.opener.pub_topic.tu5.focus();								
	window.opener.document.pub_topic.tu5.value=mtu5;
    window.opener=null;
    window.close();
}
//--> 
</script> 
<link href="text.css" rel="stylesheet" type="text/css">
</head>
<body >
<table width=400 border=0 align="center" cellpadding="6" cellspacing="1" bgcolor="#A2A2A2">
  <tr><td width=100% height=100% align="center" bgcolor="#F2F2F2" class=tablebody1 >
<%
dim upload,file,formName,formPath,filename,fileExt
dim ranNum
call UpFile()
'===========������ϴ�(upload_0)====================
sub UpFile()
set upload=new UpFile_Class '�����ϴ�����
upload.GetData (1024*1024*5) 'ȡ���ϴ�����,�˴���Ϊ5M

if upload.err > 0 then
select case upload.err
case 1
Response.Write "����ѡ����Ҫ�ϴ����ļ���[ <a href=# onclick=history.go(-1)>�������ϴ�</a> ]"
case 2
Response.Write "�ļ���С����������5M��[ <a href=# onclick=history.go(-1)>�������ϴ�</a> ]"
end select
exit sub
else
formPath=upload.form("filepath") '�ļ�����Ŀ¼,��Ŀ¼����Ϊ����ɶ�д
if formPath="" then
formPath="../uppic/"
end if
'��Ŀ¼���(/)
if right(formPath,1)<>"/" then 
formPath=formPath&"/"
end if 
for each formName in upload.file '�г������ϴ��˵��ļ�
set file=upload.file(formName) '����һ���ļ�����
if file.filesize<100 then
response.write "����ѡ����Ҫ�ϴ����ļ�!��[ <a href=# onclick=history.go(-1)>�������ϴ�</a> ]"
response.end
end if

fileExt=lcase(file.FileExt)
if CheckFileExt(fileEXT)=false then
response.write "�ļ���ʽ����ȷ��[ <a href=# onclick=history.go(-1)>�������ϴ�</a> ]"
response.end
end if

randomize timer
ranNum=int(90000*rnd)+10000
filename=formPath&year(now)&"_"&month(now)&"_"&day(now)&"_"&ranNum&"_"&hour(now)&minute(now)&second(now)&"."&fileExt
if file.FileSize>0 then '��� FileSize > 0 ˵�����ļ�����
result=file.SaveToFile(Server.mappath(filename)) '�����ļ�
if result="ok" then
response.write "<br>�ļ���<font color='#ff0000'>"&File.FilePath&file.FileName&"</font>�ϴ��ɹ�!<br><br>"
response.write"����·����<input type=""text""  size=""40"" style=""border-style: solid; border-width: 1""value="""&RIGHT(filename,LEN(filename)-3)&"""><br><br><br>[<a href=# onclick=""Addpic('"&RIGHT(filename,LEN(filename)-3)&"')"">���������ļ�·�����ӵ��ı�����</a>]<br><br>"

else
response.write File.FilePath&file.FileName&" �ϴ�ʧ��,"&result&"<br>"
end if
end if
set file=nothing
next
set upload=nothing
end if
end sub

'�ж��ļ������Ƿ�ϸ�
Private Function CheckFileExt (fileEXT)
dim Forumupload
Forumupload="gif,jpg,jpeg,rar,zip,doc"
Forumupload=split(Forumupload,",")
for i=0 to ubound(Forumupload)
if lcase(fileEXT)=lcase(trim(Forumupload(i))) then
CheckFileExt=true
exit Function
else
CheckFileExt=false
end if
next
End Function
%>
</td>
</tr>
</table>

</body>
</html> 