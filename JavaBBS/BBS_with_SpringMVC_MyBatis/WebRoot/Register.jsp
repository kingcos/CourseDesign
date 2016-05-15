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
		<h1>留言板用户注册</h1>
		<form id="form1" name="form1" method="post"
			action="${pageContext.request.contextPath }/register.action">
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
					<td>Email：</td>
					<td><label> <input name="user.useremail" type="text" />
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
		<p>&nbsp;</p>
	</center>
</body>
</html>
</body>
</html>