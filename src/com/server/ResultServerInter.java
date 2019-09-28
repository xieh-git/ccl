package com.server;

import java.util.List;

import com.entity.Result;

public interface ResultServerInter {
	/**
	 * 搜索所有的结果
	 * @return
	 */
	public List<Result> searchResultServer(String keyWord);
}
