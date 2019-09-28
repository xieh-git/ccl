package com.entity;

public class Result {
	// 搜索的关键字
	private  String resultName;
	// 搜索的结果链接
	private String resultHref;
	
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Result(String resultName, String resultHref) {
		super();
		this.resultName = resultName;
		this.resultHref = resultHref;
	}

	public String getResultName() {
		return resultName;
	}

	public void setResultName(String resultName) {
		this.resultName = resultName;
	}

	public String getResultHref() {
		return resultHref;
	}

	public void setResultHref(String resultHref) {
		this.resultHref = resultHref;
	}
	
	
	
	

}
