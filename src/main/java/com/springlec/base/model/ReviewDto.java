package com.springlec.base.model;

public class ReviewDto {
	int revSeq;
	int proSeq;
	String userId;
	String revTitle;
	String revContent;
	String revImage;
	String revDate;
	String proImage1;
	String proName;
	
	public ReviewDto() {
		
	}

	public int getRevSeq() {
		return revSeq;
	}

	public void setRevSeq(int revSeq) {
		this.revSeq = revSeq;
	}

	public int getProSeq() {
		return proSeq;
	}

	public void setProSeq(int proSeq) {
		this.proSeq = proSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRevTitle() {
		return revTitle;
	}

	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public String getRevImage() {
		return revImage;
	}

	public void setRevImage(String revImage) {
		this.revImage = revImage;
	}

	public String getRevDate() {
		return revDate;
	}

	public void setRevDate(String revDate) {
		this.revDate = revDate;
	}

	public String getProImage1() {
		return proImage1;
	}

	public void setProImage1(String proImage1) {
		this.proImage1 = proImage1;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}
	
	
	
	
	
}
