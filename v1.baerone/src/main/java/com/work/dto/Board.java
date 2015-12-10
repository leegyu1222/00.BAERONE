package com.work.dto;

public class Board {
	private int postNo;
	private String title;
	private String content;
	private String nickname;
	private String writeDate;
	private int hit;
	
	public int getPostNo() {
		return postNo;
	}
	
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Board() { };
	
	/**
	 * Constructor
	 * @param postNo
	 * @param title
	 * @param content
	 * @param nickname
	 * @param writeDate
	 * @param hit
	 */
	public Board(int postNo, String title, String content, String nickname, String writeDate, int hit) {
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.nickname = nickname;
		this.writeDate = writeDate;
		this.hit = hit;
	}
}

