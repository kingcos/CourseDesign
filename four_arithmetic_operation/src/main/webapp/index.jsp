<%--
  Created by IntelliJ IDEA.
  User: kingcos
  Date: 27/09/2016
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Demo</title>
</head>
<body>
<form action="Calculate" style="text-align:center;">
    <s:textfield name="first_number"/>
    <s:select
            name="operator"
            list="#{1:'+', 2:'-', 3:'*', 4:'/'}"
            listValue="value"
            headerKey="-1"
            headerValue="--运算符--"/>
    <s:textfield name="second_number"/>
    <button type="submit">=</button>
    <s:property value="result"/>
</form>
</body>
</html>
