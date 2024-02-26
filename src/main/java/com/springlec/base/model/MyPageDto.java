package com.springlec.base.model;

public class MyPageDto {
	
	int purSeq;
	int proSeq;
	String userId;
	int pQty;
	int pPrice;
	String pMethod;
	int pSpendPoint;
	int pStackPoint;
	String pDate;
	String pCancelDate;
	String proName;//purchase 테이블에는 없지만 마이페이지 표에 보여줘야되서 가져옴
	String getUserId;
	
	
	public MyPageDto() {
		// TODO Auto-generated constructor stub
	}


	public int getPurSeq() {
		return purSeq;
	}


	public void setPurSeq(int purSeq) {
		this.purSeq = purSeq;
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


	public int getpQty() {
		return pQty;
	}


	public void setpQty(int pQty) {
		this.pQty = pQty;
	}


	public int getpPrice() {
		return pPrice;
	}


	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}


	public String getpMethod() {
		return pMethod;
	}


	public void setpMethod(String pMethod) {
		this.pMethod = pMethod;
	}


	public int getpSpendPoint() {
		return pSpendPoint;
	}


	public void setpSpendPoint(int pSpendPoint) {
		this.pSpendPoint = pSpendPoint;
	}


	public int getpStackPoint() {
		return pStackPoint;
	}


	public void setpStackPoint(int pStackPoint) {
		this.pStackPoint = pStackPoint;
	}


	public String getpDate() {
		return pDate;
	}


	public void setpDate(String pDate) {
		this.pDate = pDate;
	}


	public String getpCancelDate() {
		return pCancelDate;
	}


	public void setpCancelDate(String pCancelDate) {
		this.pCancelDate = pCancelDate;
	}


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}
	
	
	
	
}
