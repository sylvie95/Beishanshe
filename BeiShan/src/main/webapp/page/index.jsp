<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<header id="header" style=" position:relative; z-index:1000;">
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
			
			<!-- 搜索框 -->
			<div style="margin-top:10px;padding:1px;display:inline-block;width:220px;height:26px;border-radius:15px;border:1px solid #CCCCCC;">
				<input type="text" style="font-size:12px;color:#666666;border-top-left-radius:15px;border-bottom-left-radius:15px;width:80%;height:90%;border:none;float:left;"/>
				<span><img/></span>
			</div>
			
			
			<!-- 上部登录注册模块 -->
			<div id="login_block" style="width:100px;height:100%;float:right;">
				<!-- 未登录 -->
				<div style="display:block;width:100%;height:100%;">
					<span style="display:block;margin:13px 10px; width:100%;height:100%;text-align:center;color:#666666;"><a id="login_a" href="javascript:void(0)" style="color:#666666">登录</a>/<a id="register_a" href="javascript:void(0)" style="color:#666666">注册</a></span>
				</div>
				<!-- 登录成功 -->
				<div style="width:100%;height:100%;display:none;">
					<div  style="width:100px; height:40px;  display:block;margin-top:4px; position:relative;">
						<div id="user_menu" style="width:100%;height:50px;">
							<img id="user_menu_img" style=" border:1px solid #CCCCCC;width:40px; height:40px;border-radius:20px;" src="images/not_pic.jpg"/>
							<div id="user_menu_div" style="display:none;width:250px;height:310px;background:#FFF;position:absolute;top:45px; right:0px;box-shadow:5px 5px 10px #999999;">
								<!-- 上部头像和用户名余额块 -->
								<div style="width:100%; height:120px; ">
									<!-- 头像块 -->
									<div style="width:35%; height:100%;float:left; position:relative;">
										<span style=" position:absolute; top:30px; left:20px;display:inline-block;width:72px; height:72px; "><img style="width:100%; height:100%;border-radius:36px; border:1px solid #666666;" src="images/not_pic.jpg"/></span>
									</div>
									<div style="width:65%; height:100%;float:right;">
										<span style="float:left;overflow:hidden;font-size:14px; font-weight:bold;padding-top:12px;margin-top:30px;width:80%; height:20%; display:inline-block;">isolato_LSY</span>
										<span style="float:left;color:#666666;font-size:12px;width:80%;padding-top:5px;height:25%; display:inline-block;">积分余额：<span style="color:#999999;">5</span></span>
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
			</div>
		</div>
	</div>
</header>

