package com.work.dto;

public class SearchPaging extends Paging{
	/** 검색 형태 */
	private String searchType;
	/** 검색 내용 */
	private String keyword;
	
	public String getSearchType() {
		return searchType;
	}
	
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeword(String keyword) {
		this.keyword = keyword;
	}
	
	public SearchPaging() { }
	public SearchPaging(int page, String searchType, String keyword) {
		
		super(page);
		this.searchType = searchType;
		this.keyword = keyword;
	}
}
