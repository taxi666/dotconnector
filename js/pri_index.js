$(document).ready(function(){
	var i = 0;
	var ad_top_list = $("#ad_top_list");
	setInterval(function (){
	ad_top_list.find("li").eq(i).fadeOut(1000);
	ad_top_list.find("li").eq((++i)%6).fadeIn(1000);
	$("#ad_top_num").text(i+1);	
	if(i>5) i=0;
	},3000);

	var speed=10;
	var demo1=$("#ad_mid_list");
	var demo2=$("#ad_mid_list2");
	var demo=$("#ad_mid_main");
	var MyMar;
	demo2.html(demo1.html());
	//alert(demo.class);
	//alert(document.getElementById("ad_mid_main").offsetWidth);
	//alert("demo.offsetWidth:"+demo.get(0).offsetWidth);
	// alert("demo.offsetWidth:"+demo.offsetWidth);
	// alert("demo1.offsetWidth:"+demo1.offsetWidth);
	function marquee_left(){
		if(demo1.width() <= demo.scrollLeft())
		demo.scrollLeft(0);
		else{
		demo.scrollLeft(demo.scrollLeft()+1);
		}
		// $("#test_p").text("demo1.scrollWidth"+demo1.get(0).scrollWidth+";demo.scrollLeft:"+demo.get(0).scrollLeft);
	}
	function marquee_right(){
		if(demo.scrollLeft()<=0)
		demo.scrollLeft(demo1.width());
		else{
		demo.scrollLeft(demo.scrollLeft()-1);
		}
	}
	$("#icon_ad_mid_left").mouseover(function(){
		MyMar=setInterval(marquee_left,speed);
		});
	$("#icon_ad_mid_left").mouseout(function(){
		clearInterval(MyMar);
		});
	$("#icon_ad_mid_right").mouseover(function(){
		MyMar=setInterval(marquee_right,speed);
		});
	$("#icon_ad_mid_right").mouseout(function(){
		clearInterval(MyMar);
	});
});

