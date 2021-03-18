package com.baidu.enroll.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.enroll.mapper.EnrollMapper;
import com.baidu.enroll.po.Enroll;

@Service
public class EnrollServiceImpl implements EnrollService {

	@Resource
	private EnrollMapper enrollMapper;
	
	public List<Enroll> queryEnroll() {
		return enrollMapper.queryEnroll();
	}

	public int insertEnroll(Enroll enroll) {
		return enrollMapper.insertEnroll(enroll);
	}

	public List<Enroll> findById(Integer eid) {
		return enrollMapper.findById(eid);
	}

	public int updateEnoll(Enroll enroll) {
		return enrollMapper.updateEnoll(enroll);
	}

	public int deleteEnroll(Integer eid, String userName) {
		return enrollMapper.deleteEnroll(eid, userName);
	}
	
}
