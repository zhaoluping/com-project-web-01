<%@ page pageEncoding="UTF-8"%>
<%@ include file="/View/jsp/normal/manage/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<%@ include file="/View/jsp/normal/manage/ext.jsp"%>
<script type="text/javascript">
	Ext.application({
		name : 'App',
		appFolder : appFolderPath,
		stores : [],
		controllers : [ 'info.IndexInfo' ],
		views : [],
		launch : function() {
			Ext.create('App.view.info.Viewport');
		}
	});
</script>
</head>
<body>
</body>
</html>