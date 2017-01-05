<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎登录！</title>
</head>
<body>
<center>
    <h1>留言板用户登录</h1>

    <s:fielderror/>
    <s:form action="/login" method="post">
        <table width="400" border="1">
            <s:textfield name="user.userName" label="用户名"/>
            <s:password name="user.userPassword" label="密码"/>
            <tr>
                <td><img border=0 src="<%= request.getContextPath() %>/jsp/Login/Image.jsp"></td>
                <td><label><input type="text" name="rand"></label></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">提交</button>
                </td>
            </tr>
        </table>
    </s:form>
    <hr>
    <a href="<%= request.getContextPath() %>/jsp/Register/Register.jsp">注册</a>
</center>
</body>
</html>