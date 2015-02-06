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
		<a href="${pageContext.request.contextPath}/home" class="back">&nbsp;首页</a> 我要报名 <a href="javascript:void(0);" id="submit-a" class="submit">提交&nbsp;</a>
	</h1>
	<form id="signup-form" enctype="multipart/form-data" method="POST" action="${pageContext.request.contextPath}/do/signup">
		<section>
			<label for="nickname">
				姓名
				<span class="required">*</span>
			</label>
			<input type="text" name="nickname" id="nickname" placeholder="请输入" value="${person.nickname}" />
		</section>
		<section>
			<label for="sex">
				性别
				<span class="required">*</span>
			</label>
			<div class="select-section">
				<span>请选择</span>
				<select name="sex" id="sex">
					<option>男</option>
					<option>女</option>
				</select>
			</div>
		</section>
		<section>
			<label for="cred">
				证件类型
				<span class="required">*</span>
			</label>
			<div class="select-section">
				<span>请选择</span>
				<select name="cred" id="cred">
					<option>身份证</option>
					<option>护照</option>
				</select>
			</div>
		</section>
		<section>
			<label for="credNo">
				证件号
				<span class="required">*</span>
			</label>
			<input type="text" name="credNo" id="credNo" placeholder="请输入" value="${person.credNo}" />
		</section>
		<section>
			<label for="birthday">
				出生日期
				<span class="required">*</span>
			</label>
			<input type="date" name="birthday" id="birthday" placeholder="请输入" />
		</section>
		<section>
			<label for="qq">QQ号</label>
			<input type="number" name="qq" id="qq" pattern="[0-9]*" placeholder="请输入" value="${person.qq}" />
		</section>
		<section>
			<label for="wechat">
				微信号
				<span class="required">*</span>
			</label>
			<input type="text" name="wechat" id="wechat" placeholder="请输入" value="${person.wechat}" />
		</section>
		<section>
			<label for="mobile">手机号</label>
			<input type="tel" name="mobile" id="mobile" placeholder="请输入" value="${person.mobile}" readonly="readonly" />
		</section>
		<section>
			<label for="family">民族</label>
			<input type="text" name="family" id="family" placeholder="请输入" value="${person.family}" />
		</section>
		<section>
			<label for="education">最高学历</label>
			<!-- <div class="select-section">
				<span>请选择</span>
				<select name="education" id="education">
					<option>大专</option>
					<option>本科</option>
					<option>研究生</option>
					<option>博士</option>
				</select>
			</div> -->
			<input type="text" name="education" id="education" placeholder="请输入" value="${person.education}" />
		</section>
		<section>
			<label for="height">身高</label>
			<input type="number" name="height" id="height" pattern="[0-9]*" placeholder="请输入" value="${person.height}" />
		</section>
		<section>
			<label for="blood">血型</label>
			<input type="text" name="blood" id="blood" placeholder="请输入" value="${person.blood}" />
		</section>
		<section>
			<label for="census">户口所在地</label>
			<input type="text" name="census" id="census" placeholder="请输入" value="${person.census}" />
		</section>
		<section>
			<label for="address">现住址</label>
			<input type="text" name="address" id="address" placeholder="请输入" value="${person.address}" />
		</section>
		<section>
			<label for="urgent">
				紧急联系人
				<span class="required">*</span>
			</label>
			<input type="text" name="urgent" id="urgent" placeholder="请输入" value="${person.urgent}" />
		</section>
		<section>
			<label for="urgent-mobile">
				紧急联系人电话
				<span class="required">*</span>
			</label>
			<input type="tel" name="urgentMobile" id="urgent-mobile" placeholder="请输入" value="${person.urgentMobile}" />
		</section>
		<section>
			<label for="exp">您旅行经历（300字以上）</label>
			<textarea name="exp" id="exp" placeholder="请输入">${person.exp}</textarea>
		</section>
		<section>
			<label for="video">自我视频</label>
			<input type="url" name="video" id="video" placeholder="请输入" value="${person.video}" />
		</section>
		<section>
			<label for="why">为何报名（200字以上）</label>
			<textarea name="why" id="why" placeholder="请输入">${person.why}</textarea>
		</section>
		<section>
			<label for="sick">有无重大病史或家族遗传病</label>
			<!-- <div class="select-section">
				<span>请选择</span>
				<select name="sick" id="sick">
					<option>有</option>
					<option>无</option>
				</select>
			</div> -->
			<input type="text" name="sick" id="sick" placeholder="请输入" value="${person.sick}" />
		</section>
		<section>
			<label for="photo">近期照片</label>
			<div class="select-section select-file-section">
				<span>请选择</span>
				<input type="file" name="photo" id="photo" class="choose-photo" />
			</div>
		</section>
		<section>
			<label for="live-photo">生活照</label>
			<div class="select-section select-file-section">
				<span>请选择</span>
				<input type="file" name="livePhoto" id="live-photo" class="choose-photo" />
			</div>
		</section>
		<section class="msg">${msg}</section>
		<section class="footer"></section>
	</form>
	<script>
		$(".select-section").on("change", function() {
			var o;
			var opt = $(this).find('option');
			opt.each(function(i) {
				if (opt[i].selected == true) {
					o = opt[i].innerHTML;
				}
			});
			$(this).find('span').html(o);
		}).trigger('change');
		$(".select-file-section").on("change", function() {
			var o;
			var opt = $(this).find('.choose-photo');
			opt.each(function(i, item) {
				o = $(item)[0].value;
			});
			$(this).find('span').html(o);
		}).trigger('change');
		$('#submit-a').click(function() {
			$('#signup-form').submit();
		});
	</script>
</body>
</html>