package com.maimieng.Dao;


import com.maimieng.Util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    private Connection connection = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public void saveUser(String userName, String userPassword, String userEmail) throws Exception {
        connection = DBUtil.getConnection();

        String insert = "insert into user (UserName, UserPassword, UserEmail) values (?,?,?)";
        preparedStatement = connection.prepareStatement(insert);

        preparedStatement.setString(1, userName);
        preparedStatement.setString(2, userPassword);
        preparedStatement.setString(3, userEmail);
        preparedStatement.execute();

        preparedStatement.close();
        connection.close();
    }

    public boolean verifyLogin(String userName, String userPassword) throws Exception {
        connection = DBUtil.getConnection();

        String sql = "select * from user where UserName =? and UserPassword=?";

        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, userName);
        preparedStatement.setString(2, userPassword);

        resultSet = preparedStatement.executeQuery();

        boolean result = resultSet.next();

        resultSet.close();
        preparedStatement.close();
        connection.close();
        return result;
    }

    public boolean verifyUserName(String userName) throws Exception {
        connection = DBUtil.getConnection();

        String sql = "select UserName from user where UserName =?";

        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, userName);

        resultSet = preparedStatement.executeQuery();

        boolean result = resultSet.next();

        resultSet.close();
        preparedStatement.close();
        connection.close();
        return result;
    }

    public int countUsers() throws Exception {
        connection = DBUtil.getConnection();

        String sql = "select count(*) from user";

        preparedStatement = connection.prepareStatement(sql);

        resultSet = preparedStatement.executeQuery();
        resultSet.next();

        int result = resultSet.getInt(1);

        resultSet.close();
        preparedStatement.close();
        connection.close();
        return result;
    }
}
