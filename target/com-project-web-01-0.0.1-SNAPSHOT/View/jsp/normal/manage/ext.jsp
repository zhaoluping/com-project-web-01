<link href="${pageContext.request.contextPath}/Resource/js/extjs/ext-5.0.0/build/packages/ext-theme-crisp/build/resources/ext-theme-crisp-all.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/Resource/js/extjs/ext-5.0.0/build/shared/example.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/Resource/js/extjs/ext-5.0.0/build/ext-all.gzjs"></script>
<script src="${pageContext.request.contextPath}/Resource/js/extjs/ext-5.0.0/build/shared/examples.js"></script>
<script src="${pageContext.request.contextPath}/Resource/js/extjs/ext-5.0.0/build/packages/ext-locale/build/ext-lang-zh_CN.js"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
	var appFolderPath = contextPath + '/Resource/js/app';
	Ext.Loader.setPath('Ext.ux', contextPath + '/Resource/js/extjs/ext-5.0.0/ux');
	Ext.require([ 'Ext.ux.TreePicker' ]);
</script>