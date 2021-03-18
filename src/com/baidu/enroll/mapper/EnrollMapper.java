package com.baidu.enroll.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.enroll.po.Enroll;

public interface EnrollMapper {
	
	/**
	 * 查询报名信息
	 * @return
	 */
	public List<Enroll> queryEnroll();
	
	/**
	 * 添加报名信息
	 * @param enroll
	 * @return
	 */
	public int insertEnroll(Enroll enroll);
	
	/**
	 * 通过id查询
	 * @param eid
	 * @return
	 */
	public List<Enroll> findById(Integer eid);
	
	/**
	 * 修改
	 * @param enroll
	 * @return
	 */
	public int updateEnoll(Enroll enroll);
	
	/**
	 * 删除
	 * @param eid
	 * @param userName
	 * @return
	 */
	public int deleteEnroll(@Param("eid")Integer eid,@Param("userName")String userName);
}
