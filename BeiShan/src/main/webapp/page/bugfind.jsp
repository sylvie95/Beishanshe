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
			<!-- 登录注册模块 -->
			<jsp:include page="./isLogin_div.jsp"></jsp:include>
		</div>
	</div>
</header>

<article style="width:100%; height:800px; position:relative;">
	<div style="width:75%;margin-left:12.5%;vertical-align:middle;"> 
		<form>
			<div style="width:100%;height:50px;position:relative;top:55px;">
				<span style="display:inline-block; width:100px; height:35px;overflow:hidden;margin:6px 10px; float:right;border-radius:10px; border:1px solid #666666;"><a style="color:#FFFFFF; display:block;width:100%;height:100%;  background:#666666; font-size:18px; padding-top:5px;">检索</a></span>
			</div>
			<div style="width:100%; height:230px; margin-top:60px;">
				<!-- 错误文本输入框 -->
				<div style="width:49%;height:228px;background:#F4F4F4;float:left; overflow:hidden;border-radius:15px; border:1px solid #666666;">
					<textarea style="resize:none;font-size:14px;background:#F4F4F4;width:97%;height:97%; border:none;"></textarea>
				</div>
				<!-- 最优解答 -->
				<div style="width:49%;height:228px;background:#F4F4F4;float:right; overflow:hidden;border-radius:15px; border:1px solid #666666;">
					<textarea readonly="readonly" style="resize:none;font-size:14px;background:#F4F4F4;width:97%;height:97%; border:none;"></textarea>
				</div>
			</div>
		</form>
	</div>
	<div style="width:75%;height:50px; margin-top:20px;margin-left:12.5%; border-bottom:2px groove #666666;">
		<span style="display:inline-block; width:100px; height:35px;overflow:hidden;margin:12px 10px 0px 10px; float:left;color:#666666;font-size:18px; font-weight:bold; bottom:5px;">其他相关</span>
	</div>
</article>

<!--底部声明-->
<footer>
	<div style="width:100%;height:60px;margin-top:0px;background:#333333;position:relative;">
		<span style=" position:relative;top:20px; font-size:14px; color:#999999;">Copyright 2017 北山 版权所有</span>
	</div>
</footer>
	
	
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<!-- 用户功能模块功能js -->
	<script type="text/javascript" src="js/login_user_menu.js"></script>
	<!-- 注册与登录框js动态调整 -->
	<script type="text/javascript" src="js/register_login.js"></script>
	<!-- 实现注册功能js -->
	<script type="text/javascript" src="js/register_form_1.js"></script>
	<script type="text/javascript">
		$("#codeA").click(function(){
			$("#imgCode").attr("src", "code.jpg?" +  new  Date().getTime()  );
		});

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
