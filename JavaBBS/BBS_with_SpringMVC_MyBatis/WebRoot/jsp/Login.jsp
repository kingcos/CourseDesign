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
		<h1>留言板用户登录</h1>
		<form id="form1" name="form1" method="post"
			action="${pageContext.request.contextPath }/login.action">
			<table width="400" border="1">
				<tr>
					<td>用户名：</td>
					<td><label> <input name="user.username" type="text" />
					</label></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><label> <input name="user.userpassword"
							type="password" />
					</label></td>
				</tr>
				<tr>
					<td>验证码：</td>
					<td><label> <input type="text" name="rand" /><img
							border=0 src="jsp/Image.jsp">
					</label></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><label> <input type="submit" name="Submit"
							value="提交" />
					</label></td>
				</tr>
			</table>
		</form>
		<hr />
		<a href="jsp/Register.jsp">注册</a>
	</center>
</body>
</html>