Ext.define('App.model.Person', {
	extend : 'Ext.data.Model',
	idProperty : 'mobile',
	fields : [ {
		name : 'status',
		type : 'string'
	}, {
		name : 'nickname',
		type : 'string'
	}, {
		name : 'sex',
		type : 'string'
	}, {
		name : 'cred',
		type : 'string'
	}, {
		name : 'credNo',
		type : 'string'
	}, {
		name : 'birthday',
		type : 'string'
	}, {
		name : 'qq',
		type : 'string'
	}, {
		name : 'wechat',
		type : 'string'
	}, {
		name : 'mobile',
		type : 'string'
	}, {
		name : 'family',
		type : 'string'
	}, {
		name : 'education',
		type : 'string'
	}, {
		name : 'height',
		type : 'string'
	}, {
		name : 'blood',
		type : 'string'
	}, {
		name : 'census',
		type : 'string'
	}, {
		name : 'urgent',
		type : 'string'
	}, {
		name : 'urgentMobile',
		type : 'string'
	}, {
		name : 'sick',
		type : 'string'
	}, {
		name : 'createTime',
		type : 'string',
		convert : function(value) {
			return new Date(value);
		}
	}, {
		name : 'updateTime',
		type : 'string',
		convert : function(value) {
			return new Date(value);
		}
	} ]
});