Ext.define('Main.controller.main.Menu', {
	extend : 'Ext.app.Controller',
	refs : [ {
		ref : 'main_menu',
		selector : 'main_menu'
	} ],
	stores : [],
	init : function() {
		this.control({
			'main_menu' : {
				cellclick : this.onSelect
			}
		});
	},
	onSelect : function(obj, td, cellIndex, record, tr, rowIndex, e, eOpts) {
		if (record.data.leaf) {
			var container = Ext.ComponentQuery.query('panel[id="container-panel"]')[0];
			if (!container.contains(Ext.getCmp(record.data.id))) {
				var url = "";
				if (record.data.url.indexOf('http', 0) >= 0 || record.data.url.indexOf('https', 0) >= 0) {
					url = record.data.url;
				} else {
					url = contextPath + record.data.url;
				}
				container.add({
					id : record.data.id,
					title : record.data.text,
					closable : true,
					html : '<iframe width="100%" height="100%" frameborder="0" scrolling="auto" src="' + url + '"></iframe>'
				});
			}
			container.setActiveTab(record.data.id);
		}
	}
});