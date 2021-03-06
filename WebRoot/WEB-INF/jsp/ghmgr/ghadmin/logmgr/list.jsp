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
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<title>栽培管理日志 - 查看</title>
</head>
<body>
	<div class="w11 center-block">
		<h3 class="h3">日志查看</h3>
		<table class="table table-bordered table-hover">
			<tr>
				<th>编号</th>
				<th>种植批次</th>
				<th>农作物生长描述</th>
				<th>栽培管理时间</th>
				<th>栽培管理内容</th>
				<th>管理人</th>
			</tr>

			<c:forEach items="${pager.list}" var="i">
				<tr>
					<td>${i.record_id }</td>
					<td>${i.crop_no }</td>
					<td>${i.crop_caption }</td>
					<td><fmt:formatDate value="${i.record_time }"
							pattern="yyyy-MM-dd HH:mm" /></td>
					<td>${i.content }</td>
					<td>${i.record_user }</td>
					<td></td>
				</tr>
			</c:forEach>
		</table>
		<div id="page"></div>
		<div style="position: absolute; right: 20px; width: 100px;">
			<input type="button" class="btn bcm tcw" value="添加日志"
				onclick="location='<%=request.getContextPath()%>/ghmgr/ghadmin/log/add'">
		</div>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/assets/laypage/laypage.js"></script>
		<script>
function del(id){
	if(confirm('确定删除？')){
		$.get('delete',{id:id},function(data){
			if(data){
				alert('删除成功');
				location.reload();
			}
			else{
				alert('删除失败');
			}
		},'json');
	}
}
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
	</div>
</body>
</html>