package com.server;

import java.util.List;

import com.entity.User;

public interface UserServerInter {
	/**
	 * 查看所有用户
	 * @return
	 */
	List<User> lookAllUserSer();
	
	/**
	 * 分页查看用户
	 * @param num
	 * @param currPageCount
	 * @return
	 */
	List<User> pageLookUserSer(int num,int currPageCount);
	
	/**
	 * 增删改通用方法
	 * @param sql
	 * @param objects
	 * @return
	 */
	int addDelUpdateUserSer(String sql,Object[]objects);
	
	
	/**
	 * 检验用户名是否已经被注册
	 * @param name
	 * @return
	 */
	boolean userNameCheckSer(String name);
	
	
	/**
	 * 检验手机号是否被注册
	 * @param name
	 * @return
	 */
	boolean userPhoneCheckSer(String phone);
	
	/**
	 * 用户登录验证
	 * @param name
	 * @param pwd
	 * @return
	 */
	boolean checkUserSer(String name,String pwd);
	
	
}
