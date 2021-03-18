package com.baidu.tone.service;

import java.util.List;

import com.baidu.tnews.po.Tnews;
import com.baidu.tone.po.Tone;

public interface ToneService {

	public List<Tone> queryTone();
	
	public int insertTone(Tone tone);
	
	public List<Tone> findById(Integer tid);
	
	public int updateTone(Tone tone);
	
	public int deleteTone(Integer tid,String userName);
}
