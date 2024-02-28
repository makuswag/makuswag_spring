package com.springlec.base.service;


import java.util.List;

import com.springlec.base.model.ProductDetailInformationDto;

public interface ProductDetailInformationDaoService {
	public ProductDetailInformationDto productdetail(String proName) throws Exception;
	public List<String> color(String proName) throws Exception;
	//상품구매(insert)
	public void productPurchaseDao(int proSeq,String userId,int pPrice) throws Exception;	

	 // 상품 수량 업데이트
    public void updateProductQuantity(int proSeq) throws Exception;

}
