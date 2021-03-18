package com.baidu.tnews.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.tnews.mapper.TnewsMapper;
import com.baidu.tnews.po.Tnews;


@Service
public class TnewsServiceImpl implements TnewsService{

	@Resource
	private TnewsMapper tnewsMapper;

	public List<Tnews> queryTnews() {
		return tnewsMapper.queryTnews();
	}

	public int insertTnews(Tnews tnews) {
		return tnewsMapper.insertTnews(tnews);
	}

	public List<Tnews> findById(Integer tid) {
		return tnewsMapper.findById(tid);
	}

	public int updateTnews(Tnews tnews) {
		return tnewsMapper.updateTnews(tnews);
	}

	public int deleteTnews(Integer tid, String userName) {
		return tnewsMapper.deleteTnews(tid, userName);
	}
	
	
}
