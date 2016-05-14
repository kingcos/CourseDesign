<%@page import="com.maimieng.Bean.UserForm"%>
<%@page import="com.maimieng.Bean.MessageForm"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<center>
		<h1>浏览留言</h1>
		<a href="message.html">创建留言</a> | <a href="jsp/Login/Logout.jsp">退出系统</a>
		<hr />
		<table width="700" border="0" cellpadding=5 cellspacing=1
			bgcolor=#ffffff>

			<tr align="center" bgcolor=#cccccc>
				<td width="200">标题</td>
				<td width="50"><a>作者</a></td>
				<td width="300">时间</td>
				<td width="100">操作</td>
			</tr>


			<logic:iterate id="ms" name="msList">
				<tr align="center">
					<form action="getms.do" method="post">
					<td>${ms.msTitle }</td>
					<td>${ms.msUserName }</td>
					<td>${ms.msDate }</td>
					<input type="hidden" name="msID" value="${ms.msID }">
					<td><button type="submit">查看详情</button></td>
					</form>
				</tr>
			</logic:iterate>

		</table>
	</center>
</body>
</html>