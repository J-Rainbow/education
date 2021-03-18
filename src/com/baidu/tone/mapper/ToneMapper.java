package com.baidu.tone.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.tnews.po.Tnews;
import com.baidu.tone.po.Tone;

public interface ToneMapper {

	/**
	 * 查询
	 * @return
	 */
	public List<Tone> queryTone();
	
	/**
	 * 添加
	 * @param Tnewsnamics
	 * @return
	 */
	public int insertTone(Tone tone);
	
	/**
	 * 根据id查询
	 * @param sid
	 * @return
	 */
	public List<Tone> findById(Integer tid);
	
	/**
	 * 修改
	 * @param Tnewsnamics
	 * @return
	 */
	public int updateTone(Tone tone);
	
	/**
	 * 删除
	 * @param uid
	 * @param userName
	 * @return
	 */
	public int deleteTone(@Param("tid")Integer tid,@Param("userName")String userName);
	
}
