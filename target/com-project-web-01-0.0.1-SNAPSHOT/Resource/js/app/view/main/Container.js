Ext.define('Main.view.main.Container', {
	extend : 'Ext.tab.Panel',
	alias : 'widget.main_container',
	id : 'container-panel',
	region : 'center',
	// margins : '0 0 0 0',
	activeTab : 0,
	border : false,
	// bodyBorder : false,
	defaults : {
		layout : 'fit',
		border : false,
		autoScroll : false
	},
	items : [ {
		title : '首页',
		loader : {
			url : contextPath + '/manage/home',
			autoLoad : true,
			scripts : true,
			loadMask : true
		}
	} ],
	initComponent : function() {
		this.callParent();
	}
});