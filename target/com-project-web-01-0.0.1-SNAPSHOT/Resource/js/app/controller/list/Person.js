Ext.define('App.controller.list.Person', {
	extend : 'Ext.app.Controller',
	refs : [ {
		ref : 'listGrid',
		selector : 'listGrid'
	} ],
	init : function() {
		this.control({
			'listGrid > toolbar > button[action="detail"]' : {
				click : this.onDetailClick
			},
			'listGrid > toolbar > button[action="check"]' : {
				click : this.onCheckClick
			},
			'listGrid > toolbar > button[action="download"]' : {
				click : this.onDownloadClick
			}
		});
	},
	onDetailClick : function(button) {
		var grid = Ext.ComponentQuery.query('panel[id="list-grid"]')[0];
		var selection = grid.getView().getSelectionModel().getSelection()[0];
		if (selection) {
			Ext.create('Ext.window.Window', {
				title : '详细信息',
				modal : true,
				closable : true,
				closeAction : 'destroy',
				x : 50,
				y : 50,
				width : 650,
				height : 350,
				layout : 'form',
				autoScroll : true,
				items : [ {
					xtype : 'displayfield',
					fieldLabel : '现住址',
					value : selection.data.address
				}, {
					xtype : 'displayfield',
					fieldLabel : '旅行经历',
					value : selection.data.exp
				}, {
					xtype : 'displayfield',
					fieldLabel : '视频地址',
					value : selection.data.video
				}, {
					xtype : 'displayfield',
					fieldLabel : '报名原因',
					value : selection.data.why
				}, {
					xtype : 'displayfield',
					fieldLabel : '状态说明',
					value : selection.data.statusMemo
				}, {
					xtype : 'image',
					alt : '近期照片',
					src : contextPath + '/Resource/file/photo/' + selection.data.photo,
					width : 200,
					height : 200
				}, {
					xtype : 'image',
					alt : '生活照',
					src : contextPath + '/Resource/file/livephoto/' + selection.data.livePhoto,
					width : 200,
					height : 200
				} ]
			}).show();
		} else {
			Ext.example.msg('提示', '至少选择一条！');
		}
	},
	onCheckClick : function(button) {
		var grid = Ext.ComponentQuery.query('panel[id="list-grid"]')[0];
		var selection = grid.getView().getSelectionModel().getSelection()[0];
		if (selection) {
			var win = Ext.create('Ext.window.Window', {
				title : '状态修改',
				modal : true,
				closable : true,
				closeAction : 'destroy',
				x : 50,
				y : 50,
				width : 300,
				height : 200,
				layout : 'form',
				autoScroll : true,
				items : [ {
					xtype : 'form',
					id : 'person_status_form',
					bodyPadding : 10,
					border : false,
					defaults : {
						xtype : 'textfield',
						anchor : '100%',
						selectOnFocus : true,
						msgTarget : 'side',
						labelWidth : 60
					},
					items : [ {
						xtype : 'hidden',
						name : 'mobile',
						value : selection.id
					}, {
						xtype : 'combo',
						name : 'status',
						fieldLabel : '状态',
						allowBlank : false,
						editable : false,
						queryMode : 'local',
						displayField : 'text',
						valueField : 'value',
						store : {
							fields : [ 'text', 'value' ],
							data : [ {
								'text' : '待审核',
								'value' : '待审核'
							}, {
								'text' : '线上审核未通过',
								'value' : '线上审核未通过'
							}, {
								'text' : '线上审核通过',
								'value' : '线上审核通过'
							}, {
								'text' : '面试通过',
								'value' : '面试通过'
							}, {
								'text' : '面试未通过',
								'value' : '面试未通过'
							}, {
								'text' : '排期中',
								'value' : '排期中'
							}, {
								'text' : '已上节目',
								'value' : '已上节目'
							} ]
						}
					}, {
						name : 'statusMemo',
						fieldLabel : '状态描述'
					} ]
				} ],
				bbar : [ '->', {
					text : '提交',
					handler : function() {
						var form = Ext.getCmp('person_status_form');
						if (form.getForm().isValid()) {
							win.getEl().mask('正在提交...');
							form.getForm().submit({
								url : contextPath + '/manage/person/status',
								success : function(obj, data) {
									Ext.example.msg('提示', '成功！');
									grid.getStore().load();
									win.getEl().unmask();
									win.close();
								},
								failure : function(obj, data) {// json里面必须需要success才认为是成功，这里不传该参数
									Ext.example.msg('提示', '失败！');
									win.getEl().unmask();
								}
							});
						}
					}
				} ]
			}).show();
		} else {
			Ext.example.msg('提示', '至少选择一条！');
		}
	},
	onDownloadClick : function(button) {
		window.location.href = contextPath + '/manage/ext/excel';
	}
});