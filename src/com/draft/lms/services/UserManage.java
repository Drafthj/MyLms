package com.draft.lms.services;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.draft.lms.dao.UserDao;
import com.draft.lms.domain.User;

@Component
public class UserManage {
	@Autowired
	private UserDao userDao;
	
	public boolean loginCheck(String username,String password){
		User u = userDao.getByName(username);
		if(u==null)
			return false;
		else {
			if(u.getPassword().equals(password))
				return true;
			else 
				return false;
		}
	}
	
}
