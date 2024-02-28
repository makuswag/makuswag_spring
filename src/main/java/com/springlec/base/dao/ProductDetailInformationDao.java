package com.springlec.base.dao;


import java.util.List;

import com.springlec.base.model.ProductDetailInformationDto;

public interface ProductDetailInformationDao {

	public ProductDetailInformationDto productdetail() throws Exception;
	public List<String> color() throws Exception;

	
}
