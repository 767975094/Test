<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<style>
.fontSize td, .fontSize th {
	font-size: 14px;
}
</style>
<title>全部作物模型库</title>
</head>
<body>
	<div class="w11 center-block">
		<%if ((String) request.getAttribute("msg") == "添加成功") {%>
		<script>alert("添加成功");</script>
		<%}%>
		<%if ((String) request.getAttribute("msg") == "编辑成功") {%>
		<script>alert("编辑成功");</script>
		<%}%>
		<%if ((String) request.getAttribute("msg") == "删除成功") {%>
		<script>alert("删除成功");</script>
		<%}%>
		<!-- 列表显示全部作物模型库start -->
		<c:if test="${empty pager.list}">
			<h3>系统中还没有作物模型库</h3>
			<a href="<%=request.getContextPath()%>/modellib/crop/add">添加模型库</a>
		</c:if>
		<c:if test="${not empty pager.list}">
			<h3 class="h3">全部作物模型库</h3>
			<table class="table table-bordered">
				<tr class="fontSize">
					<th>编号</th>
					<th>名称</th>
					<th>存储地址</th>
					<th>函数名称</th>
					<th>输入参数</th>
					<th>输出参数</th>
					<th>编辑</th>
					<th>删除</th>
				</tr>

				<c:forEach items="${pager.list}" var="modelbase">
					<tr class="fontSize">
						<td><c:out value="${modelbase.model_id}"></c:out></td>
						<td><c:out value="${modelbase.model_name}"></c:out></td>
						<td><c:out value="${modelbase.monitor_path}"></c:out></td>
						<td><c:out value="${modelbase.function}"></c:out></td>
						<td><c:out value="${modelbase.input}"></c:out></td>
						<td><c:out value="${modelbase.output}"></c:out></td>
						<td><a href="edit?Model_id=${modelbase.model_id}">编辑</a></td>
						<td><a href="delete?Model_id=${modelbase.model_id}">删除</a></td>
					</tr>
				</c:forEach>
			</table>
			<!-- 列表显示全部作物模型库end -->
			<!-- 分页start -->
			<div id="page"></div>
			<script src="<%=request.getContextPath()%>/assets/laypage/laypage.js"></script>
			<script type="text/javascript">
	laypage({
	    cont: 'page',
	    pages: '${pager.pageCount}', 
	    curr: '${pager.pageNumber}', 
	    jump: function(e, first){ 
	        if(!first){ 
	            location.href = '?pn='+e.curr;
	        }
	    }
	});
</script>
			<div style="position: absolute; right: 20px; width: 100px;">
				<input type="button" value="添加模型" class="btn bcm tcw"
					onclick="location='<%=request.getContextPath()%>/modellib/crop/add'">
			</div>
			<!-- 分页end -->
		</c:if>
	</div>
</body>
</html>
