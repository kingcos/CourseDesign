package com.maimieng.Dao;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class DatabaseConnection {
	public static Connection getConnection() throws SQLException, NamingException {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/db_bbs_by_mm");
		return ds.getConnection();
	}
}