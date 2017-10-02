/*****************************  注册登录模块的js样式  *****************************/
//点击登录触发登录窗口
function login_a_open(){
	$("#login_register_div").css("display","block");
	$("#login_form").css("display","block");
	$("#register_form_1").css("display","none");
	$("#register_form_2").css("display","none");
	$("#register_form_3").css("display","none");
	changeLoginBorderColor();
}
//点击注册触发注册窗口
function register_a_open(){ 
	$("#login_register_div").css("display","block");
	$("#login_form").css("display","none");
	$("#register_form_1").css("display","block");
	$("#register_form_2").css("display","none");
	$("#register_form_3").css("display","none");
	changeRegisterBorderColor();
}

//点击关闭登录注册窗口
$("#close_login_register_img").click( 
	function(){ 
		claerInput();
		$("#login_register_div").css("display","none");
		$("#register_form_2").css("display","none");
		$("#register_form_3").css("display","none");
		$("#imgCode").attr("src", "code.jpg?" +  new  Date().getTime()  );
		//登录框清空
		$("#login_input").val("");
		$("#login_password_input").val("");
		//注册手机号和验证码框清空
		$("#phoneNum_input").val("");
		$("#register_yanzhengma_input").val("");
		//短信验证码和密码清空
		$("#duanxinYanzhengma").val("");
		$("#register_new_password").val("");
		$("#register_yanzhengma_input").val("");
//		window.location.reload(true);
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
	$("#duanxinYanzhengma").val("");
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

//注册新密码校验
$("#register_new_password").blur( 
	function () { 
		var password = $("#register_new_password").val();
		if(checkPassword(password)){
			//注册页面新密码设置校验
			$("#register_new_password_label").css("display","none");
		}else{
			$("#register_new_password_label").css("display","block");
		}
});
//两次密码输入不一致
$("#register_new_password_again").blur( 
	function () { 
		if($("#register_new_password").val()!=$("#register_new_password_again").val()){
			$("#register_new_password_again_label").css("display","block");
		}else{
			$("#register_new_password_again_label").css("display","none");
		}
});

//注册输入框手机号码校验
$("#phoneNum_input").blur( 
	function () { 
		var phoneNum = $("#phoneNum_input").val();
		var result = checkPhone(phoneNum);
		$("#register_label").css("display","none");
		if(result){
			$("#register_label").css("display","none");
	    	//校验手机号码是否存在
	    	$.ajax({
	    		url: "register/checkPhoneNumisExists",
	    		data: "phone="+phoneNum,
	    		cache: false,
	    		success: function(msg){
	    		  if(msg == null || msg == ""){
	    			  $("#register_label").css("display","none");
	    			  return true;
	    		  }else{
	    			  $("#register_label").text("手机号码已经被注册");
	    			  $("#register_label").css("display","block");
	    			  return false;
	    		  }
	    		}
			},"json");
		}else{
			$("#register_label").text("请输入正确的手机号");
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
    	$("#register_label").text("请输入正确的手机号");
    	$("#register_label").css("display","block");
        return false; 
    } else {
    	$("#register_label").css("display","none");
    	return true;
    }
}
