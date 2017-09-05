<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="charset=utf-8">
<title>无标题文档</title>
<base href="/BeiShan/">
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
	
	#now_user_detail:hover{
		background:#FF6600;
	}
	
	#not_user_detail:hover{
		background:#CCCCCC;
		color:#FFFFFF;
	}
</style>
<body>

<!--顶部固定模块-->
<header style=" position:relative; z-index:1000;">
	<div style="background:#FFF;width:100%;height:50px;text-align:center;border-bottom:1px gray solid; position:fixed">
		<div style="width:75%;height:100%;margin-left:12.5%;">
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
			<div id="login_block" style="width:100px;height:100%;float:right;">
				<span style="display:block;margin:13px 10px; width:100%;height:100%;text-align:center;color:#666666;"><a style="color:#666666">登录</a>/<a style="color:#666666">注册</a></span>
				<div id="userMenu" style=" border:1px solid red;width:100px;height:100px;margin-top:-26px;float:right;position:fixed;background:red; display:none;">
					<span style="display:block;width:100%;height:33%;">个人中心</span>
					<span style="display:block;width:100%;height:33%;">我的Bug</span>
					<span style="display:block;width:100%;height:33%;">注销</span>
				</div>
			</div>
			
		</div>
	</div>
</header>

<!--登录模块-->
<div style="display:;">
	<!-- 登录 -->
	<div style="width:100%;height:100%; position:fixed; z-index:9999; background:#000; opacity:0.6;">
	
	</div>
	<div style="top:15%;left:37.5%;width:25%; position:fixed; z-index:100000; background:#FFF; ">
		<!--选项 -->
		<div style="width:100%;height:50px; background:#FFF;  text-align:center;opacity:none;">
			<div style="width:90%; height:97%; margin-left:5%; border-bottom:1px solid #CCCCCC;opacity: 1">
				<span><a href="#" style="font-size:18px;color:#F01400;padding:18px 0px 1px;width:30%;height:60%;display:inline-block; float:left; border-bottom:1px solid red;">登录</a></span><span><a href="#" style="font-size:18px;color:#8D7DA1;padding:18px 0px 1px;width:30%;height:60%;display:inline-block; float:left; border-bottom:1px solid #CCCCCC;">注册</a></span>
				<img style="width:30px;height:30px; float:right;margin-top:10px; cursor:pointer;" src="images/body01.png"/>
			</div>
		</div>
		
		<!-- 登录输入框 -->
		<form style="display:none;">
			<div style="width:100%;height:230px; background:#FFF; text-align:center;">
				<input style="margin-top:20px;width:80%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="请输入登录手机号" />
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:block; text-align:justify;">请输入正确的邮箱或手机号</label>
				<input style="margin:20px 20px 0px 20px;;width:80%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="6-16位密码，区分大小写，不能用空格" />
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:block; text-align:justify;">请输入6-16位密码，区分大小写，不能使用空格！</label>
				<span style=" margin-top:5%;width:100%;height:30px; display:inline-block; float:left; vertical-align:middle;"><input style="margin-left:-40px;" type="checkbox"/><span style="font-size:14px;color:#787D82;">七天内自动登录</span><a href="#" style="font-size:14px;color:#787D82;width:30%;height:30px; float:right;margin-right:3%;">忘记密码</a></span>
				<input style="margin-top:10px;width:80%; height:50px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;" type="button" value="登录" />
			</div>
		</form>
		<!-- 注册form表单 -->
		<form style="display:;">
			<div style="width:100%;height:230px; background:#FFF; text-align:center;">
				<input style="margin-top:20px;width:80%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="请输入注册手机号" />
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:block; text-align:justify;">请输入正确的邮箱或手机号</label>
				<span style="width:80%;margin-left:10%; height:30px; display:block;margin-top:20px;">
					<input style="margin-right:20px;width:35%; height:30px; border:1px solid #CCCCCC; float:left;" type="text" placeholder="请输入验证码" />
					<!-- <span style="width:80px;height:100%; border:1px solid red; display:block; float:left;"></span> -->
					<img id="imgCode" src="code.jpg" style="width:80px;height:100%; display:block; float:left;"/>
					<img id="codeA" style="cursor:pointer;margin-top:-3px;margin-left:-20px;" src="images/shuaxin.png"/>
				</span>
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:block; text-align:justify; float:left;">验证码错误！</label>
				<input style="margin-top:30px;width:80%; height:50px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;" type="button" value="注册" />
			</div>
		</form>
		<!-- 短信验证码输入 -->
		<form style="display:none;">
			<div style="width:100%; height:60px; text-align:center;">
				<span style="margin-top:20px;display:block; width:80%; height:30px;margin-left:10%; font-size:16px;">填写短信验证码密码完成注册</span>
				<span style="display:block; width:80%; height:30px;margin-left:10%; font-size:12px; color:#777C81;">短信验证码已发送至<span style="font-size:12px;color:#EF1300;">17688378954</span></span>
			</div>
			<div style="width:100%;height:210px; background:#FFF; text-align:center; ">
				<input style="margin-top:20px;width:55%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="请输入短信验证码" />
				<span style="vertical-align:middle;width:23%;height:32px;border:1px solid #CCCCCC; border-left:none; text-align:center; display:inline-block;margin-top:-1px;margin-left:-4px;"><a href="javascript:void(0)" style="padding:5px 10px; display:inline-block;">重新发送</a></span>
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:block; text-align:justify;">请输入正确验证码</label>
				<span style="width:100%;margin-left:10%; height:30px; display:block;margin-top:20px;">
					<input style="margin-right:20px;width:80%; height:30px; border:1px solid #CCCCCC; float:left;" type="text" placeholder="6-16位密码，区分大小写，不能用空格" />
				</span>
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:block; text-align:justify; float:left;">请输入6-16位密码，区分大小写，不能用空格！</label>
				<input style="margin-top:30px;width:80%; height:50px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;" type="button" value="提交" />
			</div>
			<span style=" cursor:pointer;width:100%;height:30px; display:block; text-align:center;font-size:14px; color:#777C81;margin-bottom:10px;">返回修改手机号</span>
		</form>
		<div style="width:100%;height:300px; display:none;">
			<img style="width:140px; height:140px;" src="images/register_success.jpg"/>
			<span style="width:100%; height:30px;display:block; font-size:18px; font-weight:bold; text-align:center;">恭喜您成功注册！</span>
			<span style="width:100%; height:30px;display:block; font-size:16px; text-align:center;">资料尚未设置，是否去完善个人资料？</span>
			<div style="width:100%;height:50px; margin-top:25px;">
				<a id="now_user_detail" href="javascript:void(0)" style=" background:#FF0000; color:#FFFFFF;margin-right:20px;font-size:14px;padding:10px 30px; border:1px solid #FF3300;">现在就去</a>
				<a id="not_user_detail" href="javascript:void(0)" style="font-size:14px;padding:10px 30px; border:1px solid #D0D6D9;">以后再说</a>
			</div>
		</div>
	</div>
	<!-- 注册输入框 -->
		
		<div style="width:100%;height:50px; display:none;">
		
		</div>
	</div>
