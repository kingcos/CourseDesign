<%--
  Created by IntelliJ IDEA.
  User: kingcos
  Date: 28/09/2016
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<s:form action="user_register">
    <s:property value="failedMessage"></s:property>
    <s:textfield name="user.username" label="用户名"></s:textfield><br>
    <s:password name="user.password" label="密码"></s:password>
    <s:submit value="注册"></s:submit>
</s:form>
</body>
</html>
