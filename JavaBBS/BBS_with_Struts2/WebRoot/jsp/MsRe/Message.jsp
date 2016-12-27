<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MMBBS | 留言</title>
</head>
<body>
<s:form action="createms.action" method="post">
<table>
	<s:textfield name="message.msTitle" label="标题"/>
	<s:textarea name="message.msContent" label="内容"/>
	<tr>
		<td></td>
		<td><button type="submit">创建留言</button></td>
	</tr>
</table>
</s:form>
	
</body>
</html>