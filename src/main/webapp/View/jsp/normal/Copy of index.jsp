<%@ page pageEncoding="UTF-8"%>
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
			<dd class="hot">报名热线:010-12345648</dd>
			<dd class="iwantsignup">
				<a href="javascript:void(0);" id="qrcode-show">我要参加</a>
				<img class="qrcode" alt="" src="${pageContext.request.contextPath}/Resource/images/qrcode.png">
			</dd>
			<dd>
				<a href="#article">节目介绍</a>
			</dd>
			<dd><a href="javascript:void(0);">首页</a></dd>
		</dl>
		<h1 class="logo">
			<span class="signup"></span>
		</h1>
		<div class="header-center">
			<div class="memo"></div>
			<ul class="person-list">
				<li>
					<img src="${pageContext.request.contextPath}/Resource/images/header_01.jpg" />
					<p class="name">刘女士</p>
					<p class="address">在河北蔚县</p>
					<p class="intro">吃到了传说中的蔚州特别讲究而又阔绰的名肴“八大碗”,名不虚传，亲们一起来吧….</p>
					<span class="time">2015-01-15</span>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/Resource/images/header_02.jpg" />
					<p class="name">张先生</p>
					<p class="address">在北京郊区</p>
					<p class="intro">哇卡卡！！！ 唯我独尊！！！今天的真人CS、密室逃脱、寻宝谁能胜我？！</p>
					<span class="time">2015-01-15</span>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/Resource/images/header_03.jpg" />
					<p class="name">肖女士</p>
					<p class="address">在河北涿鹿</p>
					<p class="intro">天高气爽，一边脱离城市的喧嚣呼吸着新鲜的空气，一边享受节目组提供的各种美食与活动，太棒了！希望能再次参加！</p>
					<span class="time">2015-01-15</span>
				</li>
				<!-- <li class="person-more">查看更多>></li> -->
			</ul>
		</div>
	</div>
	<div class="article" id="article">
		<h2>节目介绍</h2>
		<p>旅游，归其本质为行走，行百里者，看周边事。行千里者，阅世间情，行万里者，穷天下经。电视是一种记录行走的最阿红载体。二电视本身也是最好的一种文化行走行为。它可以在行走中记录，在行走中见证，在行走中体验，在行走中传播。</p>
	</div>
	<ul class="video-list">
		<li class="video-list-a" lang="http://my.tv.sohu.com/us/242026487/77516086.shtml">
			<img src="${pageContext.request.contextPath}/Resource/images/video1.jpg" />
			<p>我是小小旅行家</p>
		</li>
		<li class="video-list-b" lang="http://v.youku.com/v_show/id_XODYxMTA4NjQ0.html">
			<img src="${pageContext.request.contextPath}/Resource/images/video2.jpg" />
			<p>我是小小旅行家</p>
		</li>
		<li class="video-list-c" lang="http://v.qq.com/boke/page/m/0/h/m0144m6d17h.html">
			<img src="${pageContext.request.contextPath}/Resource/images/video3.jpg" />
			<p>我是小小旅行家</p>
		</li>
		<!-- <li class="video-more">
			<a href="">查看更多>></a>
		</li> -->
	</ul>
	<div id="footer">
		<div class="footer-center">
			<div class="wechat">
				<img alt="" src="${pageContext.request.contextPath}/Resource/images/wechat.jpg" />
				<p>关注微信</p>
				<p>进行报名</p>
			</div>
			<div class="rego">重新出发吧</div>
			<div class="copyright">
				<p>电话：010-121565481&nbsp;&nbsp;&nbsp;&nbsp;传真&nbsp;:&nbsp;010-12151351315&nbsp;&nbsp;&nbsp;&nbsp;微信号&nbsp;:&nbsp;sdffesfe010&nbsp;&nbsp;&nbsp;&nbsp;报名热线:010-123156000.05</p>
				<p>地址：北京市东城区安定门东大街28号雍和大厦D座1005室(5号线地铁雍和宫,2号线雍和宫B口往东50米)</p>
				<p>京ICP：1234561505号</p>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/Resource/js/script.js"></script>
</body>
</html>