Ext.define('Main.store.main.Menu', {
	extend : 'Ext.data.TreeStore',
	proxy : {
		type : 'ajax',
		url : contextPath + '/manage/tree/node'
	},
	root : {
		text : '',
		id : '0',
		expanded : true
	}
});