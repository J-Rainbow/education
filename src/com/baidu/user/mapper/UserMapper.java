package com.baidu.user.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.user.po.User;


public interface UserMapper {
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public int logUser(User user);
	
	/**
	 * 注册查询用户名
	 * @param user
	 * @return
	 */
	public int regUser(String uname);
	
	/**
	 * 注册
	 * @param user
	 * @return
	 */
	public int regInsertUser(User user);
	
	/**
	 * 用户信息
	 * @return
	 */
	public List<User> queryUser();

	/**
	 * 删除用户
	 * @param uid
	 * @return
	 */
	public int deleteUser(@Param("uid")Integer uid,@Param("userName")String userName);
	
	/**
	 * 通过id查询
	 * @param uid
	 * @return
	 */
	public List<User> findById(int uid);

	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	public int updateUser(User user);
}
