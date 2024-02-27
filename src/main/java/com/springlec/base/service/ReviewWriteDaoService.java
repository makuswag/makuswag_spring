package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.MyPageDto;
import com.springlec.base.model.ReviewWriteDto;

public interface ReviewWriteDaoService {
    public ReviewWriteDto getReviewWriteDao(String proName) throws Exception;
    public void reviewWriteDao(int proSeq,String userId,String revTitle, String revContent) throws Exception;	


}
