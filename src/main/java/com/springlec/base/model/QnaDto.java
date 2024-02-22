package com.springlec.base.model;

import java.sql.Timestamp;

public class QnaDto {
	int qnaSeq;
	String userId;
	String qnaTitle;
	String qnaCategory;
	String qnaContent;
	String qnaImage;
	Timestamp qnaDate;
	
	
	public QnaDto() {
		
		
	}


	public int getQnaSeq() {
		return qnaSeq;
	}


	public void setQnaSeq(int qnaSeq) {
		this.qnaSeq = qnaSeq;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getQnaTitle() {
		return qnaTitle;
	}


	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}


	public String getQnaCategory() {
		return qnaCategory;
	}


	public void setQnaCategory(String qnaCategory) {
		this.qnaCategory = qnaCategory;
	}


	public String getQnaContent() {
		return qnaContent;
	}


	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}


	public String getQnaImage() {
		return qnaImage;
	}


	public void setQnaImage(String qnaImage) {
		this.qnaImage = qnaImage;
	}


	public Timestamp getQnaDate() {
		return qnaDate;
	}


	public void setQnaDate(Timestamp qnaDate) {
		this.qnaDate = qnaDate;
	}


	
	
	
	
	
}
