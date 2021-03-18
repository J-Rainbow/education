package com.baidu.tone.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.tnews.po.Tnews;
import com.baidu.tone.mapper.ToneMapper;
import com.baidu.tone.po.Tone;


@Service
public class ToneServiceImpl implements ToneService{

	@Resource
	private ToneMapper toneMapper;

	public List<Tone> queryTone(){
		return toneMapper.queryTone();
	}

	public int insertTone(Tone tone) {
		return toneMapper.insertTone(tone);
	}

	public List<Tone> findById(Integer tid) {
		return toneMapper.findById(tid);
	}

	public int updateTone(Tone tone) {
		return toneMapper.updateTone(tone);
	}

	public int deleteTone(Integer tid, String userName) {
		return toneMapper.deleteTone(tid, userName);
	}
	
	
}
