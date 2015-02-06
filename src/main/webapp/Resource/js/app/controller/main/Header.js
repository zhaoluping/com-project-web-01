Ext.define('Main.controller.main.Header', {
	extend : 'Ext.app.Controller',
	refs : [ {
		ref : 'main_header',
		selector : 'main_header'
	} ],
	init : function() {
		this.control({
			'main_header > toolbar > button[action="changePass"]' : {
				click : this.onChangePassClick
			},
			'main_header > toolbar > button[action="logout"]' : {
				click : this.onLogoutClick
			},
			'main_header > toolbar > button[action="info"]' : {
				click : this.onInfoClick
			}
		});
	},
	onChangePassClick : function(button) {
		var tempWin = Ext.create('Ext.window.Window', {
			title : '修改密码',
			modal : true,
			header : {
				titlePosition : 2,
				titleAlign : 'center'
			},
			closable : true,
			closeAction : 'destroy',
			width : 300,
			height : 180,
			layout : 'fit',
			items : [ {
				xtype : 'form',
				id : 'pass_change_form',
				bodyPadding : 10,
				border : false,
				defaults : {
					xtype : 'textfield',
					anchor : '100%',
					selectOnFocus : true,
					msgTarget : 'side',
					labelWidth : 75
				},
				items : [ {
					name : 'oldPassword',
					fieldLabel : '旧密码',
					inputType : 'password',
					allowBlank : false
				}, {
					name : 'newPassword',
					fieldLabel : '新密码',
					inputType : 'password',
					allowBlank : false
				}, {
					name : 'repeatPassword',
					fieldLabel : '重复密码',
					inputType : 'password',
					allowBlank : false
				} ]
			} ],
			bbar : [ '->', {
				text : '提交',
				handler : function() {
					var form = Ext.getCmp('pass_change_form');
					if (form.getForm().isValid()) {
						tempWin.getEl().mask('正在提交...');
						form.getForm().submit({
							url : contextPath + '/manage/view/change/pass',
							success : function(obj, data) {
								Ext.example.msg('提示', '成功！');
								tempWin.getEl().unmask();
								tempWin.close();
								location.href = contextPath + '/manage/view/do/logout';
							},
							failure : function(obj, data) {// json里面必须需要success才认为是成功，这里不传该参数
								Ext.example.msg('提示', '失败！' + data.result.msg);
								tempWin.getEl().unmask();
							}
						});
					}
				}
			} ]
		}).show();
	},
	onLogoutClick : function(button) {
		Ext.MessageBox.confirm('提示', '是否退出？', function(btn) {
			if (btn == "no" || btn == "cancel") {
				return;
			}
			location.href = contextPath + '/manage/view/do/logout';
		});
	},
	onInfoClick : function(button) {
		Ext.MessageBox.alert('提示', 'V1.0--旗舰版<br />V1.1--旗舰版 菜单节点支持无限制扩展');
	}
});