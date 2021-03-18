package com.baidu.enroll.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.enroll.po.Enroll;

public interface EnrollService {

	public List<Enroll> queryEnroll();
	
	public int insertEnroll(Enroll enroll);
	
	public List<Enroll> findById(Integer eid);
	
	public int updateEnoll(Enroll enroll);
	
	public int deleteEnroll(Integer eid,String userName);
}
