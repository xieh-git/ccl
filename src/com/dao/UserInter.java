package com.dao;

import java.util.List;

import com.entity.User;

public interface UserInter {
	/**
	 * 查看所有用户
	 * @return
	 */
	List<User> lookAllUser();
	
	/**
	 * 分页查看用户
	 * @param num
	 * @param currPageCount
	 * @return
	 */
	List<User> pageLookUser(int num,int currPageCount);
	
	/**
	 * 增删改通用方法
	 * @param sql
	 * @param objects
	 * @return
	 */
	int addDelUpdate(String sql,Object[]objects);
	
	/**
	 * 检验用户名是否已经被注册
	 * @param name
	 * @return
	 */
	boolean userNameCheck(String name);
	
	/**
	 * 检验手机号是否被注册了
	 * @param name
	 * @return
	 */
	boolean userPhoneCheck(String phone);
	
	/**
	 * 用户登录验证
	 * @param name
	 * @param pwd
	 * @return
	 */
	boolean checkUser(String name,String pwd);
	
}