</div>

<!--中间部分-->
<article style="width:100%; height:680px; position:relative;">
	<div style="width:100%;height:680px;margin-top:1px;background:url(images/2.jpg);background-size:cover;">
	
	</div>
</article>
<!--底部声明-->
<footer>
	<div style="width:100%;height:60px;margin-top:0px;background:#333333;position:relative;">
		<span style=" position:relative;top:20px; font-size:14px; color:#999999;">Copyright 2017 北山 版权所有</span>
	</div>
</footer>
	
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript">
	/* 验证码模块 */
	/* function changeImg(){     
	    var imgSrc = $("#imgCode");  
	    
	    var src = imgSrc.attr("src");     
	    imgSrc.attr("src",chgUrl(src));     
	}   */
	$("#codeA").click(function(){
		$("#imgCode").attr("src", "code.jpg?" +  new  Date().getTime()  );
	});
 
	
	//时间戳     
	//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳     
	/* function chgUrl(url){     
	    var timestamp = (new Date()).valueOf();     
	    urlurl = url.substring(0,17);     
	    if((url.indexOf("&")>=0)){     
	        urlurl = url + "×tamp=" + timestamp;     
	    }else{     
	        urlurl = url + "?timestamp=" + timestamp;     
	    }     
	    return url;     
	}       */

	function callback(data){     
	    $("#info").html(data);     
	}  
	
	function isRightCode(){     
	    var code = $("#veryCode").attr("value");     
	    code = "c=" + code;     
	    $.ajax({     
	        type:"POST",     
	        url:"resultServlet/validateCode",     
	        data:code,     
	        success:callback     
	    });     
	}     


	</script>
</body>
</html>
