<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
</head>
<style>
	body{
	margin:0px auto;
	padding:0px;
	width:100%;
	height:740px;
	text-align:center;
	background-size:100%;
	font-size:14px;
	font-family:"微软雅黑";
	}
	
	li{
	list-style-type:none;
	}
	a{
	text-decoration:none;
	color:#000;
	}
</style>
<body>

<!--顶部固定模块-->
<header style=" position:relative; z-index:1000;">
	<div style="background:#FFF;width:100%;height:50px;text-align:center;border-bottom:1px gray solid; position:fixed; background:#F7F7F7;top:0px;">
		<div style="width:96%;height:100%;margin-left:2%;">
			<!-- logo标志 -->
			<div style="width:width:227px;height:50px;float:left;">
				<img style="width:100%;height:100%;" src="images/notebook_486.png"/>
			</div>
			<!-- 顶部菜单 -->
			<div style="width:40%;height:100%; float:left;">
				<span style="display:block;float:left;width:80px;height:50px;text-align:center; font-size:18px;"><a style="border-radius:15px; border:1px solid #FFF; display:block;margin:10px 20px;width:60px;height:30px;padding-top:2px;background:#666666;color:#FFFFFF;" href="">首页</a></span>
				<span style="display:block;float:left;width:80px;height:50px;text-align:center; font-size:18px;"><a style="border-radius:15px; border:1px solid #FFF; display:block;margin:10px 10px;width:60px;height:30px;padding-top:2px;" href="tools.html">工具</a></span>
				<span style="display:block;float:left;width:80px;height:50px;text-align:center; font-size:18px;"><a style="border-radius:15px; border:1px solid #FFF; display:block;margin:10px 10px;width:60px;height:30px;padding-top:2px;" href="">资源</a></span>
				<span style="display:block;float:left;width:80px;height:50px;text-align:center; font-size:18px;"><a style="border-radius:15px; border:1px solid #FFF; display:block;margin:10px 10px;width:60px;height:30px;padding-top:2px;" href="">论坛</a></span>
			</div>
			
			<!-- 上部登录注册模块 -->
			<div style="width:200px;height:100%;float:right;">
				<span style="display:block;margin:13px 10px; width:100%;height:100%;text-align:center;color:#666666;"><a style="color:#666666">登录</a>/<a style="color:#666666">注册</a></span>
			</div>
			
		</div>
	</div>
</header>

<!-- 中间内容 -->
<article style="width:100%; height:800px; position:relative;">
	<div style="width:100%; background:#F4F4F4;">
		<!--索引部分 -->
		<div style="width:70%;height:50px;margin-left:12.5%;">
			<span style="float:left;margin-top:70px;margin-right:20px;width:100px;height:100px;display:inline-block;font-size:20px; font-weight:bold;color:#666666;">全部工具</span>
			<span style="margin-right:10px;padding:2px 10px;border-radius:15px; border:1px solid #CCCCCC; background:#FFF;float:left;margin-top:70px;display:inline-block;"><a>全部</a></span>
			<span style="margin-right:10px;padding:2px 10px;border-radius:15px; border:1px solid #CCCCCC; background:#FFF;float:left;margin-top:70px;display:inline-block;"><a>Bug</a></span>
			<span style="margin-right:10px;padding:2px 10px;border-radius:15px; border:1px solid #CCCCCC; background:#FFF;float:left;margin-top:70px;display:inline-block;"><a>sql</a></span>
		</div>
	</div>
	<div style="margin-top:80px;margin-left:12.5%;width:75%;padding:10px 0px; border-top:1px solid #000; text-align:center;">
		<a href="bugfind.html">
			<div style="width:32%;height:200px;border:1px solid #000;margin:10px 5px 10px -115px;float:left; position:relative;overflow:hidden;">
				<img style="width:100%;height:100%; display:block; background:red; z-index:10;"/>
				<span style=" background:green;width:100%;z-index:2; position:absolute; bottom:0px; padding:10px 10px; left:0px;">Bug查询</span>
			</div>
		</a>
		<a href="bugfind.html">
			<div style="width:32%;height:200px;border:1px solid #000;margin:10px 5px 10px 5px;float:left; position:relative;overflow:hidden;">
				<img style="width:100%;height:100%; display:block; background:red; z-index:10;"/>
				<span style=" background:green;width:94%;z-index:2; position:absolute; bottom:0px; padding:10px 10px; left:0px;">Bug查询</span>
			</div>
		</a>
		<a href="bugfind.html">
			<div style="width:32%;height:200px;border:1px solid #000;margin:10px 5px 10px 5px;float:left; position:relative;overflow:hidden;">
				<img style="width:100%;height:100%; display:block; background:red; z-index:10;"/>
				<span style=" background:green;width:94%;z-index:2; position:absolute; bottom:0px; padding:10px 10px; left:0px;">Bug查询</span>
			</div>
		</a>
	</div>
</article>

<footer>
	<div style="width:100%;height:60px;margin-top:0px;background:#333333;position:relative;">
		<span style=" position:relative;top:20px; font-size:14px; color:#999999;">Copyright 2017 北山 版权所有</span>
	</div>
</footer>

</body>
</html>
