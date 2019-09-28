package com.dao;

import java.util.List;

import com.entity.Result;

public interface ResultInter {
	/**
	 * 搜索所有的结果
	 * @return
	 */
	public List<Result> searchResult(String keyWord);

}
