package com.viagorb.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.viagorb.dao.UserDaoImpl;
import com.viagorb.model.Login;
import com.viagorb.model.User;

public class UserService {

	@Autowired
	UserDaoImpl userDao;
	public User validateUser(Login login) {
		
		return userDao.validateUser(login);
	}

	public void register(User user) {

		userDao.register(user);
		
	}

}
