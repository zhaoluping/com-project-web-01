Ext.define('Main.view.main.Clock', {
	extend : 'Ext.toolbar.TextItem',
	alias : 'widget.main_clock',
	html : '&#160;',
	timeFormat : 'Y年m月d日 l H:i:s',
	tpl : '{time}',
	initComponent : function() {
		var me = this;
		me.callParent();
		if (typeof (me.tpl) == 'string') {
			me.tpl = new Ext.XTemplate(me.tpl);
		}
	},
	afterRender : function() {
		var me = this;
		Ext.Function.defer(me.updateTime, 100, me);
		me.callParent();
	},
	onDestroy : function() {
		var me = this;
		if (me.timer) {
			window.clearTimeout(me.timer);
			me.timer = null;
		}
		me.callParent();
	},
	updateTime : function() {
		var me = this, time = Ext.Date.format(new Date(), me.timeFormat), text = me.tpl.apply({
			time : time
		});
		if (me.lastText != text) {
			me.setText(text);
			me.lastText = text;
		}
		me.timer = Ext.Function.defer(me.updateTime, 1000, me);
	}
});