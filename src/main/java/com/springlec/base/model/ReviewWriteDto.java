package com.springlec.base.model;

import com.springlec.base.dao.ReviewWriteDao;

public class ReviewWriteDto {

	// 상품 내역 가져오기
	String proName;
	String proImage1;
	// 리뷰 인서트 시킬 데이터 가져오기
	int proSeq;
	String userId;
	String revTitle;
	String revContent;
	String revImage1;

	public ReviewWriteDto() {
		// TODO Auto-generated constructor stub
	}

//	// 값들을 스트링으로 뽑아서 확인하기위한 메소드
//	@Override
//	public String toString() {
//		return "ReviewWriteDto{" + "proName='" + proName + '\'' + ", proImage='" + proImage1 + '\'' + ", proSeq='"
//				+ proSeq + '\'' +
//				// 다른 필드들도 필요에 따라 추가
//				'}';
//	}

	public String getProName() {
		return proName;
	}

	public String getProImage1() {
		return proImage1;
	}

	public void setProImage1(String proImage1) {
		this.proImage1 = proImage1;
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

	public String getRevImage1() {
		return revImage1;
	}

	public void setRevImage1(String revImage1) {
		this.revImage1 = revImage1;
	}

}
