package com.baidu.ttwo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.ttwo.po.Ttwo;

public interface TtwoMapper {

	/**
	 * 查询
	 * @return
	 */
	public List<Ttwo> queryTtwo();
	
	/**
	 * 添加
	 * @param Tnewsnamics
	 * @return
	 */
	public int insertTtwo(Ttwo ttwo);
	
	/**
	 * 根据id查询
	 * @param sid
	 * @return
	 */
	public List<Ttwo> findById(Integer rid);
	
	/**
	 * 修改
	 * @param Tnewsnamics
	 * @return
	 */
	public int updateTtwo(Ttwo ttwo);
	
	/**
	 * 删除
	 * @param uid
	 * @param userName
	 * @return
	 */
	public int deleteTtwo(@Param("rid")Integer rid,@Param("userName")String userName);
	
}
