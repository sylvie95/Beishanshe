package com.beishan.util;

public class StaticPeram {
	/**
	 * 手机验证部分配置
	 */
	// 设置超时时间-可自行调整
	final static String defaultConnectTimeout  = "sun.net.client.defaultConnectTimeout";
	final static String defaultReadTimeout = "sun.net.client.defaultReadTimeout";
	final static String Timeout = "10000";
	// 初始化ascClient需要的几个参数
	final static String product = "Dysmsapi";// 短信API产品名称（短信产品名固定，无需修改）
	final static String domain = "dysmsapi.aliyuncs.com";// 短信API产品域名（接口地址固定，无需修改）
	// 替换成你的AK (产品密)
	final static String accessKeyId = "LTAIYlI8pqDTB65d";// 你的accessKeyId,参考本文档步骤2
	final static String accessKeySecret = "SpZcH8ptthWBcQbUNtkCkZDRYJCBsS";// 你的accessKeySecret，参考本文档步骤2
	// 必填:短信签名-可在短信控制台中找到
	final static String SignName = "北山";
	// 必填:短信模板-可在短信控制台中找到
	final static String TemplateCode = "SMS_91945080";
	
	/**
	 * 图片上传模块
	 */
	//图片上传路径
	public static String UPLOAD_DIR ;
	public static final String UPLOAD_DIR_NAME="upload-Beishan";
	//上传的本地路径
	public static final String local_UPLOAD_DIR = "D:\\Tools\\apache-tomcat-8.0.41\\webapps\\upload-Beishan\\";
	
	
}
