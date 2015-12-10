package com.work.dto;


/**
 * 게시판 페이징 처리를 위한 도메인 클래스 
 *
 * @since jdk 1.8
 * @see com.god.sharestudy.dto.Paging
 */
public class Paging {
	/** 현재 페이지 번호  */
	private int page = 1;
	/** 한 페이지에 보여질 게시글의 수  */
	private int pageCount = 10;
	/** 페이지네이션의 갯수  */
	private int groupCount = 5;
	/** 현재페이지의 시작 글 번호  */
	private int start;
	/** 현재페이지의 끝 글 번호  */
	private int end;
	/** 페이지네이션의 시작 페이지  */
	private int startPage = 1;
	/** 게시글의 총 갯수  */
	private int totalRow;
	/** 게시글의 총 페이지수 */
	private int totalPage;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getGroupCount() {
		return groupCount;
	}
	public void setGroupCount(int groupCount) {
		this.groupCount = groupCount;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int page) {
		this.start = ((page - 1) * this.pageCount) + 1;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int page) {
		this.startPage = (((page - 1) / this.groupCount) * this.groupCount) + 1;
	}
	public int getTotalRow() {
		return totalRow;
	}
	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalRow) {
		this.totalPage = ((totalRow - 1) / this.pageCount) + 1;
	}
	public Paging() { }
	
	/**
	 * Constructor
	 * @param page
	 */
	public Paging(int page) {
		this.page = page;
		this.start = ((page - 1) * this.pageCount) + 1;
		this.startPage = (((page - 1) / this.groupCount) * this.groupCount) + 1;
		this.end = (this.start + this.pageCount) - 1;
	}
}
