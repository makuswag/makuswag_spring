package com.springlec.base.dao;


import java.util.List;

import com.springlec.base.model.ProductDetailInformationDto;

public interface ProductDetailInformationDao {
	//상세페이지 정보 불러오기
	public ProductDetailInformationDto productdetail(String proName) throws Exception;
	//상품색깔
	public List<String> color(String proName) throws Exception;
	//상품구매(insert)
	public void productPurchaseDao(int proSeq,String userId,int pPrice) throws Exception;	
	//재고 수량 업데이트
    public void updateProductQuantity(int proSeq) throws Exception;

}
