package com.springlec.base.model;

import com.springlec.base.controller.productDetailInformation;

public class ProductDetailInformationDto {

	int proSeq;
	String proCategory;
	String proName;
	String proGender;
	String proIntroduction;
	String proColor;
	String proQty;
	int proPrice;
	String proDate;
	String proImage1;
	String proImage2;
	String proImage3;
	
	public ProductDetailInformationDto() {
		// TODO Auto-generated constructor stub
	}

	
	@Override
    public String toString() {
        return "ProductDetailInformationDto{" +
                "proSeq=" + proSeq +
                ", proCategory='" + proCategory + '\'' +
                ", proName='" + proName + '\'' +
                ", proGender='" + proGender + '\'' +
                ", proIntroduction='" + proIntroduction + '\'' +
                ", proColor='" + proColor + '\'' +
                ", proQty='" + proQty + '\'' +
                ", proPrice=" + proPrice +
                ", proDate='" + proDate + '\'' +
                ", proImage1='" + proImage1 + '\'' +
                ", proImage2='" + proImage2 + '\'' +
                ", proImage3='" + proImage3 + '\'' +
                '}';
    }

	public int getProSeq() {
		return proSeq;
	}

	public void setProSeq(int proSeq) {
		this.proSeq = proSeq;
	}

	public String getProCategory() {
		return proCategory;
	}

	public void setProCategory(String proCategory) {
		this.proCategory = proCategory;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProGender() {
		return proGender;
	}

	public void setProGender(String proGender) {
		this.proGender = proGender;
	}

	public String getProIntroduction() {
		return proIntroduction;
	}

	public void setProIntroduction(String proIntroduction) {
		this.proIntroduction = proIntroduction;
	}

	public String getProColor() {
		return proColor;
	}

	public void setProColor(String proColor) {
		this.proColor = proColor;
	}

	public String getProQty() {
		return proQty;
	}

	public void setProQty(String proQty) {
		this.proQty = proQty;
	}

	public int getProPrice() {
		return proPrice;
	}

	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}

	public String getProDate() {
		return proDate;
	}

	public void setProDate(String proDate) {
		this.proDate = proDate;
	}

	public String getProImage1() {
		return proImage1;
	}

	public void setProImage1(String proImage1) {
		this.proImage1 = proImage1;
	}

	public String getProImage2() {
		return proImage2;
	}

	public void setProImage2(String proImage2) {
		this.proImage2 = proImage2;
	}

	public String getProImage3() {
		return proImage3;
	}

	public void setProImage3(String proImage3) {
		this.proImage3 = proImage3;
	}
	
	

}
