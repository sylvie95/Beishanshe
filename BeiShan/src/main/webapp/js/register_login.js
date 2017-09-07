/*****************************  注册登录模块的js样式  *****************************/
//点击登录触发登录窗口
$("#login_a").click( 
	function(){ 
		$("#login_register_div").css("display","block");
		$("#login_form").css("display","block");
		$("#register_form_1").css("display","none");
		$("#register_form_2").css("display","none");
		$("#register_form_3").css("display","none");
		changeLoginBorderColor();
});
//点击注册触发注册窗口
$("#register_a").click( 
	function(){ 
		$("#login_register_div").css("display","block");
		$("#login_form").css("display","none");
		$("#register_form_1").css("display","block");
		changeRegisterBorderColor();
});
//点击关闭登录注册窗口
$("#close_login_register_img").click( 
	function(){ 
		claerInput();
		$("#login_register_div").css("display","none");
});
//点击登录框上方的登录选项
$("#login_xuanxaing_a").click( 
	function(){ 
		$("#login_form").css("display","block");
		$("#register_form_1").css("display","none");
		$("#register_form_2").css("display","none");
		$("#register_form_3").css("display","none");
		changeLoginBorderColor();
});
//点击登录框上方的注册选项
$("#register_xuanxaing_a").click( 
	function(){ 
		$("#login_form").css("display","none");
		$("#register_form_1").css("display","block");
		$("#register_form_2").css("display","none");
		$("#register_form_3").css("display","none");
		changeRegisterBorderColor();
});

//清空输入框内容
function claerInput(){
	//登录账号框
	$("#login_input").val("");
	//登录密码框
	$("#login_password_input").val("");
	//注册手机号框
	$("#phoneNum_input").val("");
	//验证码框
	$("#register_yanzhengma_input").val("");
}
//改变登录窗口边框颜色
function changeLoginBorderColor(){
	//注册选项边框颜色
	$("#register_xuanxaing_a").css("color","#8D7DA1");
	$("#register_xuanxaing_a").css("border-bottom","1px solid #CCCCCC");
	//登录选项边框颜色
	$("#login_xuanxaing_a").css("color","#F01400");
	$("#login_xuanxaing_a").css("border-bottom","1px solid red");
}
//改变注册窗口边框颜色
function changeRegisterBorderColor(){
	//注册选项边框颜色
	$("#register_xuanxaing_a").css("color","#F01400");
	$("#register_xuanxaing_a").css("border-bottom","1px solid red");
	//登录选项边框颜色
	$("#login_xuanxaing_a").css("color","#8D7DA1");
	$("#login_xuanxaing_a").css("border-bottom","1px solid #CCCCCC");
}

/*****************************  js的手机正则校验  *****************************/
//登录输入框手机号码校验
$("#login_input").blur( 
	function () { 
		var phoneNum = $("#login_input").val();
		var result = checkPhone(phoneNum);
		if(result){
			$("#login_label").css("display","none");
		}else{
			$("#login_label").css("display","block");
		}
});
//密码输入框校验
$("#login_password_input").blur( 
	function () { 
		var password = $("#login_password_input").val();
		checkPassword(password);
});
//注册输入框手机号码校验
$("#phoneNum_input").blur( 
	function () { 
		var phoneNum = $("#phoneNum_input").val();
		var result = checkPhone(phoneNum);
		if(result){
			$("#register_label").css("display","none");
		}else{
			$("#register_label").css("display","block");
		}
});
//密码正则关系	请输入6-16位密码，区分大小写，不能使用空格！
function checkPassword(password){
	if(!(/^(\w){6,16}$/.test(password))){ 
        return false; 
    } else {
    	return true;
    }
}

//手机正则关系
function checkPhone(phoneNum){ 
    if(!(/^1[34578]\d{9}$/.test(phoneNum))){ 
        return false; 
    } else {
    	return true;
    }
}
