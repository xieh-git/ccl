package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserInterImp;
import com.server.UserServerInter;
import com.server.UserServerInterImp;

public class Login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		// 获取用户名
		String name = request.getParameter("userName");
		// 获取用户密码
		String pwd = request.getParameter("userPwd");
		// 检验用户登录
		UserServerInter usi = new UserServerInterImp(new UserInterImp());
		boolean fig = usi.checkUserSer(name, pwd);
		if(fig){
			session.setAttribute("KeyName", name);
			session.setMaxInactiveInterval(1 * 60);
			response.sendRedirect("main.jsp");		
		}else{
			session.setAttribute("login", "true");
			Cookie cookieName = new Cookie("cName",name );
			response.addCookie(cookieName);
			out.print("<script>location.href = 'index.jsp';</script>");
		}
		
		
	}
	

}
