<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String context = request.getContextPath();
%>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="format-detection" content="telephone=no">
	<script type="text/javascript" src="<%=context%>/jqtable/jquery.min.js"></script>
    <title>抽奖管理</title>
</head>
<body>
<div id="fanye">
<table>
<tr><th>编号</th> <th>名称</th><th>操作</th></tr>
<tr><td>1</td> <td>抽奖</td><td><input type="button" value="抽奖" onclick="dosomething('cjtest.do')"/></td></tr>
</table>
</div>
</body>
</html>

<script>  
	function dosomething(action) {
		alert(111);
		$.ajax({
	          type: "POST",
	          dataType: "html",
	          url: "<%=context%>/baobei/"+action,
			data : {},
			success : function(data) {
				var strresult = $.parseJSON(data);
				if (strresult.type == 'success') {
					alert("成功");
				}else{
					 alert(strresult.message);
				}
			},
			error : function(data) {
				alert("error:" + data.responseText);
			}
		});	
	}
</script>