<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>浏览留言</h1>
		<a href="message.html">创建留言</a> | <a href="Logout.jsp">退出系统</a>
		<hr />
		<table width="700" border="0" cellpadding=5 cellspacing=1
			bgcolor=#ffffff>

			<tr align="center" bgcolor=#cccccc>
				<td width="200">标题</td>
				<td width="50"><a>作者</a></td>
				<td width="300">时间</td>
				<td width="100">操作</td>
			</tr>

			<c:forEach items="${messagelist }" var="ms">
				<tr align="center">
					<td>${ms.mstitle }</td>
					<td>${ms.msusername }</td>
					<td><fmt:formatDate value="${ms.msdate }"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td>${ms.mscontent }</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>