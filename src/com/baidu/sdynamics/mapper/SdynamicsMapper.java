package com.baidu.sdynamics.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.sdynamics.po.Sdynamics;

public interface SdynamicsMapper {

	/**
	 * 查询
	 * @return
	 */
	public List<Sdynamics> querySdy();
	
	/**
	 * 添加
	 * @param sdynamics
	 * @return
	 */
	public int insertSdy(Sdynamics sdynamics);
	
	/**
	 * 根据id查询
	 * @param sid
	 * @return
	 */
	public List<Sdynamics> findById(Integer sid);
	
	/**
	 * 修改
	 * @param sdynamics
	 * @return
	 */
	public int updateSdy(Sdynamics sdynamics);
	
	/**
	 * 删除
	 * @param uid
	 * @param userName
	 * @return
	 */
	public int deleteSdy(@Param("sid")Integer sid,@Param("userName")String userName);
	
}
