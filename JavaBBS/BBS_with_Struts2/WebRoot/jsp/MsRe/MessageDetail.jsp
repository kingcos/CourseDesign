<%@page import="com.maimieng.Bean.Reply"%>
<%@page import="com.maimieng.Bean.Message"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>MMBBS | ${sessionScope.MessageForm.msTitle }</title>
</head>
<body>
	<table>
		<tr>
			<td>标题：</td>
			<td>${sessionScope.MessageForm.msTitle }</td>
		</tr>
		<tr>
			<td>留言者：</td>
			<td>${sessionScope.MessageForm.msUserName }</td>
		</tr>
		<tr>
			<td>时间：</td>
			<td>${sessionScope.MessageForm.msDate.toString().substring(0, 19) }</td>
		</tr>
		<tr>
			<td>内容：</td>
			<td>${sessionScope.MessageForm.msContent }</td>
		</tr>
	</table>

	<hr>
	<c:forEach items="${reList }" var="re" varStatus="rowStatus" >
		<table bgcolor="#98FB98">
			<tr>
				<td>回复者：</td>
				<td>${re.reUserName }</td>
			</tr>
			<tr>
				<td>时间：</td>
				<td>${re.reDate.toString().substring(0, 19) }</td>
			</tr>
			<tr>
				<td>回复内容：</td>
				<td>${re.reContent }</td>
			</tr>
		</table>
		<br>
	</c:forEach>

	<form method="post" action="<%= request.getContextPath() %>/replyms.action">
		<s:textarea rows="3" cols="60" name="reply.reContent"></s:textarea>
		<button type="submit">回复</button>
	</form>

</body>
</html>