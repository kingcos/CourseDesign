package com.maimieng.Dao;

import com.maimieng.Bean.Reply;
import com.maimieng.Util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ReplyDao {
    private Connection connection = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public void saveReply(int reMsID, String reUserName, Timestamp reDate, String reContent) throws Exception {
        connection = DBUtil.getConnection();

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

    public List<Reply> listReply(int reMsID) throws Exception {
        List<Reply> list = new ArrayList<Reply>();

        connection = DBUtil.getConnection();

        String select = "select * from reply where ReMsID=?";
        preparedStatement = connection.prepareStatement(select);
        preparedStatement.setInt(1, reMsID);
        resultSet = preparedStatement.executeQuery();

        while (resultSet.next()) {
            Reply replyForm = new Reply();
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

    public void deleteReply(int reMsID) throws Exception {
        connection = DBUtil.getConnection();

        String deleteSql = "delete from reply where ReMsID = ?";
        preparedStatement = connection.prepareStatement(deleteSql);
        preparedStatement.setInt(1, reMsID);

        preparedStatement.execute();

        preparedStatement.close();
        connection.close();
    }
}
