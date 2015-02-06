<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>重新出发吧</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- 
        width=device-width：让文档的宽度与设备的宽度保持一致，且文档最大的宽度比例是1.0
        initial-scale=1：初始的缩放比例
        maximum-scale=1：允许用户缩放到的最大比例（对应还有个minimum-scale）
        user-scalable=no：不允许用户手动缩放
-->
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
<!-- 
        telephone=no：禁止自动将页面中的数字识别为电话号码
        address=no：禁止自动地址转为链接
        email=no：禁止自动将email转为链接
-->
<meta name="format-detection" content="telephone=no,address=no,email=no" />
<!-- 强制将页面布局为一列 -->
<meta name="mobileOptimized" content="width" />
<!-- 申明页面是移动友好的 -->
<meta name="handheldFriendly" content="true" />
<!-- 允许用户使用全屏模式浏览 -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- 当用户使用全屏浏览时，将状态条设置为黑色 -->
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<link href="${pageContext.request.contextPath}/Resource/css/normalize.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/Resource/css/signup.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/Resource/js/jquery.min.js"></script>
<body>
	<h1>
		<a href="${pageContext.request.contextPath}/home" class="back">&nbsp;&lt;首页</a> 我要报名 <a href="${pageContext.request.contextPath}/register" id="register-a" class="register">注册&nbsp;</a>
	</h1>
	<form id="login-form" method="POST" action="${pageContext.request.contextPath}/do/login">
		<section>
			<label for="mobile">手机号</label>
			<input type="tel" name="mobile" id="mobile" placeholder="请输入" />
		</section>
		<section>
			<label for="password">密码</label>
			<input type="password" name="password" id="password" placeholder="请输入" />
		</section>
		<section class="msg">${msg}</section>
		<section>
			<button class="gb-button">登录</button>
		</section>
		<section class="footer"></section>
	</form>
</body>
</html>