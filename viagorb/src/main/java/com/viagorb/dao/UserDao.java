package com.viagorb.dao;

import com.viagorb.model.Login;

import com.viagorb.model.User;

public interface UserDao {

  void register(User user);

  User validateUser(Login login);

}