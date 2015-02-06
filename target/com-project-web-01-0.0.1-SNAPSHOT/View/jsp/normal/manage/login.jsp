<%@ page pageEncoding="UTF-8"%>
<%@ include file="/View/jsp/normal/manage/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Resource/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/Resource/js/toastr/toastr.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/Resource/css/login.css" media="screen" type="text/css" />
</head>
<body>
	<div id="window">
		<div class="page page-front">
			<div class="page-content">
				<div class="input-row">
					<label class="label fadeIn">邮箱</label>
					<input value="" id="email" type="text" autocomplete="off" data-fyll="pineapple" class="input fadeIn delay1" />
				</div>
				<div class="input-row">
					<label class="label fadeIn delay2">密码</label>
					<input value="" id="password" type="password" data-fyll="hackmeplease" class="input fadeIn delay3" />
				</div>

				<div class="input-row perspective">
					<button id="submit" class="button load-btn fadeIn delay4">
						<span class="default">
							登录
						</span>
						<div class="load-state">
							<div class="ball"></div>
							<div class="ball"></div>
							<div class="ball"></div>
						</div>
					</button>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/Resource/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/Resource/js/toastr/toastr.min.js"></script>
	<script>
		toastr.options = {
			"closeButton" : false,
			"debug" : false,
			"progressBar" : false,
			"positionClass" : "toast-top-center",
			"showDuration" : "300",
			"hideDuration" : "1000",
			"timeOut" : "5000",
			"extendedTimeOut" : "10001000",
			"showEasing" : "swing",
			"hideEasing" : "linear",
			"showMethod" : "fadeIn",
			"hideMethod" : "fadeOut"
		};
		$('#submit').click(function() {
			login();
		});
		$("body").keypress(function(e) {
			if (e.keyCode == 13) {
				login();
			}
		});
		function login() {
			var me = $('#submit');
			me.addClass('loading');
			if (!$('#email').val()) {
				me.removeClass('loading');
				toastr.error('请输入账号', '客官对不起');
				return;
			}
			if (!$('#password').val()) {
				me.removeClass('loading');
				toastr.error('请输入账号', '客官对不起');
				return;
			}
			$.ajax({
				type : 'POST',
				url : '${pageContext.request.contextPath}/manage/do/login',
				dataType : 'json',
				data : {
					email : $('#email').val(),
					password : $('#password').val()
				}
			}).done(function(data) {
				if (data.success) {
					location.href = '${pageContext.request.contextPath}/manage/main';
				} else {
					me.removeClass('loading');
					toastr.error(data.msg + '思密达', '客官对不起')
				}
			});
		}
		if (window.top !== window.self) {
			window.parent.location.reload();
		}
	</script>
</body>
</html>