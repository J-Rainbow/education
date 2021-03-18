package com.baidu.sdynamics.service;

import java.util.List;

import com.baidu.sdynamics.po.Sdynamics;

public interface SdynamicsService {

	public List<Sdynamics> querySdy();
	
	public int insertSdy(Sdynamics sdynamics);
	
	public List<Sdynamics> findById(Integer sid);
	
	public int updateSdy(Sdynamics sdynamics);
	
	public int deleteSdy(Integer sid,String userName);
}
