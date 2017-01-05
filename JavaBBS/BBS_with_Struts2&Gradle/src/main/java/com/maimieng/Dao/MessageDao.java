package com.maimieng.Dao;

import com.maimieng.Bean.Message;
import com.maimieng.Util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class MessageDao {
    private Connection connection = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public void saveMessage(String msUserName, Timestamp msDate, String msTitle, String msContent) throws Exception {
        connection = DBUtil.getConnection();

        String insert = "insert into message (msUserName, msDate, msTitle, msContent) values (?,?,?,?)";

        preparedStatement = connection.prepareStatement(insert);
        preparedStatement.setString(1, msUserName);
        preparedStatement.setTimestamp(2, msDate);
        preparedStatement.setString(3, msTitle);
        preparedStatement.setString(4, msContent);
        preparedStatement.execute();

        preparedStatement.close();
        connection.close();
    }

    public List<Message> listMessages(String keyword, int startIndex, int range) throws Exception {
        connection = DBUtil.getConnection();
        String select = "";

        if (keyword == null || keyword.equals("null")) {
            select = "select * from message order by MsDate DESC LIMIT ?, ?";
            preparedStatement = connection.prepareStatement(select);
            preparedStatement.setInt(1, startIndex);
            preparedStatement.setInt(2, range);
        } else {
            byte source[] = keyword.getBytes("ISO8859-1");
            keyword = new String(source, "UTF-8");
            select = "select * from message where mstitle like ? order by MsDate DESC LIMIT ?, ?";
            preparedStatement = connection.prepareStatement(select);
            preparedStatement.setString(1, "%" + keyword + "%");
            preparedStatement.setInt(2, startIndex);
            preparedStatement.setInt(3, range);
        }

        resultSet = preparedStatement.executeQuery();

        List<Message> list = new ArrayList<Message>();
        while (resultSet.next()) {
            Message message = new Message();
            message.setMsID(resultSet.getInt("MsID"));
            message.setMsUserName(resultSet.getString("MsUserName"));
            message.setMsDate(resultSet.getTimestamp("MsDate"));
            message.setMsTitle(resultSet.getString("MsTitle"));
            message.setMsContent(resultSet.getString("MsContent"));
            list.add(message);
        }

        resultSet.close();
        preparedStatement.close();
        connection.close();
        return list;
    }

    public Message getMessage(int MsID) throws Exception {
        connection = DBUtil.getConnection();

        String select = "select * from message where MsID=?";
        preparedStatement = connection.prepareStatement(select);
        preparedStatement.setInt(1, MsID);

        resultSet = preparedStatement.executeQuery();

        Message message = new Message();
        if (resultSet.next()) {
            message.setMsID(resultSet.getInt("MsID"));
            message.setMsUserName(resultSet.getString("MsUserName"));
            message.setMsDate(resultSet.getTimestamp("MsDate"));
            message.setMsTitle(resultSet.getString("MsTitle"));
            message.setMsContent(resultSet.getString("MsContent"));
        }

        resultSet.close();
        preparedStatement.close();
        connection.close();
        return message;
    }

    public int countMessages(String keyword) throws Exception {
        connection = DBUtil.getConnection();
        String sql = "";

        if (keyword == null || keyword.equals("null")) {
            sql = "select count(*) from message";
            preparedStatement = connection.prepareStatement(sql);
        } else {
            sql = "select count(*) from message where mstitle like ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + keyword + "%");
        }

        resultSet = preparedStatement.executeQuery();
        resultSet.next();

        int result = resultSet.getInt(1);

        resultSet.close();
        preparedStatement.close();
        connection.close();
        return result;
    }

    public void deleteMessage(int MsID) throws Exception {
        connection = DBUtil.getConnection();

        String deleteSql = "delete from message where MsID=?";
        preparedStatement = connection.prepareStatement(deleteSql);
        preparedStatement.setInt(1, MsID);

        preparedStatement.execute();

        preparedStatement.close();
        connection.close();
    }
}
