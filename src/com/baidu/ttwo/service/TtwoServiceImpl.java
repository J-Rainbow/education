package com.baidu.ttwo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.ttwo.mapper.TtwoMapper;
import com.baidu.ttwo.po.Ttwo;


@Service
public class TtwoServiceImpl implements TtwoService{

	@Resource
	private TtwoMapper TtwoMapper;

	public List<Ttwo> queryTtwo(){
		return TtwoMapper.queryTtwo();
	}

	public int insertTtwo(Ttwo ttwo) {
		return TtwoMapper.insertTtwo(ttwo);
	}

	public List<Ttwo> findById(Integer rid) {
		return TtwoMapper.findById(rid);
	}

	public int updateTtwo(Ttwo ttwo) {
		return TtwoMapper.updateTtwo(ttwo);
	}

	public int deleteTtwo(Integer rid, String userName) {
		return TtwoMapper.deleteTtwo(rid, userName);
	}
	
	
}
