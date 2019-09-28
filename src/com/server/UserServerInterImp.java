package com.server;

import java.util.List;

import com.dao.UserInter;
import com.entity.User;

public class UserServerInterImp implements UserServerInter {
	
	UserInter userInter;
	
	public UserServerInterImp(UserInter userInter) {
		super();
		this.userInter = userInter;
	}
	
	
	/**
	 * 查看所有用户
	 */
	public List<User> lookAllUserSer() {
		List<User> users = this.userInter.lookAllUser();
		return users;
	}

	
	/**
	 * 分页查看用户
	 */
	public List<User> pageLookUserSer(int num, int currPageCount) {
		List<User> users = this.userInter.pageLookUser(num, currPageCount);
		return users;
	}
	

	/**
	 * 增、删、改用户
	 */
	public int addDelUpdateUserSer(String sql, Object[] objects) {
		int i = this.userInter.addDelUpdate(sql, objects);
		return i;
	}


	/**
	 * 检验用户名是否已经被注册
	 * @param name
	 * @return
	 */
	public boolean userNameCheckSer(String name) {
		boolean fig = this.userInter.userNameCheck(name);
		return fig;
	}


	/**
	 * 检验手机号是否被注册
	 * @param name
	 * @return
	 */
	public boolean userPhoneCheckSer(String phone) {
		boolean fig = this.userInter.userPhoneCheck(phone);
		return fig;
	}

	/**
	 * 用户登录验证
	 * @param name
	 * @param pwd
	 * @return
	 */
	public boolean checkUserSer(String name, String pwd) {
		boolean fig = this.userInter.checkUser(name, pwd);
		return fig;
	}
	
	

}
