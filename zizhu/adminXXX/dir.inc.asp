<%
'//Ԥ����
dim menu(5,3),j,tmpmenu,menuname,menurl

'menu(0,0)="���ݹ���ϵͳ"
'menu(0,1)="<a href=../news/admin/news.asp target=mainFrame>���ݹ���</a><!-- | <a href=../news/admin/guestbook.asp target=mainFrame>��������</a>//-->"
'menu(0,2)="<a href=../news/admin/addcata.asp target=mainFrame>��Ŀ����</a> | <a href=../news/admin/fixcata.asp target=mainFrame>��Ŀ�ϲ�</a>"
'menu(0,3)="<a href=../news/admin/addnews.asp target=mainFrame>������Ϣ</a>"

menu(0,0)="֪ͨ�������"
menu(0,1)="<a href=../news/admin/news_tz.asp target=mainFrame>֪ͨ�б�</a>"
'menu(0,2)="<a href=../news/admin/addcata2.asp target=mainFrame>��Ŀ����</a> | <a href=../news/admin/fixcata2.asp target=mainFrame>��Ŀ�ϲ�</a>"
menu(0,2)="<a href=../news/admin/addnews_tz.asp target=mainFrame>���֪ͨ</a>"

menu(1,0)="��Ƹ��Ϣ����"
menu(1,1)="<a href=../news/admin/news_zp.asp target=mainFrame>��Ϣ�б�</a>"
menu(1,2)="<a href=../news/admin/addnews_zp.asp target=mainFrame>�����Ϣ</a>"


'menu(2,0)="��Ƹ"
'menu(2,1)="<a href=../news/admin/addzp.asp target=mainFrame>������Ƹ��Ϣ</a>"
'menu(2,2)="<a href=../news/admin/zpgl.asp target=mainFrame>��Ƹ��Ϣ����</a>"
'menu(2,3)="<a href=../news/admin/ypgl.asp target=mainFrame>ӦƸ����</a>"

menu(2,0)="���Թ���"
menu(2,1)="<a href=../news/admin/admin_liuyan.asp?pageno=1 target=mainFrame>���԰����</a>"
menu(2,2)="<a href=../news/admin/admin_jiajiao.asp?pageno=1 target=mainFrame>�ҽ���Ϣ����</a>"
'menu(1,0)="�������ӹ���"
'menu(1,1)="<a href=../news/admin/addkc.asp target=mainFrame>�����������</a>"
'menu(1,2)="<a href=../news/admin/kclb.asp target=mainFrame>���������б�</a>"

menu(3,0)="�û�����"
menu(3,1)="<a href=sysuser.asp target=mainFrame>�û���Ϣ</a>"


menu(4,0)="���ع���"
menu(4,1)="<a href=../news/admin/news_xz.asp target=mainFrame>�ļ��б�</a>"
menu(4,2)="<a href=../news/admin/upload.asp target=mainFrame>����ļ�</a>"


sub showMenu()
    dim menuStr
    for i=0 to ubound(menu,1)
        menuStr = "<br><table cellpadding=0 cellspacing=0 width=158>"&_
                  "<tr>"&_
                  "<td height=25 class=menu_title onmouseover='this.className=""menu_title2""' onmouseout='this.className=""menu_title"";' background=images/admin_left_"&(i+1)&".gif id=menuTitle1 onclick=showsubmenu("&i&")>"&_
                  "<span>"&menu(i,0)&"</span>"&_
                  "</td>"&_
                  "</tr>"&_
                  "<tr>"&_
                  "<td style='display:' id='submenu"&i&"'>"&_   
                  "<div class=sec_menu style='width:158'>"&_ 
                  "<table cellpadding=0 cellspacing=0 align=center width=135 ID=Table1>"   

    	for j=1 to ubound(menu,2)
	        if isempty(menu(i,j)) then exit for
	        menuStr = menuStr&"<tr><td height=20>"&menu(i,j)&"</td></tr>"
	    next
	    
	    menuStr = menuStr&"</table>"&_
	                      "</div>"&_
	                      "</td>"&_
	                      "</tr>"&_
	                      "</table>"

	    Response.Write menuStr
    next
end sub
%>