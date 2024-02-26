package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springlec.base.dao.QnaDao;
import com.springlec.base.model.QnaDto;

@Service
public class QnaDaoServiceImpl implements QnaDaoService {

	@Autowired
	QnaDao dao;

	@Override
	public List<QnaDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
		return dao.listDao(startIdx, numOfTuplePerPage);
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}

	@Override
	public List<QnaDto> searchQna(int requestPage, int numOfTuplePerPage, String keyword, String searchType)
			throws Exception {
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
        return dao.searchQna(startIdx, numOfTuplePerPage, keyword, searchType);
	}


	@Override
	public List<QnaDto> listQuery(String query, String content) throws Exception {
		// TODO Auto-generated method stub
		content = '%' + content + '%';
		return dao.listQuery(query, content);
	}

}
