package com.springlec.base.service;



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
	public ProductDetailInformationDto productdetail() throws Exception {
		// TODO Auto-generated method stub
		return dao.productdetail();
	}





		
	

}
