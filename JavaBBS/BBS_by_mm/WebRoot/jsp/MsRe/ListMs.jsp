<%@page import="com.maimieng.Bean.UserForm"%>
<%@page import="com.maimieng.Bean.MessageForm"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=(String) session.getAttribute("userName")%></title>
</head>
<body>

	<center>
		<h1>浏览留言</h1>
		<a href="<%=request.getContextPath()%>/jsp/MsRe/Message.jsp">创建留言</a> | <a
			href="<%=request.getContextPath()%>/jsp/Login/Logout.jsp">退出系统</a>
		<hr>
		<form action="<%=request.getContextPath()%>/listms.do" method="get">
			<input type="text" name="keyword">
			<button type="submit">搜索</button>
		</form>
		<hr>
		<table width="700" border="0" cellpadding=5 cellspacing=1
			bgcolor=#ffffff>

			<tr align="center" bgcolor=#cccccc>
				<td width="200">标题</td>
				<td width="50"><a>作者</a></td>
				<td width="300">时间</td>
				<td width="100">操作</td>
			</tr>


			<%
				try {
					ResultSet rs = (ResultSet) session.getAttribute("msList");
					int intPageSize; //一页显示的记录数
					int intRowCount; //记录的总数
					int intPageCount; //总页数
					int intPage; //待显示的页码
					String strPage;
					int i;
					//设置一页显示的记录数
					intPageSize = 5;
					//取得待显示的页码
					strPage = request.getParameter("page");
					//判断strPage是否等于null,如果是，显示第一页数据
					if (strPage == null) {
						intPage = 1;
					} else {
						//将字符串转换为整型
						intPage = java.lang.Integer.parseInt(strPage);
					}
					if (intPage < 1) {
						intPage = 1;
					}
					//获取记录总数
					rs.last();
					intRowCount = rs.getRow();
					//计算机总页数
					intPageCount = (intRowCount + intPageSize - 1) / intPageSize;
					//调整待显示的页码
					if (intPage > intPageCount)
						intPage = intPageCount;
					if (intPageCount > 0) {
						//将记录指针定位到待显示页的第一条记录上
						rs.absolute((intPage - 1) * intPageSize + 1);
					}
					//下面用于显示数据
					i = 0;
					while (i < intPageSize && !rs.isAfterLast()) {
			%>
			<tr align="center">
				<form action="<%=request.getContextPath()%>/getms.do" method="post">
					<td><%=rs.getString("MsTitle")%></td>
					<td><%=rs.getString("MsUserName")%></td>
					<td><%=rs.getTimestamp("MsDate")%></td> <input type="hidden"
						name="msID" value=<%=rs.getInt("MsID")%>>
					<td><button type="submit">查看详情</button></td>
				</form>
			</tr>
			<%
				rs.next();
						i++;
					}
			%>
		</table>

		<table width="600" border="0">
			<tr>
				<td align="right">第<%=intPage%>页 共<%=intPageCount%>页 共<%=session.getAttribute("userCount")%>个用户
				</td>
				<td>
					<%
						for (int j = 1; j <= intPageCount; j++) {
							out.print("&nbsp;&nbsp;<a href='/BBS_by_mm/jsp/MsRe/ListMs.jsp?page=" + j + "'>" + j + "</a>");
						}
					%>
				</td>
			</tr>
		</table>
		<%
			} catch (

			Exception e) {
				e.printStackTrace();
			}
			%>
	</center>
</body>
</html>