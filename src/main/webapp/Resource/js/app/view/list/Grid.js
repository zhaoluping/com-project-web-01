Ext.define('App.view.list.Grid', {
	extend : 'Ext.grid.Panel',
	xtype : 'listGrid',
	id : 'list-grid',
	store : 'list.PersonPage',
	columnLines : true,
	autoScroll : true,
	columns : [ {
		text : '状态',
		dataIndex : 'status'
	}, {
		text : '昵称',
		dataIndex : 'nickname'
	}, {
		text : '性别',
		dataIndex : 'sex'
	}, {
		text : '证件',
		dataIndex : 'cred'
	}, {
		text : '证件号',
		dataIndex : 'credNo'
	}, {
		text : '生日',
		dataIndex : 'birthday'
	}, {
		text : 'QQ',
		dataIndex : 'qq'
	}, {
		text : '微信',
		dataIndex : 'wechat'
	}, {
		text : '手机',
		dataIndex : 'mobile'
	}, {
		text : '民族',
		dataIndex : 'family'
	}, {
		text : '教育',
		dataIndex : 'education'
	}, {
		text : '身高',
		dataIndex : 'height'
	}, {
		text : '血型',
		dataIndex : 'blood'
	}, {
		text : '户口所在地',
		dataIndex : 'census'
	}, {
		text : '紧急联系人',
		dataIndex : 'urgent'
	}, {
		text : '紧急联系人电话',
		dataIndex : 'urgentMobile'
	}, {
		text : '疾病',
		dataIndex : 'sick'
	}, {
		text : '创建时间',
		dataIndex : 'createTime',
		xtype : 'datecolumn',
		format : 'Y-m-d H:i',
		width : 130
	}, {
		text : '更新时间',
		dataIndex : 'updateTime',
		xtype : 'datecolumn',
		format : 'Y-m-d H:i',
		width : 130
	} ],
	bbar : [ {
		xtype : 'pagingtoolbar',
		store : 'list.PersonPage',
		dock : 'bottom',
		displayInfo : true
	}, '->', {
		text : '详细',
		action : 'detail'
	}, {
		text : '审核',
		action : 'check'
	}, {
		text : '下载',
		action : 'download'
	} ],
	initComponent : function() {
		this.callParent();
	}
});