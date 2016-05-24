package com.maimieng.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.maimieng.Bean.MessageForm;

public class MessageDao {
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	
	/**
	 * 传入留言信息，保存留言，返回是否成功
	 * @param msUserName
	 * @param msDate
	 * @param msTitle
	 * @param msContent
	 * @return
	 * @throws Exception
	 */
	public void saveMessage(String msUserName, Timestamp msDate, String msTitle, String msContent) throws Exception {
		// 连接数据库
		connection = DatabaseConnection.getConnection();
		// SQL 语句
		String insert = "insert into message (msUserName, msDate, msTitle, msContent) values (?,?,?,?)";
		// 执行预编译语句，填充 SQL 语句
		preparedStatement = connection.prepareStatement(insert);
		preparedStatement.setString(1, msUserName);
		preparedStatement.setTimestamp(2, msDate);
		preparedStatement.setString(3, msTitle);
		preparedStatement.setString(4, msContent);
		preparedStatement.execute();
	}
	
//	/**
//	 * 找到所有留言，并返回
//	 * @return
//	 * @throws Exception
//	 */
//	public List<MessageForm> listMessages() throws Exception {
//		// 存储 留言 的列表
//		List<MessageForm> list = new ArrayList<>();
//		// 连接数据库
//		connection = DatabaseConnection.getConnection();
//		// SQL 语句
//		String select = "select * from message order by MsDate DESC";
//		// 执行预编译语句
//		preparedStatement = connection.prepareStatement(select);
//		// 存储结果集
//		resultSet = preparedStatement.executeQuery();
//		// 遍历结果集
//		while (resultSet.next()) {
//			MessageForm messageForm = new MessageForm();
//			// 取到结果集内容，转为 MessageForm 对象
//			messageForm.setMsID(resultSet.getInt("MsID"));
//			messageForm.setMsUserName(resultSet.getString("MsUserName"));
//			messageForm.setMsDate(resultSet.getTimestamp("MsDate"));
//			messageForm.setMsTitle(resultSet.getString("MsTitle"));
//			messageForm.setMsContent(resultSet.getString("MsContent"));
//			// 附加到列表
//			list.add(messageForm);
//		}
//		// 返回 留言 列表
//		return list;
//	}
	
	public List<MessageForm> listMessages(String keyword) throws Exception {
		List<MessageForm> list = new ArrayList<>();
		connection = DatabaseConnection.getConnection();
		String select = "";
		if (keyword == null || keyword.equals("")) {
			select = "select * from message order by MsDate DESC";
			preparedStatement = connection.prepareStatement(select);
		} else {
			byte source[] = keyword.getBytes("iso8859-1");
			keyword = new String (source, "UTF-8");
			select = "select * from message where mstitle like ? order by MsDate DESC";
			preparedStatement = connection.prepareStatement(select);
			preparedStatement.setString(1, "%" + keyword + "%");
		}
		
//		String select = "select * from message where mstitle like '%?%' order by MsDate DESC";
		
		resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			MessageForm messageForm = new MessageForm();
			// 取到结果集内容，转为 MessageForm 对象
			messageForm.setMsID(resultSet.getInt("MsID"));
			messageForm.setMsUserName(resultSet.getString("MsUserName"));
			messageForm.setMsDate(resultSet.getTimestamp("MsDate"));
			messageForm.setMsTitle(resultSet.getString("MsTitle"));
			messageForm.setMsContent(resultSet.getString("MsContent"));
			// 附加到列表
			list.add(messageForm);
		}
		// 返回 留言 列表
		return list;
	}
	
	/**
	 * 传入 留言 ID，获取留言详情
	 * @param MsID
	 * @return
	 * @throws Exception
	 */
	public MessageForm getMessage(int MsID) throws Exception {
		// 连接数据库
		connection = DatabaseConnection.getConnection();
		// SQL 语句
		String select = "select * from message where MsID=?";
		// 执行预编译语句，填充 SQL 语句
		preparedStatement = connection.prepareStatement(select);
		preparedStatement.setInt(1, MsID);
		// 存储结果集
		resultSet = preparedStatement.executeQuery();
		MessageForm messageForm = new MessageForm();
		if (resultSet.next()) {
			// 取到结果集内容，转为 MessageForm 对象
			messageForm.setMsID(resultSet.getInt("MsID"));
			messageForm.setMsUserName(resultSet.getString("MsUserName"));
			messageForm.setMsDate(resultSet.getTimestamp("MsDate"));
			messageForm.setMsTitle(resultSet.getString("MsTitle"));
			messageForm.setMsContent(resultSet.getString("MsContent"));
		}
		// 返回该条 留言
		return messageForm;
	}
}
