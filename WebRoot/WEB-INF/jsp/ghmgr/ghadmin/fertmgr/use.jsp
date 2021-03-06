<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>肥料使用</title>
</head>
<body>

	<!-- 添加使用记录 -->
	<form action="<%=request.getContextPath()%>/ghmgr/ghadmin/fert/use/add"
		method="post" success="操作成功" fail="操作失败"
		forward="<%=request.getContextPath()%>/ghmgr/ghadmin/fert/use"
		form-ajax>
		<div class="row">
			<div class="col-xs-2">
				<p>农作物批次号：</p>
				<select name="Crop_no">
					<option value="${shedCrop.crop_no }">${shedCrop.crop_no }[${shedCrop.crop.crop_name }]</option>
				</select>
			</div>
			<div class="col-xs-2">
				<p>肥料编号：</p>
				<select name="Fert_id">
					<c:forEach items="${fert }" var="i">
						<option value="${i.fert_id }">${i.fert_name }</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-xs-2">
				<p>肥料数量：</p>
				<input type="text" name="Fert_num" class="required number" />
			</div>
			<div class="col-xs-2">
				<p>施用时间：</p>
				<input type="text" name="Fert_time" class="laydate-icon"
					onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"
					placeholder="请输入日期" />
			</div>
			<div class="col-xs-2">
				<button type="submit" class="btn bcm tcw w8 mt20">提交</button>
			</div>

		</div>

	</form>

	<!-- 肥料使用记录 -->
	<h3 class="h3">肥料使用记录</h3>
	<table class="table table-bordered table-hover">
		<tr>
			<th>农作物批次编号</th>
			<th>肥料</th>
			<th>数量</th>
			<th>施用时间</th>
		</tr>

		<c:forEach items="${pager.list}" var="i">
			<tr>
				<td>${i.crop_no }</td>
				<td>${i.fertilizer.fert_name }</td>
				<td>${i.fert_num }</td>
				<td><fmt:formatDate value="${i.fert_time }"
						pattern="yyyy-MM-dd HH:mm" /></td>
			</tr>
		</c:forEach>
	</table>
	<div id="page"></div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/messages_zh.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/form-ajax.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/laypage/laypage.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/laydate/laydate.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<script>
$(function(){
		laypage({
	    cont: 'page',
	    pages: '${pager.pageCount}', 
	    curr: '${pager.pageNumber}', 
	    jump: function(e, first){ 
	        if(!first){ 
	            location.href = '?ps=${pager.pageSize}&pn='+e.curr;
	        }
	    }
	});
})
</script>

</body>
</html>