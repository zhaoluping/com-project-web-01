<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<a href="${pageContext.request.contextPath}/signup" class="back">&nbsp;重新填写</a>报名信息<a href="${pageContext.request.contextPath}/home" id="right-a" class="right">首页&nbsp;</a>
	</h1>
	<section class="container">
		<section>
			<p class="status-show">
				<c:if test="${person.status == '待审核' || person.status == '线上审核通过' || person.status == '面试通过'}">待审核</c:if>
				<c:if test="${person.status == '线上审核未通过' || person.status == '面试未通过'}">审核未通过</c:if>
				<c:if test="${person.status == '排期中' || person.status == '已上节目'}">审核通过</c:if>
			</p>
		</section>
		<section>
			<p class="msg-show">姓名 : ${person.nickname}</p>
		</section>
		<section>
			<p class="msg-show">性别 : ${person.sex}</p>
		</section>
		<section>
			<p class="msg-show">证件类型 : ${person.cred}</p>
		</section>
		<section>
			<p class="msg-show">证件号 : ${person.credNo}</p>
		</section>
		<section>
			<p class="msg-show">出生日期 : ${person.birthday}</p>
		</section>
		<section>
			<p class="msg-show">QQ号 : ${person.qq}</p>
		</section>
		<section>
			<p class="msg-show">微信号 : ${person.wechat}</p>
		</section>
		<section>
			<p class="msg-show">手机号 : ${person.mobile}</p>
		</section>
		<section>
			<p class="msg-show">民族 : ${person.family}</p>
		</section>
		<section>
			<p class="msg-show">最高学历 : ${person.education}</p>
		</section>
		<section>
			<p class="msg-show">身高 : ${person.height}</p>
		</section>
		<section>
			<p class="msg-show">血型 : ${person.blood}</p>
		</section>
		<section>
			<p class="msg-show">户口所在地 : ${person.census}</p>
		</section>
		<section>
			<p class="msg-show">现住址 : ${person.address}</p>
		</section>
		<section>
			<p class="msg-show">紧急联系人 : ${person.urgent}</p>
		</section>
		<section>
			<p class="msg-show">紧急联系人电话 : ${person.urgentMobile}</p>
		</section>
		<section>
			<p class="msg-show">您旅行经历 : ${person.exp}</p>
		</section>
		<section>
			<p class="msg-show">自我视频 : ${person.video}</p>
		</section>
		<section>
			<p class="msg-show">为何报名 : ${person.why}</p>
		</section>
		<section>
			<p class="msg-show">有无重大病史或家族遗传病 : ${person.sick}</p>
		</section>
		<%-- <section>
			<p class="msg-show">近期照片 : ${person.photo}</p>
		</section>
		<section>
			<p class="msg-show">生活照 : ${person.livePhoto}</p>
		</section> --%>
		<section class="footer"></section>
	</section>
</body>
</html>