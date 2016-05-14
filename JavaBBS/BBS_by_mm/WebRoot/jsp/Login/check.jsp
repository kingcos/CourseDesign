<%@ page contentType="text/html; charset=UTF-8" pageEncoding="GBK" %>
<%
String code = request.getParameter("rand");
String rand = (String)session.getAttribute("rand");
if (rand.equals(code)) {
	out.println("<h1>"+request.getParameter("name")+" 是人类！</h1>");
} else {
	out.println("<h1>验证码输入错误</h1>");
}
%>