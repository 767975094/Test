<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>添加检测参数</title>
</head>
<body>
	<!-- 添加设备 start-->
	<script type="text/javascript">
$().ready(function() {
 $("#addelementForm").validate();
});
</script>
	<form id="addelementForm"
		action="<%=request.getContextPath()%>/device/element/device_save?ghId=<%=request.getSession().getAttribute("ghId")%>"
		method="post">
		<div style="width: 60%; margin: 20px auto;">
			<table class="table table-bordered table-condensed">
				<tr>
					<td class="text-center" style="width: 30%;">
				<tr>
					<td class="text-center">检测元素名称:</td>
					<td><input type="text" id="Element_nam" name="Element_nam"
						class="required form-control"></td>
				</tr>
				<tr>
					<td class="text-center">检测元素类型:</td>
					<td><input type="text" id="Type" name="Type"
						class="required form-control"></td>
				</tr>
				<tr>
					<td class="text-center">检测 频 率:</td>
					<td><input type="text" id="Element_rate" name="Element_rate"
						class="required number form-control"></td>
				</tr>
				<tr>
					<td class="text-center">单 位:</td>
					<td><input type="text" id="Element_unit" name="Element_unit"
						class="required form-control"></td>
				</tr>
				<tr>
					<td class="text-center">偏 &nbsp移&nbsp 量:</td>
					<td><input type="text" id="Element_offset"
						name="Element_offset" class="required number form-control"></td>
				</tr>
				<tr>
					<td class="text-center">数 据类 别:</td>
					<td><input type="text" id="Data_type" name="Data_type"
						class="required form-control"></td>
				</tr>
				<tr>
					<td class="text-center"><input type="submit" value="添加"
						class="btn bcm tcw"></td>
					<td><input type="button" value="返回"
						onclick="javascript:history.back(-1)" class="btn bcm tcw"></td>
				</tr>
			</table>
		</div>
	</form>
	<!-- 添加设备 end -->
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