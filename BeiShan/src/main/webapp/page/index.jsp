<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<base href="/BeiShan/">
<meta charset="utf-8">
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="/BeiShan/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
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
	text-decoration:none !important;
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
</head>

<body>

<!--顶部固定模块-->
<jsp:include page="./header.jsp"></jsp:include>


<!--登录模块-->
<jsp:include page="./loginAndRegister_Div.jsp"></jsp:include>

<!-- 注销模块 -->
<jsp:include page="./isZhuxiao.jsp"></jsp:include>

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
	<!-- bootstarp包括所有已编译的插件 -->
	<script src="bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
	<!-- 用户功能模块功能js -->
	<script type="text/javascript" src="js/login_user_menu.js"></script>
	<!-- 注册与登录框js动态调整 -->
	<script type="text/javascript" src="js/register_login.js"></script>
	<!-- 实现注册功能js -->
	<script type="text/javascript" src="js/register_form_1.js"></script>
	<!-- 实现用户login/注销等功能js -->
	<script type="text/javascript" src="js/login_form.js"></script>
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
