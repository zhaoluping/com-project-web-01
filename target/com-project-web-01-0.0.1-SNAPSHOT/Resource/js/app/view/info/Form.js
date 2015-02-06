Ext.define('App.view.info.Form', {
	extend : 'Ext.form.Panel',
	xtype : 'infoForm',
	id : 'info-form',
	store : 'info.IndexInfo',
	columnLines : true,
	autoScroll : true,
	layout : 'anchor',
	bodyPadding : 50,
	defaults : {
		xtype : 'textfield',
		anchor : '100%',
		selectOnFocus : true,
		msgTarget : 'side',
		labelWidth : 90
	},
	items : [ {
		fieldLabel : '热线电话',
		name : 'hotLine'
	}, {
		xtype : 'filefield',
		fieldLabel : '第一个人头像',
		name : 'listPerson1Img',
		buttonText : '浏览...'
	}, {
		fieldLabel : '第一个人名称',
		name : 'listPerson1Name'
	}, {
		fieldLabel : '第一个人地址',
		name : 'listPerson1Address'
	}, {
		xtype : 'textareafield',
		fieldLabel : '第一个人介绍',
		name : 'listPerson1Intro'
	}, {
		xtype : 'filefield',
		fieldLabel : '第二个人头像',
		name : 'listPerson2Img',
		buttonText : '浏览...'
	}, {
		fieldLabel : '第二个人名称',
		name : 'listPerson2Name'
	}, {
		fieldLabel : '第二个人地址',
		name : 'listPerson2Address'
	}, {
		xtype : 'textareafield',
		fieldLabel : '第二个人介绍',
		name : 'listPerson2Intro'
	}, {
		xtype : 'filefield',
		fieldLabel : '第三个人头像',
		name : 'listPerson3Img',
		buttonText : '浏览...'
	}, {
		fieldLabel : '第三个人名称',
		name : 'listPerson3Name'
	}, {
		fieldLabel : '第三个人地址',
		name : 'listPerson3Address'
	}, {
		xtype : 'textareafield',
		fieldLabel : '第三个人介绍',
		name : 'listPerson3Intro'
	}, {
		xtype : 'datefield',
		fieldLabel : '人物设置日期',
		name : 'listPersonDate',
		format : 'Y-m-d'
	}, {
		xtype : 'textareafield',
		fieldLabel : '节目介绍',
		name : 'intro'
	}, {
		xtype : 'filefield',
		fieldLabel : '视频1图片',
		name : 'listVideo1Img',
		buttonText : '浏览...'
	}, {
		fieldLabel : '视频1介绍',
		name : 'listVideo1Intro'
	}, {
		fieldLabel : '视频1链接',
		name : 'listVideo1Link'
	}, {
		xtype : 'filefield',
		fieldLabel : '视频2图片',
		name : 'listVideo2Img',
		buttonText : '浏览...'
	}, {
		fieldLabel : '视频2介绍',
		name : 'listVideo2Intro'
	}, {
		fieldLabel : '视频2链接',
		name : 'listVideo2Link'
	}, {
		xtype : 'filefield',
		fieldLabel : '视频3图片',
		name : 'listVideo3Img',
		buttonText : '浏览...'
	}, {
		fieldLabel : '视频3介绍',
		name : 'listVideo3Intro'
	}, {
		fieldLabel : '视频3链接',
		name : 'listVideo3Link'
	}, {
		xtype : 'filefield',
		fieldLabel : '微信二维码',
		name : 'wechatImg',
		buttonText : '浏览...'
	}, {
		fieldLabel : '电话',
		name : 'tel'
	}, {
		fieldLabel : '传真',
		name : 'fax'
	}, {
		fieldLabel : '微信',
		name : 'wechat'
	}, {
		xtype : 'textareafield',
		fieldLabel : '地址',
		name : 'address'
	}, {
		xtype : 'textareafield',
		fieldLabel : 'ICP',
		name : 'icp'
	} ],
	buttons : [ {
		text : '提交',
		formBind : true,
		disabled : true,
		action : 'submit'
	} ],
	initComponent : function() {
		this.callParent();
	}
});