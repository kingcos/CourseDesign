<%@page import="com.maimieng.Bean.UserForm"%>
<%@page import="com.maimieng.Bean.MessageForm"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MMBBS | 留言</title>
</head>
<body>
	<center>
		<h1>浏览留言</h1>
		<a href="<%=request.getContextPath()%>/jsp/MsRe/Message.jsp">创建留言</a>
		| <a href="<%=request.getContextPath()%>/jsp/Login/Logout.jsp">退出系统</a>
		<hr>
		<form action="<%=request.getContextPath()%>/listms.do" method="get">
			<input type="text" name="keyword">
			<button type="submit">搜索</button>
		</form>
		<hr>
		<table width="700" border="0" cellpadding="5" cellspacing="1"
			bgcolor="#ffffff">

			<tr align="center" bgcolor=#cccccc>
				<td width="200">标题</td>
				<td width="50"><a>作者</a></td>
				<td width="300">时间</td>
				<td width="100">操作</td>
			</tr>

			<%
				String currentPageStr = request.getParameter("pageNum");
				String keyword = request.getParameter("keyword");
				int messageCount = ((Integer) session.getAttribute("messageCount")).intValue();

				int recordsInOnePage = 5;
				int currentPage;
				int pageCount = messageCount % recordsInOnePage == 0 ? messageCount / recordsInOnePage : messageCount / recordsInOnePage + 1;

				if (currentPageStr == null || currentPageStr.equals("")) {
					currentPage = 1;
				} else {
					currentPage = Integer.parseInt(currentPageStr);
				}

				int nextPage = currentPage + 1 > pageCount ? pageCount : currentPage + 1;
				int lastPage = currentPage - 1 <= 0 ? 1 : currentPage - 1;
			%>

			<logic:iterate id="ms" name="msList">
				<tr align="center">
					<form action="<%=request.getContextPath()%>/getms.do" method="post">
						<td>${ms.msTitle }</td>
						<td>${ms.msUserName }</td>
						<td>${ms.msDate.toString().substring(0, 19) }</td>
						<input type="hidden" name="msID" value=${ms.msID }>
						<td><button type="submit">查看详情</button></td>
					</form>
				</tr>
			</logic:iterate>

		</table>
		<hr>
		<table width="600" border="0">
			<tr>
				<td align="right">第<%=currentPage%>页 共<%=pageCount%>页 共<%=session.getAttribute("userCount")%>个用户
				</td>
				<td><a
					href="<%=request.getContextPath()%>/listms.do?keyword=<%=keyword%>&pageNum=<%=lastPage%>">上一页</a></td>
				<td><a
					href="<%=request.getContextPath()%>/listms.do?keyword=<%=keyword%>&pageNum=<%=nextPage%>">下一页</a></td>
			</tr>
		</table>
	</center>
</body>
</html>