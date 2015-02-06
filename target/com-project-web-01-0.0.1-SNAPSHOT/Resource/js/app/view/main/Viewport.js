Ext.define('Main.view.main.Viewport', {
	extend : 'Ext.container.Viewport',
	layout : 'fit',
	id : 'main-viewport',
	requires : [ 'Main.view.main.Header', 'Main.view.main.Menu', 'Main.view.main.Container' ],
	initComponent : function() {
		this.items = {
			layout : 'border',
			//border : false,
			bodyStyle : {
				//background : '#add2ed'
			},
			defaults : {
				//border : false
			},
			items : [ {
				xtype : 'main_header'
			}, {
				xtype : 'main_menu'
			}, {
				xtype : 'main_container'
			} ]
		};
		this.callParent();
	}
});