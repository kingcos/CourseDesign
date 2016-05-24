package com.maimieng.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import com.maimieng.Bean.MessageForm;

public class MessageDao {
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public void saveMessage(String msUserName, Timestamp msDate, String msTitle, String msContent) throws Exception {
		connection = DatabaseConnection.getConnection();

		String insert = "insert into message (msUserName, msDate, msTitle, msContent) values (?,?,?,?)";

		preparedStatement = connection.prepareStatement(insert);
		preparedStatement.setString(1, msUserName);
		preparedStatement.setTimestamp(2, msDate);
		preparedStatement.setString(3, msTitle);
		preparedStatement.setString(4, msContent);
		preparedStatement.execute();
	}
	
	public ResultSet listMessages(String keyword) throws Exception {
		connection = DatabaseConnection.getConnection();
		String select = "";
		
		if (keyword == null || keyword.equals("")) {
			select = "select * from message order by MsDate DESC";
			preparedStatement = connection.prepareStatement(select);
		} else {
			byte source[] = keyword.getBytes("ISO8859-1");
			keyword = new String (source, "UTF-8");
			select = "select * from message where mstitle like ? order by MsDate DESC";
			preparedStatement = connection.prepareStatement(select);
			preparedStatement.setString(1, "%" + keyword + "%");
		}
		
		resultSet = preparedStatement.executeQuery();
		return resultSet;
	}

	public MessageForm getMessage(int MsID) throws Exception {
		connection = DatabaseConnection.getConnection();
		
		String select = "select * from message where MsID=?";
		preparedStatement = connection.prepareStatement(select);
		preparedStatement.setInt(1, MsID);
		
		resultSet = preparedStatement.executeQuery();
		
		MessageForm messageForm = new MessageForm();
		if (resultSet.next()) {
			messageForm.setMsID(resultSet.getInt("MsID"));
			messageForm.setMsUserName(resultSet.getString("MsUserName"));
			messageForm.setMsDate(resultSet.getTimestamp("MsDate"));
			messageForm.setMsTitle(resultSet.getString("MsTitle"));
			messageForm.setMsContent(resultSet.getString("MsContent"));
		}
		return messageForm;
	}
}
