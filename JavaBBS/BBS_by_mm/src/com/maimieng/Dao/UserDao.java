package com.maimieng.Dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public boolean saveUser(String userName, String userPassword, String userEmail) throws Exception {
		connection = DatabaseConnection.getConnection();
		
		String insert = "insert into user (UserName, UserPassword, UserEmail) values (?,?,?)";
		preparedStatement = connection.prepareStatement(insert);
		
		preparedStatement.setString(1, userName);
		preparedStatement.setString(2, userPassword);
		preparedStatement.setString(3, userEmail);
		
		return preparedStatement.execute();

	}

	public boolean verifyLogin(String userName, String userPassword) throws Exception {
		connection = DatabaseConnection.getConnection();
		
		String sql = "select * from user where UserName =? and UserPassword=?";
		
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, userName);
		preparedStatement.setString(2, userPassword);
		
		resultSet = preparedStatement.executeQuery();
		
		return resultSet.next();
	}

	public boolean verifyUserName(String userName) throws Exception {
		connection = DatabaseConnection.getConnection();
		
		String sql = "select UserName from user where UserName =?";
		
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, userName);
		
		resultSet = preparedStatement.executeQuery();
		
		return resultSet.next();
	}
	
	public int countUsers() throws Exception {
		connection = DatabaseConnection.getConnection();
		
		String sql = "select count(*) from user";
		
		preparedStatement = connection.prepareStatement(sql);
		
		resultSet = preparedStatement.executeQuery();
		resultSet.next();
		
		return resultSet.getInt(1);
	}
}
