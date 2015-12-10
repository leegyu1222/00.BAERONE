package com.work.dto;

public class Reply {
	private int replyNo;
	/** 게시글번호  */
	private int postNo;
	/** 게시글 내용  */
	private String content;
	/** 작성자 닉네임  */
	private String nickname;
	/** 작성일  */
	private String writeDate;
	 
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
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
	public Reply() { }
	
	/**
	 * Constructor
	 * @param replyNo
	 * @param postNo
	 * @param content
	 * @param nickname
	 * @param writeDate
	 */
	public Reply(int replyNo, int postNo, String content, String nickname, String writeDate) {
		this.replyNo = replyNo;
		this.postNo = postNo;
		this.content = content;
		this.nickname = nickname;
		this.writeDate = writeDate;
	}
}
