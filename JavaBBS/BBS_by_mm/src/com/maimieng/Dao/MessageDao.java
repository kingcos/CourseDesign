package com.maimieng.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.maimieng.Bean.MessageForm;

public class MessageDao {
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public boolean saveMessage(String msUserName, Date msDate, String msTitle, String msContent) throws Exception {
		connection = DatabaseConnection.getConnection();
		String insert = "insert into message (msUserName, msDate, msTitle, msContent) values (?,?,?,?)";
		preparedStatement = connection.prepareStatement(insert);
		preparedStatement.setString(1, msUserName);
		preparedStatement.setTimestamp(2, new java.sql.Timestamp(msDate.getTime()));
		preparedStatement.setString(3, msTitle);
		preparedStatement.setString(4, msContent);
		return preparedStatement.execute();
	}
	
	public List<MessageForm> listMessages() throws Exception {
		List<MessageForm> list = new ArrayList<>();
		connection = DatabaseConnection.getConnection();
		String select = "select * from message order by MsDate DESC";
		preparedStatement = connection.prepareStatement(select);
		resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			MessageForm messageForm = new MessageForm();
			messageForm.setMsID(resultSet.getInt("MsID"));
			messageForm.setMsUserName(resultSet.getString("MsUserName"));
			messageForm.setMsDate(resultSet.getTimestamp("MsDate"));
			messageForm.setMsTitle(resultSet.getString("MsTitle"));
			messageForm.setMsContent(resultSet.getString("MsContent"));
			
			list.add(messageForm);
		}
		return list;
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
