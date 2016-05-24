<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MMBBS | 留言</title>
</head>
<body>
	<form method="post" action="<%= request.getContextPath() %>/createms.do">
		<table>
			<tr>
				<td>标题</td>
				<td><input type="text" name="msTitle" size="60" /></td>
			</tr>
			<tr>
				<td>内容</td>
				<td><textarea rows="3" cols="60" name="msContent"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit">创建留言</button></td>
			</tr>
		</table>
	</form>
</body>
</html>