package com.server;

import java.util.List;

import com.dao.ResultInter;
import com.entity.Result;

public class ResultServerInterImp implements ResultServerInter {
	private ResultInter resultInter;

	public ResultServerInterImp(ResultInter resultInter) {
		super();
		this.resultInter = resultInter;
	}

	public List<Result> searchResultServer(String keyWord) {
		return this.resultInter.searchResult(keyWord);

	}
}
