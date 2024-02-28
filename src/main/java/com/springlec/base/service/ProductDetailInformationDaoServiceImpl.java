package com.springlec.base.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.ProductDetailInformationDao;
import com.springlec.base.model.ProductDetailInformationDto;
@Service
public class ProductDetailInformationDaoServiceImpl implements ProductDetailInformationDaoService {

	
	@Autowired
	ProductDetailInformationDao dao;
	//사진 가져오는 리스트
	@Override
	public ProductDetailInformationDto productdetail(String proName) throws Exception {
		// TODO Auto-generated method stub
		return dao.productdetail(proName);
	}
	@Override
	public List<String> color(String proName) throws Exception {
		// TODO Auto-generated method stub
		return dao.color(proName);
	}
	
	@Override
	public void productPurchaseDao(int proSeq, String userId, int pPrice) throws Exception {
		// TODO Auto-generated method stub
		dao.productPurchaseDao(proSeq, userId, pPrice);
	}





		
	

}
