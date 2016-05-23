<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>标题：</td>
			<td>${message.mstitle }</td>
		</tr>
		<tr>
			<td>留言者：</td>
			<td>${message.msusername }</td>
		</tr>
		<tr>
			<td>时间：</td>
			<td>${message.msdate }</td>
		</tr>
		<tr>
			<td>内容：</td>
			<td>${message.mscontent }</td>
		</tr>
	</table>

	<hr />

	<c:forEach items="${replylist }" var="re">
		<table bgcolor="#98FB98">
			<tr>
				<td>回复者：</td>
				<td>${re.reusername }</td>
			</tr>
			<tr>
				<td>时间：</td>
				<td>${re.redate }</td>
			</tr>
			<tr>
				<td>回复内容：</td>
				<td>${re.recontent }</td>
			</tr>
		</table>
		<br />
	</c:forEach>

	<form method=post
		action="${pageContext.request.contextPath }/createre.action?id=${message.msid }">
		<!-- <input type=hidden name=mid value= /> -->
		<textarea rows="3" cols="60" name="reply.recontent"></textarea>
		<input type=submit name=submit value="回复" />
	</form>
</body>
</html>