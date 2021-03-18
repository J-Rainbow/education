package com.baidu.tnews.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.tnews.po.Tnews;

public interface TnewsMapper {

	/**
	 * 查询
	 * @return
	 */
	public List<Tnews> queryTnews();
	
	/**
	 * 添加
	 * @param Tnewsnamics
	 * @return
	 */
	public int insertTnews(Tnews tnews);
	
	/**
	 * 根据id查询
	 * @param sid
	 * @return
	 */
	public List<Tnews> findById(Integer tid);
	
	/**
	 * 修改
	 * @param Tnewsnamics
	 * @return
	 */
	public int updateTnews(Tnews tnews);
	
	/**
	 * 删除
	 * @param uid
	 * @param userName
	 * @return
	 */
	public int deleteTnews(@Param("tid")Integer tid,@Param("userName")String userName);
	
}
