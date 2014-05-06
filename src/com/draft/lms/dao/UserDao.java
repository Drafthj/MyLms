package com.draft.lms.dao;

import java.util.List;

import com.draft.lms.domain.User;



public interface UserDao {
	public User getByName(String name);
	public boolean insert(User user);
	public List<User> getAll();
}
