package com.maimieng.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.maimieng.Bean.ReplyForm;

public class ReplyDao {
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public void saveReply(int reMsID, String reUserName, Timestamp reDate, String reContent) throws Exception {
		connection = DatabaseConnection.getConnection();
		
		String insert = "insert into reply (ReMsID, ReUserName, ReDate, ReContent) values (?,?,?,?)";
		preparedStatement = connection.prepareStatement(insert);
		preparedStatement.setInt(1, reMsID);
		preparedStatement.setString(2, reUserName);
		preparedStatement.setTimestamp(3, reDate);
		preparedStatement.setString(4, reContent);
		
		preparedStatement.execute();
		
		preparedStatement.close();
		connection.close();
	}
	
	public List<ReplyForm> listReply(int reMsID) throws Exception {
		List<ReplyForm> list = new ArrayList<>();
		
		connection = DatabaseConnection.getConnection();
		
		String select = "select * from reply where ReMsID=?";
		preparedStatement = connection.prepareStatement(select);
		preparedStatement.setInt(1, reMsID);
		resultSet = preparedStatement.executeQuery();
		
		while (resultSet.next()) {
			ReplyForm replyForm = new ReplyForm();
			replyForm.setReUserName(resultSet.getString("ReUserName"));
			replyForm.setReDate(resultSet.getTimestamp("ReDate"));
			replyForm.setReContent(resultSet.getString("ReContent"));
			
			list.add(replyForm);
		}
		
		resultSet.close();
		preparedStatement.close();
		connection.close();
		return list;
	}
}
