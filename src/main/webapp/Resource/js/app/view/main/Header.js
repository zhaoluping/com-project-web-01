Ext.define('Main.view.main.Header', {
	extend : 'Ext.panel.Panel',
	alias : 'widget.main_header',
	layout : 'border',
	id : 'header-panel',
	requires : [ 'Main.view.main.Clock' ],
	region : 'north',
	height : 50,
	border : false,
	bodyStyle : {
		background : '#59c46c'
	// background : 'url(' + contextPath + '/Resource/images/main/header-bg.png)
	// repeat-x left top'
	},
	items : [ {
		region : 'north',
		border : false,
		html : '<h1 style="text-indent:20px;padding-top:5px;font-size:20px;font-weight:bold;color:#FFF;">后台系统</h1>',
		bodyStyle : {
			background : 'none'
		}
	}, {
		region : 'south',
		xtype : 'toolbar',
		cls : 'header_toolbar',
		border : false,
		items : [/* user + '，欢迎你！', */'->', {
			xtype : 'main_clock',
			style : {
				color : '#FFF'
			}
		}, '-', {
			text : '版本信息',
			action : 'info'
		} ],
		style : {
			background : 'none'
		}
	} ],
	initComponent : function() {
		this.callParent();
	}
});