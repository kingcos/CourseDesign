<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MMBBS | 欢迎注册！</title>
</head>
<body>
<center>
<h1>留言板用户注册</h1>
<form method="post" action="<%= request.getContextPath() %>/register.do">
<table width="400" border="1">
    <tr>
        <td>用户名：</td>
        <td><label><input name="userName" type="text"/></label></td>
    </tr>
    <tr>
        <td>密码：</td>
        <td><label><input name="userPassword" type="password"/></label></td>
    </tr>
    <tr>
        <td>Email：</td>
        <td><label><input name="userEmail" type="text"/></label></td>
    </tr>
    <tr>
        <td><a href="<%= request.getContextPath() %>/">登录</a></td>
        <td><label><button type="submit">提交</button></label></td>
    </tr>
  </table>
</form>
</center>
</body>
</html>