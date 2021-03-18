package com.baidu.sdynamics.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.sdynamics.mapper.SdynamicsMapper;
import com.baidu.sdynamics.po.Sdynamics;

@Service
public class SdynamicsServiceImpl implements SdynamicsService{

	@Resource
	private SdynamicsMapper sdynamicsMapper;

	public List<Sdynamics> querySdy() {
		return sdynamicsMapper.querySdy();
	}

	public int insertSdy(Sdynamics sdynamics) {
		return sdynamicsMapper.insertSdy(sdynamics);
	}

	public List<Sdynamics> findById(Integer sid) {
		return sdynamicsMapper.findById(sid);
	}

	public int updateSdy(Sdynamics sdynamics) {
		return sdynamicsMapper.updateSdy(sdynamics);
	}

	public int deleteSdy(Integer sid, String userName) {
		return sdynamicsMapper.deleteSdy(sid, userName);
	}
	
	
}
