Ext.define('App.controller.info.IndexInfo', {
	extend : 'Ext.app.Controller',
	refs : [ {
		ref : 'infoForm',
		selector : 'infoForm'
	} ],
	init : function() {
		this.control({
			'infoForm > toolbar > button[action="submit"]' : {
				click : this.onSubmitClick
			}
		});
	},
	onSubmitClick : function(button) {
		var form = Ext.ComponentQuery.query('panel[id="info-form"]')[0];
		if (form.getForm().isValid()) {
			form.getEl().mask('正在提交...');
			form.getForm().submit({
				url : contextPath + '/manage/info/update',
				success : function(obj, data) {
					Ext.example.msg('提示', '成功！');
					form.getEl().unmask();
				},
				failure : function(obj, data) {// json里面必须需要success才认为是成功，这里不传该参数
					Ext.example.msg('提示', '失败！');
					form.getEl().unmask();
				}
			});
		}
	}
});