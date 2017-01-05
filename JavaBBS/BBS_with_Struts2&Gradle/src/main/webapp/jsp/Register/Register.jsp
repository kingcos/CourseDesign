<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎注册！</title>
</head>
<body>
<center>
    <h1>留言板用户注册</h1>
    <s:fielderror/>
    <s:form action="/register" method="post">
        <table width="400" border="1">
            <s:textfield name="user.userName" label="用户名"/>
            <s:textfield name="user.userPassword" label="密码"/>
            <s:textfield name="user.userEmail" label="Email"/>
            <tr>
                <td><a href="<%= request.getContextPath() %>/">登录</a></td>
                <td>
                    <button type="submit">提交</button>
                </td>
            </tr>
        </table>
    </s:form>
</center>
</body>
</html>