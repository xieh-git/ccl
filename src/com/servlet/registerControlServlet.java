package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserInterImp;
import com.server.UserServerInter;
import com.server.UserServerInterImp;

public class registerControlServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		// 用户名
		String name = request.getParameter("name");
		// 用户密码
		String pwd = request.getParameter("pwd2");
		// 用户邮箱
		String email = request.getParameter("email");
		// 用户电话
		String phone = request.getParameter("phone");
		// 用户QQ号
		String qq = request.getParameter("qq");

		// 增加用户
		UserServerInter usi = new UserServerInterImp(new UserInterImp());
		String sql = "insert into `user` values(?,?,?,?,?);";
		Object[] obj = { name, pwd, email, phone, qq };
		int i = usi.addDelUpdateUserSer(sql, obj);
		if (i > 0) {
			out.print("<body>");
			out.print(" <p style=\" font-size: 16px;font-family: '宋体'; \">");
			out.print("增加成功啦.....，页面将在");
			out.print("<span>3</span>");
			out.print("秒后到登录页面!");
			out.print(" <a href='index.jsp'>点我咱直接去</a>");
			out.print(" </p>");
			out.print("<script type=\"text/javascript\">");
			out.print(" var span = document.getElementsByTagName('span')[0];");
			out.print(" var time = setInterval(function () {");
			out.print("var val = span.innerText;");
			out.print(" var num = parseInt(val);");
			out.print(" num--;");
			out.print(" span.innerText = num;");
			out.print(" if (num <= 0) {");
			out.print("clearInterval(time);");
			out.print("location.href = 'index.jsp';");
			out.print(" }");
			out.print(" }, 1000);");
			out.print("  </script>");
			out.print("</body>");
		} else {
			out.print("<script>alert('哇哦增加失败了....');location.href = 'register.jsp';</script>");
		}

	}

}
