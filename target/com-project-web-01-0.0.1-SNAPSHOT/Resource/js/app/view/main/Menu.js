Ext.define('Main.view.main.Menu', {
	extend : 'Ext.tree.Panel',
	alias : 'widget.main_menu',
	id : 'menu-tree',
	title : '菜单',
	region : 'west',
	// margins : '0 7 0 0',
	border : false,
	width : 230,
	store : 'main.Menu',
	rootVisible : false,
	hideHeaders : true,
	collapsible : true,
	// split : true,
	viewConfig : {
		loadMask : true
	},
	style : {
		borderRight : '5px solid #59c46c'
	},
	columns : [ {
		xtype : 'treecolumn',
		dataIndex : 'text',
		width : 225
	} ],
	initComponent : function() {
		this.callParent();
	}
});