<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link href="${pageContext.request.contextPath}/Resource/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/Resource/css/style.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/Resource/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/Resource/js/require.js"></script>
</head>
<body>
	<img alt="" src="${pageContext.request.contextPath}/Resource/images/body.bg.jpg" id="body-bg" />
	<div id="header">
		<dl class="nav">
			<dt></dt>
			<dd class="hot">报名热线:${info.hotLine}</dd>
			<dd class="iwantsignup">
				<a href="javascript:void(0);" id="qrcode-show">我要参加</a>
				<img class="qrcode" alt="" src="${pageContext.request.contextPath}/Resource/images/qrcode.png">
			</dd>
			<dd>
				<a href="#article">节目介绍</a>
			</dd>
			<dd>
				<a href="javascript:void(0);">首页</a>
			</dd>
		</dl>
		<h1 class="logo">
			<span class="signup"></span>
		</h1>
		<div class="header-center">
			<div class="memo"></div>
			<ul class="person-list">
				<li>
					<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listPerson1Img}" />
					<p class="name">${info.listPerson1Name}</p>
					<p class="address">在${info.listPerson1Address}</p>
					<p class="intro">${info.listPerson1Intro}</p>
					<span class="time">
						<fmt:formatDate value="${info.listPersonDate}" pattern="yyyy-MM-dd" />
					</span>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listPerson2Img}" />
					<p class="name">${info.listPerson2Name}</p>
					<p class="address">在${info.listPerson2Address}</p>
					<p class="intro">${info.listPerson2Intro}</p>
					<span class="time">
						<fmt:formatDate value="${info.listPersonDate}" pattern="yyyy-MM-dd" />
					</span>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listPerson3Img}" />
					<p class="name">${info.listPerson3Name}</p>
					<p class="address">在${info.listPerson3Address}</p>
					<p class="intro">${info.listPerson3Intro}</p>
					<span class="time">
						<fmt:formatDate value="${info.listPersonDate}" pattern="yyyy-MM-dd" />
					</span>
				</li>
				<!-- <li class="person-more">查看更多>></li> -->
			</ul>
		</div>
	</div>
	<div class="article" id="article">
		<h2>节目介绍</h2>
		<p>${info.intro}</p>
	</div>
	<ul class="video-list">
		<li class="video-list-a" lang="${info.listVideo1Link}">
			<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listVideo1Img}" />
			<p>${info.listVideo1Intro}</p>
		</li>
		<li class="video-list-b" lang="${info.listVideo2Link}">
			<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listVideo2Img}" />
			<p>${info.listVideo2Intro}</p>
		</li>
		<li class="video-list-c" lang="${info.listVideo3Link}">
			<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listVideo3Img}" />
			<p>${info.listVideo3Intro}</p>
		</li>
		<!-- <li class="video-more">
			<a href="">查看更多>></a>
		</li> -->
	</ul>
	<div id="footer">
		<div class="footer-center">
			<div class="wechat">
				<img alt="" src="${pageContext.request.contextPath}/Resource/file/info/${info.wechatImg}" />
				<p>关注微信</p>
				<p>进行报名</p>
			</div>
			<div class="rego">重新出发吧</div>
			<div class="copyright">
				<p>电话：${info.tel}&nbsp;&nbsp;&nbsp;&nbsp;传真&nbsp;:&nbsp;${info.fax}&nbsp;&nbsp;&nbsp;&nbsp;微信号&nbsp;:&nbsp;${info.wechat}&nbsp;&nbsp;&nbsp;&nbsp;报名热线:${info.hotLine}</p>
				<p>地址：${info.address}</p>
				<p>京ICP：${info.icp}</p>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/Resource/js/script.js"></script>
</body>
</html>