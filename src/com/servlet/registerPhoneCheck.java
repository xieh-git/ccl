package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.dao.UserInterImp;
import com.server.UserServerInter;
import com.server.UserServerInterImp;

public class registerPhoneCheck extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		// 检验手机号
		String phone = request.getParameter("phone");
		// 检查用户名是否存在
		UserServerInter usi = new UserServerInterImp(new UserInterImp());
		boolean fig = usi.userPhoneCheckSer(phone);
		// 用户名可用返回true，否则返回false
		// 用户名不可用
		if(!fig){
			boolean con = true;
			String check = JSON.toJSONString(con);
			out.print(check);
		}else{
			boolean con = false;
			String check = JSON.toJSONString(con);
			out.print(check);
		}
	}

}
