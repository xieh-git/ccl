package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ResultInterImp;
import com.entity.Result;
import com.server.ResultServerInter;
import com.server.ResultServerInterImp;

public class Search extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String keyWord = request.getParameter("keyWord");
		PrintWriter out = response.getWriter();
		ResultServerInter rs = new ResultServerInterImp(new ResultInterImp());
		List<Result> results = rs.searchResultServer(keyWord);
		int len = results.size();
		if (len == 0) {
			out.println("<h2>哇哦！本次搜索没有结果...</h2>");
		}else{
			for (int i = 0; i < len; i++) {
				out.println("<a href='" + results.get(i).getResultHref().trim()
						+ "' class='main-center-search-result' target='_blank' >"
						+ results.get(i).getResultName().trim() + "</a>");
			}
		}
		out.close();

	}

}
