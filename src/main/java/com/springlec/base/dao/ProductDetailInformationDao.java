package com.springlec.base.dao;


import java.util.List;

import com.springlec.base.model.ProductDetailInformationDto;

public interface ProductDetailInformationDao {
	//상세페이지 정보 불러오기
	public ProductDetailInformationDto productdetail() throws Exception;
	//상품색깔
	public List<String> color() throws Exception;
	//상품구매(insert)
	public void reviewWriteDao(int proSeq,String userId,String revTitle, String revContent) throws Exception;	

	
}
