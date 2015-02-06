Ext.define('App.store.list.PersonPage', {
	extend : 'Ext.data.Store',
	model : 'App.model.Person',
	pageSize : 20,
	autoLoad : true,
	proxy : {
		type : 'ajax',
		url : contextPath + '/manage/person/page',
		reader : {
			type : 'json',
			rootProperty : 'list',
			totalProperty : 'count'
		}
	}
});