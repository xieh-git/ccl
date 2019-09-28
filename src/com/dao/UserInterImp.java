package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.entity.User;

public class UserInterImp implements UserInter {
	/**
	 * 查看所有用户
	 */
	public List<User> lookAllUser() {
		List<User> list = new ArrayList<User>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			// connection = DBHelp.getCon(); //测试使用
			connection = DBHelp.getConnection();
			String sql = "select * from `user`";
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			// 读取用户信息，并添加到集合中
			while (rs.next()) {
				User user = new User();
				user.setuName(rs.getString("userName"));
				user.setuPwd(rs.getString("userPwd"));
				user.setuEmail(rs.getString("userEmail"));
				user.setuPhone(rs.getString("userPhone"));
				user.setuQQ(rs.getString("userQQ"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBHelp.dbClose(connection, ps, rs);
		}

		return list;
	}

	/**
	 * 分页查看用户
	 * 
	 * @param num
	 *            :每页显示的数量
	 * @param currPageCount
	 *            :当前页
	 */
	public List<User> pageLookUser(int num, int currPageCount) {
		List<User> list = new ArrayList<User>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (currPageCount <= 0) {
			currPageCount = 1;
		}
		// 每页开始的下标
		int index = (currPageCount - 1) * num;
		try {
			// connection = DBHelp.getCon(); //测试使用
			connection = DBHelp.getConnection();
			ps = connection.prepareStatement("select * from `user` LIMIT ?, ?");
			ps.setInt(1, index);
			ps.setInt(2, num);

			// 查询
			rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setuName(rs.getString("userName"));
				user.setuPwd(rs.getString("userPwd"));
				user.setuEmail(rs.getString("userEmail"));
				user.setuPhone(rs.getString("userPhone"));
				user.setuQQ(rs.getString("userQQ"));
				list.add(user);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBHelp.dbClose(connection, ps, rs);
		}
		return list;
	}

	/**
	 * 用户的增删改通用方法
	 */
	public int addDelUpdate(String sql, Object[] objects) {
		int num = -1;
		try {
			num = DBHelp.updateAll(sql, objects);
		} catch (SQLException e) {
			num = -1;
			e.printStackTrace();
		}
		return num;
	}

	/**
	 * 检验用户名是否被注册
	 */
	public boolean userNameCheck(String name) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean fig = false;
		String num = "";
		int count = -1;

		try {
			//connection = DBHelp.getCon(); //测试使用
			connection = DBHelp.getConnection();
			ps = connection
					.prepareStatement("select COUNT(userName) from  `user` where userName=?");
			ps.setString(1, name);
			rs = ps.executeQuery();
			while (rs.next()) {
				num = rs.getString(1);
				break;
			}

			count = Integer.parseInt(num);
			if (count == 0) {
				fig = true;
			} else {
				fig = false;
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBHelp.dbClose(connection, ps, rs);
		}

		return fig;
	}

	
	/**
	 * 检验手机号是否被注册了
	 * @param name
	 * @return
	 */
	public boolean userPhoneCheck(String phone) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean fig = false;
		String num = "";
		int count = -1;

		try {
			//connection = DBHelp.getCon(); //测试使用
			connection = DBHelp.getConnection();
			ps = connection
					.prepareStatement("select COUNT(userPhone) from  `user` where userPhone=?");
			ps.setString(1, phone);
			rs = ps.executeQuery();
			while (rs.next()) {
				num = rs.getString(1);
				break;
			}

			count = Integer.parseInt(num);
			if (count == 0) {
				fig = true;
			} else {
				fig = false;
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBHelp.dbClose(connection, ps, rs);
		}

		return fig;
	}

	
	/**
	 * 用户登录验证
	 */
	public boolean checkUser(String name, String pwd) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean fig = false ;
		try {
			connection = DBHelp.getConnection();
			ps = connection.prepareStatement("select * from `user` where userName=? and userPwd=?");
			ps.setString(1, name);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if(rs.next()){
				 fig = true;
			}else {
				fig = false ;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			fig = false ;
			e.printStackTrace();
		}finally{
			DBHelp.dbClose(connection, ps, rs);
		}
		return fig;
	}

}
