<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body  bottommargin="0" topmargin="0">

<table align="center" border="0" cellpadding="4" cellspacing="0" width="760" bgcolor="#fcfcfc" bordercolor="#609C09" style="border-top:0;border-bottom:0;border-left:1px solid;border-right:1px solid" height="100%">

<tr>

  <td align="center"><p>&nbsp;</p><h3 class="style1"><font color="#e60000">Ƹ��ҽ̵Ǽ�</font></h3></td>

</tr>



<tr>

  <td><p>&nbsp;</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ע��:����<font color=D11B00>*</font>����Ŀ������д</td>

</tr>

<tr>

  <td>

    <form method="post" action="regjiajiao.asp" name="Regjiajiao" onSubmit="javascript: return CheckValid();">

    <table width="760" border="0" cellspacing="0" cellpadding="4" align="center">

    <tr>

      <td width="110" align="right"><font color=#D11B00>*</font>�ҳ�����</td>

      <td width="320">&nbsp;&nbsp;<input name="Parentname" size="15" type="text"></td>

      <td width="300">���������������д,�Է������ǲ�ѯ</td>

  </tr>

  <tr>

      <td align="right"><font color=#D11B00>*</font>��ͥ��ַ</td>

      <td>&nbsp;&nbsp;<input name="Address" type="text" id="Address" size="40"></td>

      <td>&nbsp;</td>

  </tr>

  <tr>

      <td align="right"><font color=#D11B00>*</font>�绰</td>

      <td>&nbsp;

              <input name="Hometel" type="text" id="Hometel" size="15" maxlength="13"></td>

      <td>�������д���Է������Ǻ�����ϵ</td>

  </tr>

  <tr>

    <td align="right"><font color=#D11B00>*</font>ѧ���Ա�</td>

    <td>&nbsp;&nbsp;

        <input type="radio" name="Sex" value="��" checked>�� 

        <input type="radio" name="Sex" value="Ů">Ů</td>

    <td>&nbsp;</td>

  </tr>

  <tr>

    <td align="right"><font color=#D11B00>*</font>ѧ���꼶</td>

    <td>&nbsp;&nbsp;<input name="Grade" type="text" size="15"></td>

    <td>������ѧ���꼶���粻����Уѧ��������&ldquo;����&rdquo;</td>

  </tr>

  <tr>

    <td align="right"><font color=#D11B00>*</font>������Ŀ</td>

    <td>&nbsp;&nbsp;<input name="Course" type="text" size="30"></td>

    <td>����д��&ldquo;��ѧ&rdquo;��&ldquo;Ӣ��&rdquo;��&ldquo;����&rdquo;��&ldquo;����&rdquo;��</td>

  </tr>

  <tr>

    <td align="right">�Խ�ʦҪ��</td>

    <td>&nbsp;&nbsp;<textarea name="Need" cols="40" rows="5"></textarea></td>

    <td>�ɼ�Ҫ��д�Խ�ʦ��Ҫ��</td>

  </tr>

  

  <tr>

      <td align="center" colspan="3">

        <p>&nbsp;</p>

	          <input name="submit" type="image"  value="�ύ"  src="images/submit.gif"  >

		

		<!-- A href="#" onclick="if CheckValid() then Regjiajiao.submit()">�ύ</A></td--></td>

   </tr>

  </table>

  </form>

  </td>

</tr>

 

</table>

</body>



<script language="javascript">

function CheckValid()

{    if(document.Regjiajiao.Parentname.value==""){

			alert('������ҳ�����.');

			document.Regjiajiao.Parentname.focus();

			return false;

			}

		if(document.Regjiajiao.Address.value==""){

			alert('�������ͥסַ.');

			document.Regjiajiao.Address.focus();

			return false;

			}

		if(document.Regjiajiao.Hometel.value==""){

			alert('�������ͥ�绰.');

			document.Regjiajiao.Hometel.focus();

			return false;

			}			

		if(document.Regjiajiao.Grade.value==""){

			alert('������ѧ���꼶.');

			document.Regjiajiao.Grade.focus();

			return false;

			}

		if(document.Regjiajiao.Course.value==""){

			alert('�����븨����Ŀ.');

			document.Regjiajiao.Course.focus();

			return false;

			}

			

	
	

		//  ע�ͣ�У���ͥ�绰�Ƿ���ȷ

		var home_tel =  document.Regjiajiao.Hometel.value;

		var  len =  home_tel.length;

		var i;

		for(i =0; i <len ; i++)

		{

			if((home_tel.charAt(i) <='9' && home_tel.charAt(i) >= '0'))

				continue;

			alert("����ȷ����绰����.");

			document.Regjiajiao.Hometel.focus();

			return false;

		}



	var	boolean= window.confirm("����ϸ�˶�����д����Ϣ��ȷ���ύ��");

	if(boolean==false)

	return false; 

		

}

</script>
</html>
