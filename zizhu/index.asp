<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ϴ�ѧ��������</title>
<style type="text/css">
*{margin:0;padding:0;border:0;}
body {
 font-family: arial, ����, serif;
 font-size:12px;
 
 
}



a:focus {   -moz-outline-style: none; } /*ȥ���������� for firefox*/

a:hover {
	color:#ea272a;
	text-decoration:underline;
}
a:active{
    color:#FF0000;
	text-decoration:underline;
}
a {
    color:#555;
	text-decoration: none;
}
#nav {
  line-height: 30px;  list-style-type: none; background:#666;
  margin:0px auto;
 
}


#nav a {
 display: block; width: 120px; text-align:center;
}

#nav a:link  {
 color:#444; text-decoration:none;
}
#nav a:visited  {
 color:#444;text-decoration:none;
}
#nav a:hover  {
 color:#fff;text-decoration:none;font-weight:bold;
}
#nav li {
 float: left; width:120px; background:url(images/menu_bg3.jpg);
}

#nav li a:hover{
 background:#C00;
}
#nav li ul {
 line-height: 30px;  list-style-type: none;text-align:left;
 left: -999em; width:120px; position: absolute;
}
#nav li ul li{
 float: left; width:  120px;
 background: #F6F6F6;
}


#nav li ul a{
 display: block; width: 120px;width: 120px;height:auto; margin:0 auto;text-align:center; padding-left:0px;
}

#nav li ul a:link  {
 color:#666; text-decoration:none;
}
#nav li ul a:visited  {
 color:#666;text-decoration:none;
}
#nav li ul a:hover  {
 color:#F3F3F3;text-decoration:none;font-weight:normal;
 background:#C00;
}

#nav li:hover ul {
 left: auto;
}
#nav li.sfhover ul {
 left: auto;
}
  *+ html #nav li ul{margin: 0 0 0 -60px;} /* �����˵���ʾλ�õ���IE7 */
   *html #nav li ul{   
   margin:0  0 0 -60px;} /* �����˵���ʾλ�õ��� IE*/
 



#container {
	text-align: center;
	width:100%;
	position: relative;
	visibility: visible;
	margin:10px auto;
	background:#fff ;
}
#top_image {
	width:960px;
	height:170px;
	margin:0px auto;
	background:url(image/topppppp.jpg);
}
#div_mid {
	
	width: 960px;
	height:30px;
	margin:0px auto;
	
}

#div_main {
	
	height: 600px;
	width: 960px;
	margin:0px auto;
	background-color:#f2f2f2;
	border:solid 1px #bdbdbd;	
}

#div_foot {
	
	width: 960px;
	margin:10px auto;
	background-color:#fff;
	text-align:center;
	color:#777;
}
#div_foot a {
	color:#777;
	text-decoration:none;
}
.foot{
	list-style:none;
	margin:2px auto;
}
#div_sidebar {
 width:197px; /*�趨���*/
 height:600px;
 text-align:left; /*���������*/
 float:left; /*��������*/
 clear:left; /*�����������ڸ���*/
 overflow:hidden; /*������Ȳ�������*/
 margin:0px auto;
}
#sidebar1,#sidebar2,#sidebar3{
   width:197px; 
    height:80px;
	border-bottom:solid 1px #b2b2b2;
	background:url(images/bgleft.gif) repeat-x;
	line-height:70px;
	color:#666666;
	font-weight:bold;
	font-size:21px;
	text-align:center;
	
}

.wenzi{
	color:#666666;
}
#yqlj{
	width:197px; 
	margin:14px auto;
}
.li_content {
	margin-left:20px;
	margin-top:12px;
	width:158px;
	list-style:none;
	font-size:14px;	
}
.li_title {
		font-size:16px;color:#ea272a;font-family:"΢���ź�";font-weight:normal;line-height:32px;border-bottom:solid 1px #bdbdbd;
		margin:10px 20px auto 20px;
		list-style:none;
		}
	
#div_mainbody {
 width:760px;
 height:600px;
 text-align:left;
 float:right; /*��������*/
 clear:right; /*�������Ҳ���ڸ���*/
 overflow:hidden;
}
#mainbody_notice{
	width:760px; /*�趨���*/
    height:299px;
    text-align:left; /*���������*/
    overflow:hidden; 
	margin:0px auto;
	border:solid 1px #bdbdbd;border-width:0 1px 1px 1px;
}
   
#mainbody_employment{ 
	width:760px; /*�趨���*/
    height:299px;
    text-align:left; /*���������*/
    overflow:hidden; 
	margin-bottom:0px;
	border-left:solid 1px #bdbdbd;
}
	
.main_title{
	width:720px; /*�趨���*/
    height:35px;
    text-align:left; /*���������*/
    overflow:hidden; 
	margin:0px auto;
	border-bottom:solid 1px #b2b2b2;

}

