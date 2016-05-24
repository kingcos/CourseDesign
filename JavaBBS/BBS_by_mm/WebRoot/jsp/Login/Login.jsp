<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MMBBS | 欢迎登录！</title>
</head>
<body>
<center>
<h1>留言板用户登录</h1>
<form method="post" action="<%= request.getContextPath() %>/login.do">
  <table width="400" border="1">
    <tr>
        <td>用户名：</td>
        <td><label><input name="userName" type="text"></label></td>
    </tr>
    <tr>
        <td>密码：</td>
        <td><label><input name="userPassword" type="password"></label></td>
    </tr>
    <tr>
        <td>验证码：</td>
        <td><label><input type="text" name="rand"><img border=0 src="<%= request.getContextPath() %>/jsp/Login/Image.jsp"></label></td>
    </tr>
    <tr>
        <td></td>
        <td><label><button type="submit">提交</button></label></td>
    </tr>
  </table>
</form>
<hr>
<a href="<%= request.getContextPath() %>/jsp/Register/Register.jsp">注册</a>
</center>
</body>
</html>