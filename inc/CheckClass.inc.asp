<%
'//[����] ������Ա�Ƿ��½

Function CheckAdminPermission()
	If Trim(Session("CnltrAdminName"))<>"" then 
		CheckAdminPermission=TRUE
	Else
		CheckAdminPermission=FALSE
	End if
	
	adminUser = Trim(Session("CnltrAdminName"))
End Function


'//[����] �滻' " & < >
'//[����] strCheck Ҫ�滻���ַ���

Function RtnReplaceString(strCheck) 
	RtnReplaceString = Replace(Replace(Replace(Replace(Replace(strCheck,"'","��"),"""","��"),"&",""),"<","&lt;"),">","&gt;")
End Function

'//[����] �ж��Ƿ������֣�������Ĭ��ֵ�滻
'//[����] iCheck Ҫ�滻�ı���,iDefault Ĭ��ֵ

Function RtnReplaceInt(iCheck,iDefault) 
	If Trim(iCheck)="" Then
		RtnReplaceInt = iDefault
		Exit Function
	End If

	If IsNumeric(iCheck)=false Then
		RtnReplaceInt = iDefault
		Exit Function
	End If

	RtnReplaceInt = iCheck
End Function

'//[����] ��һ�����е�HTML�ı�ʶȥ��
Function FilterHTML(strToFilter)
	Dim strTemp
	strTemp = strToFilter
	While Instr(1,strTemp,"<") AND Instr(1, strTemp, ">")
		strTemp = Left(strTemp, Instr(1, strTemp, "<")-1) & Right(strTemp, Len(strTemp)-Instr(1,strTemp, ">"))
	WEnd
	FilterHTML = strTemp
End Function
%>