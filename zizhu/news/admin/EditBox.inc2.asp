<%
Response.Buffer = true
On Error Resume Next
%>
<!--#include file="../../dbconnect/news.admin.inc.asp" -->
<%
'//Ԥ����
dim newsId,rs,errorStr,content

'//��ʼ��
errorStr=""
content = ""
newsId = Trim(Request.QueryString("newsId"))

if isNumeric(newsId)=false or newsId="" then
   newsId = 0       
end if

'//
'//ȡ��������Ϣ
sql = "select content FROM n where id="&newsId
set rs=Server.CreateObject("ADODB.RecordSet")
rs.Open sql,conn,1,3
if rs.RecordCount=1 then
   '//��ȡ������Ϣ  
  
      content = rs("content")
      content = Replace(content,"""","\""")
end if
rs.Close
set rs=nothing
%>