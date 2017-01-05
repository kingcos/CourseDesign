package com.maimieng.Util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Created by kingcos on 04/01/2017.
 */
public class DBUtil {
    //获得输入流
    private static InputStream in = DBUtil.class.getClassLoader().getResourceAsStream("jdbc.properties");
    private static Properties prop = new Properties();


    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        try {
            prop.load(in);
        } catch (IOException e) {

            e.printStackTrace();
        }
        Connection conn = null;
        //加载驱动
        String driver = prop.getProperty("jdbc.driverClassName");
        Class.forName(driver);
        //建立连接
        String url = prop.getProperty("jdbc.url");
        String username = prop.getProperty("jdbc.username");
        String password = prop.getProperty("jdbc.password");
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;

    }
}