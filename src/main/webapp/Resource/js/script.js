require([], function() {

	var Index = {
		videolist : $('.video-list'),
		init : function() {
			var self = this;
			// 视频跳转
			(function() {
				self.videolist.on('click', 'li', function() {
					var me = $(this);
					window.open(me.attr('lang'));
				});
			})();
			// 二维码显示
			var qrcode = $('.qrcode');
			$('#qrcode-show').hover(function() {
				qrcode.show();
			}, function() {
				qrcode.hide();
			});
		}
	};

	// 加载首页
	Index.init();

});