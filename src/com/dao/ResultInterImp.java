package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Result;

public class ResultInterImp implements ResultInter {

	public List<Result> searchResult(String keyWord) {
		List<Result> list = new ArrayList<Result>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			connection = DBHelp.getConnection();
			ps = connection.prepareStatement("SELECT * FROM search WHERE resultName LIKE ?");
			ps.setString(1, "%"+ keyWord +"%");
			rs = ps.executeQuery();
			while(rs.next()){
				Result result = new Result();
				result.setResultName(rs.getString("resultName"));
				result.setResultHref(rs.getString("resultHref"));
				list.add(result);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			DBHelp.dbClose(connection, ps, rs);
		}
		
		return list;
	}

}
