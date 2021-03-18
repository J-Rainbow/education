package com.baidu.ttwo.service;

import java.util.List;

import com.baidu.ttwo.po.Ttwo;

public interface TtwoService {

	public List<Ttwo> queryTtwo();
	
	public int insertTtwo(Ttwo Ttwo);
	
	public List<Ttwo> findById(Integer rid);
	
	public int updateTtwo(Ttwo Ttwo);
	
	public int deleteTtwo(Integer rid,String userName);
}