.iconmore{
	margin-left:672px;
	margin-top:-28px;
}
.main_title a{font-size:16px;color:#ea272a;font-family:"΢���ź�";font-weight:normal;line-height:36px;text-decoration:none;}
.main_title a:hover{font-size:16px;color:#ea272a;font-family:"΢���ź�";font-weight:normal;line-height:36px; 
text-decoration:underline;}
.main_content{
	width:720px; /*�趨���*/
	height:264px;
    text-align:left; /*���������*/
    overflow:hidden; 
	margin-left:20px;
}

.news{margin:6px auto; list-style:none;}
		.news li{color:#999;font-size:12px;width:360px;border-bottom:solid 0px #000; height:26px;float:left;
				  background:url(images/icon1.jpg) no-repeat 6px 5px;}
		.news li a{
			text-decoration:none;text-color:#999;padding-left:14px;}
		.news li a:link{color:#555; text-decoration:none;}
		.news li a:hover{color:#ea272a;text-decoration:none;}



</style>

<script type=text/javascript><!--//--><![CDATA[//><!--
function menuFix() {
 var sfEls = document.getElementById("nav").getElementsByTagName("li");
 for (var i=0; i<sfEls.length; i++) {
  sfEls[i].onmouseover=function() {
  this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  sfEls[i].onMouseDown=function() {
  this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  sfEls[i].onMouseUp=function() {
  this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  sfEls[i].onmouseout=function() {
  this.className=this.className.replace(new RegExp("( ?|^)sfhover\\b"),

"");
  }
 }
}
window.onload=menuFix;


//--><!]]></script>


</head>

<body>

<div id="container" >

<div id="top_image"></div>
 
<div id="div_mid">

   <ul id="nav">
 <li class="li1"><a href="./index.asp" target="_bank">������ҳ</a>
  </li>
 <li class="li1"><a href="lis/zhongxinjianjie.html" target="_bank">���ļ��</a>
  <ul>
   <li><a href="lis/jigoushezhi.html" target="_bank">��������</a></li>
   <li><a href="lis/zhongxinfengong.html" target="_bank">���ķֹ�</a></li>
   <li><a href="lis/fazhanzhongxi.html" target="_bank">��ѧ����չ����</a></li>
  </ul>
 </li>
 <li class="li1"><a href="lis/jiangzhuzhuanqu.html" target="_bank">����ר��</a>
  <ul>
   <li><a href="lis/lvshetongdao.html" target="_bank">������ɫͨ��</a></li>
   <li><a href="lis/kunnanxueshengrending.html" target="_bank">����ѧ���϶�</a></li>
   <li><a href="lis/jiangzhuxuejin.html" target="_bank">����ѧ��</a></li>
   <li><a href="lis/jianmiankunbu.html" target="_bank">��������</a></li>
  </ul>
 </li>
 <li class="li1"><a href="lis/zhuxuedaikuan.html" target="_bank">��ѧ����</a>
  <ul>
   <li><a href="lis/shengyuandi.html" target="_bank">��Դ�ش���</a></li>
   <li><a href="lis/guojiazxdk.html" target="_bank">������ѧ����</a></li>
   <li><a href="lis/huandaiguanli.html" target="_bank">��������</a></li>
  </ul>
  </li>
  <li class="li1"><a href="lis/jianzhi.html" target="_bank">��ְר��</a>
  <ul>
   <li><a href="lis/jiajiao.html"  target="_bank">�ҽ�</a></li>
   <li><a href="lis/danweijianzhi.html"  target="_bank">����ҵ��λ��ְ</a></li>
   <li><a href="lis/xiaoneijianzhi.html"  target="_bank">У�ڼ�ְ</a></li>
  </ul>
  </li>
  <li class="li1"><a href="lis/aixinjuanzeng.html"  target="_bank">���ľ���</a>
  </li>
  <li class="li1"><a href="downlist.asp?pageno=1" target="_blank">����ר��</a>
  </li>
  <li class="li1"><a href="lis/lianxiwomen.html"  target="_bank">��ϵ����</a>
  <ul>
   <li ><a href="lis/banshizhinan.html"  target="_bank">����ָ��</a></li>
   <li><a href="liuyan.asp?pageno=1"  target="_bank">���԰�</a></li>
  </ul>
  </li>
</ul>
</div>



<div id="div_main">

<div id="div_sidebar">
      <!--�����-->
      <div id="sidebar1"> <a class="wenzi" target="_blank" href="lis/qiye.html"> ��ҵ���˴���</a> </div>
      <div id="sidebar2"> <a class="wenzi" target="_blank" href="jiajiao.asp" > �ҽ����˴���</a> </div>
      <div id="sidebar3"> <a class="wenzi" target="_blank" href="liuyan.asp?pageno=1"> ���԰�</a> </div>
      <div id="yqlj">
        <ul>
          <li class="li_title">��������</li>
           <li class="li_content">
          <a href="http://www.jiangnan.edu.cn/" target="_blank">���ϴ�ѧ��ҳ</a>
          </li>
          <li class="li_content">
          <a href="http://jdxgc.jiangnan.edu.cn/"target="_blank" >���ϴ�ѧѧ����</a>
          </li>     
          
          <li class="li_content">
          <a href="http://lib.jiangnan.edu.cn/" target="_blank">���ϴ�ѧͼ���</a>
          </li>
         
          <li class="li_content">
          <a href='http://sytu.baidajob.com/' target="_blank">���ϴ�ѧ��ҵ��</a>
          </li>
           <li class="li_content">
          <a href='http://sytu.baidajob.com/' target="_blank">���ϴ�ѧ������̳</a>
          </li>
          <li class="li_content">
          <a href='http://fudaoyuan.jiangnan.edu.cn' target=_blank>���ϴ�ѧ����Ա��</a>

          </li>
           <li class="li_content">
          <a href='http://202.195.144.141/webc/x2/' target=_blank>����������������</a>

          </li>
          
          <li class="li_content">
          <a href='http://166.111.4.130:8080/?d=jiangnan.emtoem.com' target="_blank">����ְǰ��������ѧ��</a>

          </li>
         
          
        </ul> </div>
    </div>
    
  <div id="div_mainbody"><!--��������-->
  
    <div id="mainbody_notice">
      <div class="main_title">
      <a href="list1.asp?pageno=1" >֪ͨ����</a>
      <div class="iconmore">
      <a href="list1.asp?pageno=1">
      <img src="images/20060905030313587.gif"  alt="����" /></a></div></div>
       
      <div class="main_content">
      
      	    <!--#include file ="conn.asp"-->
	          <%
		set rs=server.createobject("adodb.recordset")
		exec="select top 20 * from n order by id desc"
		rs.open exec,conn,1,1
		%>
        <ul class="news">
        <%if not rs.eof then
    

		do while not rs.eof%>
		<%
      maxlen=21 '��ʵ�Ƕ��ó���ֵ 
      title=rs("title") '���������ݼ�¼���ֶ�ֵ 
      If Len(title)>maxlen then title=left(title,maxlen-1)&"...." ''����������ȴ���20--�����,�ñ������ȱ��(20-2),���... 
    %>
      <li>
      <a href="view1.asp?id=<%=rs("id")%>" title="<%=rs("title")%>"><%=title%></a>&nbsp;<%=FormatDateTime(rs("date"),vbshortdate)%>
      <% dim date1,date2,day1,day2,days
	  date1=rs("date")
	  date2=date()
	  day1=365*year(date1)+30*month(date1)+day(date1)
	  day2=365*year(date2)+30*month(date2)+day(date2)
	  days=day2-day1
	  if days<8 then %>
        &nbsp;<img src="images/new.gif"/>
  
   <% end if%>
   </li>
      <%
		rs.movenext
		loop
		rs.close
		set rs=nothing
		end if
		%>
      </ul>  
    </div><!--֪ͨ����-->
    </div>
    
    <div id="mainbody_employment">
    
      <div  class="main_title">
      <a href="list2.asp?pageno=1"> ��Ƹ��Ϣ</a>
      <div class="iconmore">
        <a href="list2.asp?pageno=1">
      <img src="images/20060905030313587.gif"  alt="����" /></a></div> </div>
      <div class="main_content">   
         
	          <%
		set rs=server.createobject("adodb.recordset")
		exec="select top 20 * from zhaopin order by id desc"
		rs.open exec,conn,1,1
		%>
        <ul class="news">
        <%if not rs.eof then
    

		do while not rs.eof%>
		<%
      title=rs("title") '���������ݼ�¼���ֶ�ֵ 
      If Len(title)>maxlen then title=left(title,maxlen-1)&"...." ''����������ȴ���20--�����,�ñ������ȱ��(20-2),���... 
    %>
      <li>
      <a href="view2.asp?id=<%=rs("id")%>" title="<%=rs("title")%>"><%=title%></a> &nbsp;<%=FormatDateTime(rs("date"),vbshortdate)%>
      <% 
	  date1=rs("date")
	  date2=date()
	  day1=365*year(date1)+30*month(date1)+day(date1)
	  day2=365*year(date2)+30*month(date2)+day(date2)
	  days=day2-day1
	  if days<8 then %>
        &nbsp;<img src="images/new.gif"/>
  
   <% end if%>
      </li>
      <%
		rs.movenext
		loop
		rs.close
		set rs=nothing
		end if
		%>
      </ul>
      </div>
    </div><!--��Ƹ��Ϣ-->
    
��</div>


</div> <!--main����-->

<div id="div_foot">
<li class="foot">���ϴ�ѧѧ���������� </li>
<li class="foot">��ַ:�����б����������1800�Ž��ϴ�ѧ���� ��ѧ������� </li>
<li class="foot">�绰:0510-85910283 &nbsp;&nbsp;   ����:0510-85328172&nbsp;&nbsp;
</li>
      
<li class="foot">�ʱ�:214122  &nbsp;&nbsp;
 <a href="admin/login.asp"> ��̨���</a></li>
</div>
<!--foot�ײ�-->

</div>
<!--container����-->




</body>
</html>