<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css"
	type="text/css"></link>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/font-awesome.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/admin.css"
	type="text/css"></link>
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<title>添加访客</title>
</head>
<body>
	<!-- 温室管理员添加访客 start-->
	<script type="text/javascript">
$().ready(function() {
 $("#iForm").validate();
});
</script>
	<form id="iForm" action="<%=request.getContextPath()%>/usermgr/save"
		method="post">

		<div style="width: 60%; margin: 20px auto;">
			<h3 class="h3">添加访客</h3>
			<table class="table table-bordered table-condensed">
				<tr>
					<td class="text-center" style="width: 30%;">访客账号:</td>
					<td><input type="text" id="Username" name="Username"
						class="required form-control"></td>
				</tr>
				<tr>
					<td class="text-center">密 码:</td>
					<td><input type="text" id="Password" name="Password"
						class="required form-control" minlength:6 maxlength:20></td>
				</tr>
				<tr>
					<td class="text-center">姓 名:</td>
					<td><input type="text" id="User_realname" name="User_realname"
						class="required form-control"></td>
				</tr>
				<tr>
					<td class="text-center">手机号码:</td>
					<td><input type="text" id="User_mobile" name="User_mobile"
						class="required number form-control"></td>
				</tr>
				<tr>
					<td class="text-center"><input type="submit" value="创建"
						class="btn bcm tcw"></td>
					<td><input type="button" value="返回"
						onclick="javascript:history.back(-1)" class="btn bcm tcw"></td>
				</tr>
			</table>
		</div>
	</form>
	<!-- 温室管理员添加访客 end -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/js/messages_zh.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/js/form-ajax.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/js/jquery.metadata.js"></script>
</body>
</html>
