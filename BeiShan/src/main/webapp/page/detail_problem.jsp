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
			<div id="login_block_div" style="width:100px;height:100%;float:right;">
				<%
					Object name = null;
					if((name = session.getAttribute("loginUser")) == null){
				%>
				<!-- 未登录 -->
				<div id="not_login" style="display:block;width:100%;height:100%;">
					<span style="display:block;margin:13px 10px; width:100%;height:100%;text-align:center;color:#666666;"><a id="login_a" href="javascript:void(0)" style="color:#666666">登录</a>/<a id="register_a" href="javascript:void(0)" style="color:#666666">注册</a></span>
				</div>
				<%
					}else{
				%>
				<!-- 登录成功 -->
				<div id="yi_login" style="width:100%;height:100%;display:block;">
					<div  style="width:100px; height:40px;  display:block;margin-top:4px; position:relative;">
						<div id="user_menu" style="width:100%;height:50px;">
							<img id="user_menu_img" style=" border:1px solid #CCCCCC;width:40px; height:40px;border-radius:20px;" src="${loginUser.user_logo}"/>
							<div id="user_menu_div" style="display:none;width:250px;height:310px;background:#FFF;position:absolute;top:45px; right:0px;box-shadow:5px 5px 10px #999999;">
								<!-- 上部头像和用户名余额块 -->
								<div style="width:100%; height:120px; ">
									<!-- 头像块 -->
									<div style="width:35%; height:100%;float:left; position:relative;">
										<span style=" position:absolute; top:30px; left:20px;display:inline-block;width:72px; height:72px; ">
										<img style="width:100%; height:100%;border-radius:36px; border:1px solid #666666;" src="${loginUser.user_logo}"/></span>
									</div>
									<div style="width:65%; height:100%;float:right;">
										<span style="float:left;overflow:hidden;font-size:14px; font-weight:bold;padding-top:12px;margin-top:30px;width:80%; height:20%; display:inline-block;">${loginUser.user_username}</span>
										<span style="float:left;color:#666666;font-size:12px;width:80%;padding-top:5px;height:25%; display:inline-block;">积分余额：<span style="color:#999999;">${loginUser.user_balance}</span></span>
									</div>
								</div>
								<!-- 功能分块 -->
								<div style="width:100%;height:100px; background:#FFF;">
									<span style="font-size:12px;color:#666666;margin:3px;width:40%; padding:8px 0px; display:inline-block; background:#E7EDF5;">我的发布</span>
									<span style="font-size:12px;color:#666666;margin:3px;width:40%; padding:8px 0px; display:inline-block; background:#E7EDF5;">我的参与</span>
									<span style="font-size:12px;color:#666666;margin:3px;width:40%; padding:8px 0px; display:inline-block; background:#E7EDF5;">个人设置</span>
									<span style="font-size:12px;color:#666666;margin:3px;width:40%; padding:8px 0px; display:inline-block; background:#E7EDF5;">帮&nbsp;&nbsp;助</span>
								</div>
								<!-- 个性签名块  box-shadow:5px 5px 10px #999999; -->
								<div style="width:80%;height:45px; overflow:hidden; text-align:center; margin-left:10%; border-bottom:1px solid #CCCCCC;">
									<span style="color:#666666; font-size:12px;">个性签名：</span><span style="color:#666666; font-size:12px;">不要相信人言的左右，要相信自己的判断。</span>
								</div>
								<!-- 安全退出 -->
								<div style="width:100%;height:30px;">
									<span style="display:block; float:right; padding-top:15px; color:#666666; font-size:12px;margin-right:10%;">安全退出</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
			
		</div>
	</div>
</header>

<article style="width:100%; height:1400px; position:relative;">
	<div style="width:70%;height:800px;margin-left:15%;vertical-align:middle;"> 
		<div style="width:100%;height:200px;position:relative;top:70px;">
			<span style="display:inline-block; width:100px; height:35px;overflow:hidden;margin:12px 10px 0px 10px; float:left;color:#666666;font-size:18px; font-weight:bold; bottom:5px;">问题详情</span>
			<div style="width:100%;height:300px;background:#F4F4F4;float:left; overflow:hidden;border-radius:15px; border:1px solid #666666;">
					<textarea style=" font-size:14px;background:#F4F4F4;width:97%;height:97%; border:none;"></textarea>
			</div>
		</div>
		
		<div style="width:100%;height:200px;position:relative;top:100px;">
			<div style="width:100%;height:100%; border-bottom:2px solid #666666; margin-bottom:30px;">
				<span style="display:inline-block; width:100px; height:35px;overflow:hidden;margin:12px 10px 0px 10px; float:left;color:#666666;font-size:18px; font-weight:bold; bottom:5px; display:block;">解决方案</span><!--<span style="width:20px;float:left;">赞</span>-->
			</div>
			
			<!-- 解决方案列表-->
			<div style="width:100%; height:20px;">
				<div style="width:100%; height:30px; display:inline-block; float:left;">
					<!--头像-->
					<span style="width:30px; height:100%; background:blue; float:left; margin-left:20px; border-radius:15px; "></span>
					<!--用户名-->
					<span style="float:left; margin-left:10px; margin-top:5px;">admin</span>
					<!--赞-->
					<span style="float:right; font-size:12px;color:#666666; margin-top:5px; margin-right:30px;"><a>赞</a><span>(0)</span></span>
					<!--发表时间-->
					<span style="float:right; font-size:12px;color:#666666; margin-top:5px; margin-right:30px;">2017/8/30 16:15</span>
				</div>
				<div style="width:100%;">
					<span style="padding:10px 20px; width:96%; background:#F4F4F4; text-align:justify; float:left;margin-bottom:20px; border-bottom:1px dashed #333333;">测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案</span>
				</div>
			</div>
			<!-- 解决方案列表-->
			<div style="width:100%; height:20px;">
				<div style="width:100%; height:30px; display:inline-block; float:left;">
					<!--头像-->
					<span style="width:30px; height:100%; background:blue; float:left; margin-left:20px; border-radius:15px; "></span>
					<!--用户名-->
					<span style="float:left; margin-left:10px; margin-top:5px;">admin</span>
					<!--赞-->
					<span style="float:right; font-size:12px;color:#666666; margin-top:5px; margin-right:30px;"><a>赞</a><span>(0)</span></span>
					<!--发表时间-->
					<span style="float:right; font-size:12px;color:#666666; margin-top:5px; margin-right:30px;">2017/8/30 16:15</span>
				</div>
				<div style="width:100%;">
					<span style="padding:10px 20px; width:96%; background:#F4F4F4; text-align:justify; float:left;margin-bottom:20px; border-bottom:1px dashed #333333;">测试案例解决方案测试案例解决方案测试案例解决方解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案</span>
				</div>
			</div>
			<!-- 解决方案列表-->
			<div style="width:100%; height:20px;">
				<div style="width:100%; height:30px; display:inline-block; float:left;">
					<!--头像-->
					<span style="width:30px; height:100%; background:blue; float:left; margin-left:20px; border-radius:15px; "></span>
					<!--用户名-->
					<span style="float:left; margin-left:10px; margin-top:5px;">admin</span>
					<!--赞-->
					<span style="float:right; font-size:12px;color:#666666; margin-top:5px; margin-right:30px;"><a>赞</a><span>(0)</span></span>
					<!--发表时间-->
					<span style="float:right; font-size:12px;color:#666666; margin-top:5px; margin-right:30px;">2017/8/30 16:15</span>
				</div>
				<div style="width:100%;">
					<span style="padding:10px 20px; width:96%; background:#F4F4F4; text-align:justify; float:left;margin-bottom:20px; border-bottom:1px dashed #333333;">测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案测试案例解决方案</span>
				</div>
			</div>
			
			<!-- 翻页功能 -->
			<div style="width:100%;height:50px; font-size:14px; color:#666666;">
				<span style="padding-right:20px; float:right;">尾页</span><span style="padding-right:20px; float:right;">下一页</span><span style="padding-right:20px; float:right;">上一页</span><span style="padding-right:20px; float:right;">首页</span>
			</div>
			
			<!-- 发布输入框-->
			<div style=" margin-top:50px;width:100%;height:200px;background:#F4F4F4;float:left; overflow:hidden;border-radius:15px; border:1px solid #666666;">
					<textarea style=" font-size:14px;background:#F4F4F4;width:97%;height:97%; border:none;"></textarea>
			</div>
			<div style="width:100%;height:60px;position:relative;top:15px;">
				<span style="display:inline-block; width:80px; height:35px;overflow:hidden;margin:6px 10px; float:right;border-radius:10px; border:1px solid #666666;"><a style="color:#FFFFFF; display:block;width:100%;height:100%;  background:#666666; font-size:18px; padding-top:5px;">发表</a></span>
			</div>
		</div>
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
