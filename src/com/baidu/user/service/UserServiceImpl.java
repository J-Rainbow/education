package com.baidu.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.user.mapper.UserMapper;
import com.baidu.user.po.User;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;
	
	public int logUser(User user) {
		return userMapper.logUser(user);
	}

	public int regUser(String uname) {
		return userMapper.regUser(uname);
	}
	
	public List<User> queryUser() {
		return userMapper.queryUser();
	}

	public int regInsertUser(User user) {
		return userMapper.regInsertUser(user);
	}

	public int deleteUser(Integer uid, String userName) {
		return userMapper.deleteUser(uid, userName);
	}

	public List<User> findById(Integer uid) {
		return userMapper.findById(uid);
	}

	public int updateUser(User user) {
		return userMapper.updateUser(user);
	}



}
