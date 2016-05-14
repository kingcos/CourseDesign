package com.maimieng.Dao;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class DatabaseConnection {
	// 从连接池中取一个数据库连接
	public static Connection getConnection() throws SQLException, NamingException {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/db_bbs_by_mm");
		return ds.getConnection();

	}
}