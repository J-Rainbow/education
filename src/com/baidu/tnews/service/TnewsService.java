package com.baidu.tnews.service;

import java.util.List;

import com.baidu.tnews.po.Tnews;

public interface TnewsService {

	public List<Tnews> queryTnews();
	
	public int insertTnews(Tnews tnews);
	
	public List<Tnews> findById(Integer tid);
	
	public int updateTnews(Tnews tnews);
	
	public int deleteTnews(Integer tid,String userName);
}
