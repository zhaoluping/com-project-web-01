Ext.define('App.view.list.Viewport', {
	extend : 'Ext.container.Viewport',
	layout : 'fit',
	id : 'list-viewport',
	requires : [ 'App.view.list.Grid' ],
	initComponent : function() {
		this.items = [ {
			xtype : 'listGrid',
			border : false
		} ];
		this.callParent();
	}
});