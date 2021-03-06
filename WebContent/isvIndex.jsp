<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<html>
<head>
<meta http-equiv=Content-Type content="text/html;charset=utf-8">
<meta charset="gbk">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
<meta content="yes" name="apple-mobile-web-app-capable"/>
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection"/>
<meta content="yes" name="apple-touch-fullscreen"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
<link type="text/css" rel="stylesheet" href="stylesheets/style.css" />
    <style>
        body {
            background-color: white;
        }
        *{
		padding: 0;
		margin: 0;
		}
		ul {
			list-style: none
		}
		li{
			height: 70px;
			padding: 10px;
			border-bottom: 1px solid #ccc;
			vertical-align: middle;
		}
       	.imgSize{
       		width: 50px; 
       		height: 50px
       	}
        .icon img {
		height: 70px;
		width: 70px;
		}
		.icon {
			display: inline-block;
			vertical-align: middle;
			/*border: 1px solid #00ff00;*/
		}
		.text {
		margin-left: 10px;
		width: calc(100% - 50px);
		display: inline-block;
		text-align: left;
		line-height: 70px;
		vertical-align: middle;
		} 
    </style>

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>ISV开发者首页</title>
<script type="text/javascript">
var _config = <%= com.alibaba.dingtalk.openapi.demo.auth.AuthHelper.getConfig(request) %>;
</script>
<script type="text/javascript" src="javascripts/zepto.min.js"></script>
<script type="text/javascript" src="http://g.alicdn.com/ilw/ding/0.7.3/scripts/dingtalk.js">
</script>
<script type="text/javascript" src="javascripts/logger.js">
</script>
<script type="text/javascript" src="javascripts/demo.js">
 
</script>
<script>
function openLink(url){
	dd.biz.util.openLink({
		url:url,
	    onSuccess : function(result) {
	    },
	    onFail : function(err) {
	    	alert(JSON.stringify(err));
	    }
	});
}

</script>

</head>

<body >
	<!-- <div align="center">
		<img id ="userImg" alt="头像" src="./nav/default.png">
	</div>
	<div align="center">
		<span>UserName:</span>
		<div id="userName" style="display:inline-block"></div>
	</div >
	<div align="center">
		<span>UserId:</span>
		<div id="userId" style="display:inline-block"></div>
	</div> -->
	<br>
	<div style="padding-left:10px;padding-right:10px;">&nbsp;&nbsp;&nbsp;&nbsp;欢迎您：<div id="userName" style="display:inline-block;font-weight:bold"></div>&nbsp;成为钉钉ISV，您当前在钉钉的<code>userId</code>为：
		<div id="userId" style="display:inline-block;font-weight:bold"></div> 。</div>
	<div style="padding-left:10px;padding-right:10px;">&nbsp;&nbsp;&nbsp;&nbsp;我们为您提供了文档＋<code>api</code>帮助您快速的开发（套件）微应用并接入钉钉。</div>
	<br>
 <ul>
<li>
	<div class="icon"><img src="list/num11.png" style="width: 25px; height: 25px"></div>
	<div class="text">ISV接入文档</div>
</li>
<li>
	<div class="icon"><img src="list/num2.png" style="width: 25px; height: 25px"></div>
	<div class="text">JSAPI</div>
</li>
<li>
	<div class="icon"><img src="list/num33.png" style="width: 25px; height: 25px"></div>
	<div class="text">导航框架</div>
</li>
<li>
	<div class="icon"><img src="list/num4.png" style="width: 25px; height: 25px"></div>
	<div class="text">List展示（当前仅支持Android）</div>
</li>
<li>
	<div class="icon"><img src="list/num5.png" style="width: 25px; height: 25px"></div>
	<div class="text">侧拉展现（当前仅支持Android）</div>
</li>
<li>
  <div class="icon"><img src="list/num6.png" style="width: 25px; height: 25px"></div>
  <div class="text">Tab页面（当前仅支持Android）</div>
</li>
<li>
  <div class="icon"><img src="list/num7.png" style="width: 25px; height: 25px"></div>
  <div class="text">应用中心授权</div>
</li>
<li>
  <div class="icon"><img src="list/num8.png" style="width: 25px; height: 25px"></div>
  <div class="text">快速部署和授权微应用</div>
</li>
<li>
  <div class="icon"><img src="list/num9.png" style="width: 25px; height: 25px"></div>
  <div class="text">解除授权微应用</div>
</li>
</ul>
 <script type="text/javascript">
window.addEventListener('load', function() {
	setTimeout(function(){
	}, 500);
});

	var items = document.querySelectorAll('li');
	var i = 0;
	var url = 'http://123.56.71.118:8080/dd_demo/';
	items[0].addEventListener('click',function(){
 	 window.location='http://ddtalk.github.io/dingTalkDoc/#isv接入指南'; 
 		
	});
	items[1].addEventListener('click',function(){
		openLink('http://h5.m.laiwang.com/home/ding.html');
 	});
	items[2].addEventListener('click',function(){
	 window.location='./nav/1.html'; 	
	});
	items[3].addEventListener('click', function(){
 		window.location = './list/list.html'; 
 });
	items[4].addEventListener('click',function(){
		 window.location='./drawer/index.html'; 
 	});
	items[5].addEventListener('click',function(){
 		window.location='./tab/index.html';
	});	
	items[6].addEventListener('click',function(){
 		window.location='http://market.aliyun.com/mobile/productDetail.html?showmenu=false&dd_share=false&code=cmdd008261&corpId=ding614d5d8168991fb3'; 

	});
	items[7].addEventListener('click',function(){
 		window.location='https://app.dingtalk.com/isvauth/index.html?productCode=cmdd008261&inviteCode=3900&logo=lALOBU9vEHh4&noLimit=0&url=microappauth'; 
	});
	items[8].addEventListener('click',function(){
 		window.location='https://app.dingtalk.com/microtryout/fire_auth.html?showmenu=false&dd_share=false&corpId=ding614d5d8168991fb3&productCode=cmdd008261'; 
	});
</script>
 
</body>

</html>