<!--登录模块-->
<div id="login_register_div" style="display:none;">
	<!-- 登录 -->
	<div style="width:100%;height:100%; position:fixed; z-index:9999; background:#000; opacity:0.6;">
	
	</div>
	<div style="top:15%;left:37.5%;width:25%; position:fixed; z-index:100000; background:#FFF; ">
		<!--选项 -->
		<div style="width:100%;height:50px; background:#FFF;  text-align:center;opacity:none;">
			<div style="width:90%; height:97%; margin-left:5%; border-bottom:1px solid #CCCCCC;opacity: 1">
				<span><a id="login_xuanxaing_a" href="javascript:void(0)" style="font-size:18px;padding:18px 0px 1px;width:30%;height:60%;display:inline-block; float:left;color:#F01400;border-bottom:1px solid red;">登录</a></span>
				<span><a id="register_xuanxaing_a" href="javascript:void(0)" style="font-size:18px;padding:18px 0px 1px;width:30%;height:60%;display:inline-block; float:left;color:#8D7DA1;border-bottom:1px solid #CCCCCC;">注册</a></span>
				<img id="close_login_register_img" style="width:30px;height:30px; float:right;margin-top:10px; cursor:pointer;" src="images/body01.png"/>
			</div>
		</div>
		
		<!-- 登录输入框 -->
		<form id="login_form" style="display:none;">
			<div style="width:100%;height:230px; background:#FFF; text-align:center;">
				<input id="login_input" style="margin-top:20px;width:80%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="请输入登录手机号" />
				<label id="login_label" style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:none; text-align:justify;">请输入正确的手机号</label>
				<input id="login_password_input" maxlength="16" style="margin:20px 20px 0px 20px;;width:80%; height:30px; border:1px solid #CCCCCC;" type="password" placeholder="6-16位密码，区分大小写，不能用空格" />
				<label style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:none; text-align:justify;">请输入6-16位密码，区分大小写，不能使用空格！</label>
				<span style=" margin-top:5%;width:100%;height:30px; display:inline-block; float:left; vertical-align:middle;"><input style="margin-left:-40px;" type="checkbox"/><span style="font-size:14px;color:#787D82;">七天内自动登录</span><a href="#" style="font-size:14px;color:#787D82;width:30%;height:30px; float:right;margin-right:3%;">忘记密码</a></span>
				<input style="margin-top:10px;width:80%; height:50px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;" type="button" value="登录" />
			</div>
		</form>
		<!-- 注册form表单 -->
		<form id="register_form_1" style="display:;" method="POST">
			<div style="width:100%;height:200px; background:#FFF; text-align:center;">
				<input id="phoneNum_input" name="phoneNum" style="margin-top:20px;width:80%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="请输入注册手机号" />
				<label id="register_label" style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:none; text-align:justify;">请输入正确的手机号</label>
				<span style="width:80%;margin-left:10%; height:32px; display:block;margin-top:20px;">
					<input id="register_yanzhengma_input" name="yanzhengma" style="letter-spacing:1px;margin-right:20px;width:35%; height:30px; border:1px solid #CCCCCC; float:left;" type="text" placeholder="请输入验证码" />
					<!-- <span style="width:80px;height:100%; border:1px solid red; display:block; float:left;"></span> -->
					<img id="imgCode" src="code.jpg" style="width:80px;height:100%; display:block; float:left;"/>
					<img id="codeA" style="cursor:pointer;margin-top:-1px;margin-left:-20px;" src="images/shuaxin.png"/>
				</span>
				<label id="yanzhengma_label" style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:none; text-align:justify; float:left;">验证码错误！</label>
				<!-- <input style="margin-top:20px;width:80%; height:50px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;" type="submit" value="注册" /> -->
				<a onclick="register()" id="register_button_a" href="javascript:void(0)" style=" display:inline-block;margin-top:20px;padding:15px 115px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;">注册</a>
			</div>
		</form>
		<!-- 短信验证码输入 -->
		<form id="register_form_2" style="display:none;" method="POST">
			<div style="width:100%; height:60px; text-align:center;">
				<span style="margin-top:20px;display:block; width:80%; height:30px;margin-left:10%; font-size:16px;">填写短信验证码密码完成注册</span>
				<span style="display:block; width:80%; height:30px;margin-left:10%; font-size:12px; color:#777C81;">短信验证码已发送至<span id="phoneNum_span" style="font-size:12px;color:#EF1300;"></span></span>
			</div>
			<div style="width:100%;height:210px; background:#FFF; text-align:center; ">
				<input id="duanxinYanzhengma" name="duanxinYanzhengma" maxlength="6" style="margin-top:20px;width:52%; height:30px; border:1px solid #CCCCCC;" type="text" placeholder="请输入短信验证码" />
				<span style="cursor:pointer;vertical-align:middle;width:26%;height:30px;border:1px solid #CCCCCC; border-left:none; text-align:center; display:inline-block;padding-top:2px;margin-top:-1px;margin-left:-4px;">
				<!-- <a href="javascript:void(0)" style="padding:5px 10px; display:inline-block; color:#666666;font-size:12px;">重新发送</a> -->
				<input id="getMsgBtn" onclick="downTime()" style="width:80%;height:100%; border:none;background:#FFF;margin-left:10px;margin-left:-10px;font-size:12px;color:#666666;"  type="button" value="获取验证码"/>
				</span>
				<label id="duanxinYanzhengma_label" style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:none; text-align:justify;">请输入正确验证码</label>
				<span style="width:100%;margin-left:10%; height:30px; display:block;margin-top:20px;">
					<input maxlength="16" id="register_new_password" name="newPassword" style="margin-right:20px;width:80%; height:30px; border:1px solid #CCCCCC; float:left;" type="password" placeholder="6-16位密码，区分大小写，不能用空格" />
				</span>
				<label id="register_new_password_label" style="margin-left:10%;width:80%;height:0px;font-size:12px;color:#EF1300; display:none; text-align:justify; float:left;">请输入6-16位密码，区分大小写，不能用空格！</label>
				<!-- <input style="margin-top:30px;width:80%; height:50px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;" type="button" value="提交" /> -->
				<a onclick="register_setPwd()" id="register_form_2_button_a" href="javascript:void(0)" style=" display:inline-block;margin-top:20px;padding:15px 115px; background:#F01400; border:none; letter-spacing:5px; font-size:14px; color:#FFF;">提交</a>
			</div>
			<a href="javascript:void(0)" id="modifyPhoneNum_a" style="width:100%;height:30px; display:block; text-align:center;font-size:14px; color:#777C81;margin-bottom:10px;">返回修改手机号</a>
		</form>
		<div id="register_form_3" style="width:100%;height:300px; display:none;">
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
	<!-- 注册与登录框js动态调整 -->
	<script type="text/javascript" src="js/register_login.js"></script>
	<!-- 实现注册功能js -->
	<script type="text/javascript" src="js/register_form_1.js"></script>
	<!-- 用户功能模块功能js -->
	<script type="text/javascript" src="js/login_user_menu.js"></script>
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
