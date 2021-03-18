package com.baidu.user.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.user.po.User;


public interface UserService {
	
	public int logUser(User user);
	
	public int regUser(String uname);
	
	public int regInsertUser(User user);
	
	public List<User> queryUser();
	
	public int deleteUser(Integer uid,String userName);
	
	public List<User> findById(Integer uid);
	
	public int updateUser(User user);
}
