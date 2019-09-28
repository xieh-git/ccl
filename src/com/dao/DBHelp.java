package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBHelp {
	/**
	 * 获取数据库的连接
	 * 
	 * @return connection
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context
					.lookup("java:comp/env/jdbc/ccl");
			connection = dataSource.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	/**
	 * 获取数据库连接(普通Junit白盒测试专用)
	 * 
	 * @return connection
	 * @throws SQLException
	 */
	public static Connection getCon() throws SQLException {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/ccl", "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;
	}

	/**
	 * 关闭数据库
	 * 
	 * @param connection
	 * @param statement
	 * @param resultSet
	 */
	public static void dbClose(Connection connection, Statement statement,
			ResultSet resultSet) {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			if (statement != null) {
				statement.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			if (connection != null) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 数据库增删改通用方法
	 * @param sql
	 * @param obj
	 * @return
	 * @throws SQLException
	 */
	public static int updateAll(String sql, Object[] obj) throws SQLException {
		int num;
		Connection conn = getConnection();
		//Connection conn = getCon(); // 测试使用

		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			if (obj != null) {
				int len = obj.length;
				for (int i = 0; i < len; i++) {
					ps.setObject(i + 1, obj[i]);
				}
			}
			num = ps.executeUpdate();
		} catch (SQLException e) {
			num = -1;
			e.printStackTrace();
		}finally{
			dbClose(conn, ps, null);	
		}
		
		return num;
	}

}
