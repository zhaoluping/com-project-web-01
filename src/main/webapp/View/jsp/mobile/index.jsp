<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script src="${pageContext.request.contextPath}/Resource/js/wow.min.js"></script>
<link href="${pageContext.request.contextPath}/Resource/css/normalize.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/Resource/css/animate.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/Resource/css/mobile.css" rel="stylesheet" />
<body>
	<section class="section-1">
		<h1 class="logo wow rotateIn"></h1>
		<span class="cloud cloud-1 wow fadeInRight">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/cloud_01.png">
		</span>
		<span class="cloud cloud-2 wow fadeInLeft">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/cloud_02.png">
		</span>
		<span class="cloud cloud-3 wow fadeInLeft">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/cloud_03.png">
		</span>
		<span class="cloud cloud-4 wow fadeInRight">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/cloud_04.png">
		</span>
	</section>
	<section class="section-2">
		<p class="wow slideInLeft">在于体验，像乘坐旋转木马，自己成为中心。</p>
		<p class="wow slideInLeft">看窗外的风景和人物不断变化；</p>
		<p class="wow slideInLeft">总有一天，我们又会重新回到</p>
		<p class="wow slideInLeft">——生活的嘉年华中去……</p>
	</section>
	<section class="section-3">
		<ul class="person-list">
			<li class="person-list-1">
				<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listPerson1Img}" />
				<p class="time wow fadeInRight">
					<fmt:formatDate value="${info.listPersonDate}" pattern="yyyy-MM-dd" />
				</p>
				<p class="address wow fadeInRight">在${info.listPerson1Address}</p>
				<p class="intro wow fadeInRight">${info.listPerson1Intro}</p>
			</li>
			<li class="person-list-2">
				<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listPerson2Img}" />
				<p class="time wow fadeInRight">
					<fmt:formatDate value="${info.listPersonDate}" pattern="yyyy-MM-dd" />
				</p>
				<p class="address wow fadeInRight">在${info.listPerson2Address}</p>
				<p class="intro wow fadeInRight">${info.listPerson2Intro}</p>
			</li>
			<li class="person-list-3">
				<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listPerson3Img}" />
				<p class="time wow fadeInRight">
					<fmt:formatDate value="${info.listPersonDate}" pattern="yyyy-MM-dd" />
				</p>
				<p class="address wow fadeInRight">在${info.listPerson3Address}</p>
				<p class="intro wow fadeInRight">${info.listPerson3Intro}</p>
			</li>
		</ul>
		<p class="signup-p-1 wow shake">
			<a href="${pageContext.request.contextPath}/login">我要报名>></a>
		</p>
		<span class="section-3-img1 wow fadeInLeft">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/cloud_05.png" />
		</span>
		<span class="section-3-img2 wow fadeInUp">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/balloon_01.png" />
		</span>
		<span class="section-3-img3 wow fadeInUp">
			<img alt="" src="${pageContext.request.contextPath}/Resource/images/mobile/balloon_02.png" />
		</span>
	</section>
	<section class="section-4">
		<section class="section-center section-center-1">
			<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listVideo1Img}" />
			<p class="wow zoomIn">${info.listVideo1Intro}</p>
		</section>
		<p class="signup-p-2 wow shake">
			<a href="${pageContext.request.contextPath}/login">我要报名>></a>
		</p>
	</section>
	<section class="section-5">
		<section class="section-center section-center-2">
			<img src="${pageContext.request.contextPath}/Resource/file/info/${info.listVideo2Img}" />
			<p class="wow zoomIn">${info.listVideo2Intro}</p>
		</section>
	</section>
	<section class="section-6">
		<p class="signup-p wow lightSpeedIn">
			<a href="${pageContext.request.contextPath}/login">我要报名>></a>
		</p>
		<p class="way-p wow lightSpeedIn">在路上...</p>
	</section>
	<script>
		wow = new WOW({
			animateClass : 'animated'
		});
		wow.init();
		document.querySelector(".section-1").style.height = document.body.clientHeight + "px";
	</script>
</body>
</html>