Ext.define('App.view.info.Viewport', {
	extend : 'Ext.container.Viewport',
	layout : 'fit',
	id : 'info-viewport',
	requires : [ 'App.view.info.Form' ],
	initComponent : function() {
		this.items = [ {
			xtype : 'infoForm',
			border : false
		} ];
		this.callParent();
	}
});