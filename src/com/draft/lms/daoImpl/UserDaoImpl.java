package com.draft.lms.daoImpl;

import java.util.List;







import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;



import org.springframework.stereotype.Component;

import com.draft.lms.dao.UserDao;
import com.draft.lms.domain.User;
@Component
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	public User getByName(String name){
		Session session = sessionFactory.openSession();
		List<User> users = (List<User>) session.createQuery("from User u where u.username=?").setString(1, name);
		session.close();
		if(users.size() == 0)
			return null;
			return users.get(0);
	}
	public List<User> getAll(){
		Session session = sessionFactory.openSession();
		List<User> users = (List<User>) session.createQuery("from User");
		session.close();
		if(users.size()  == 0)
			return null;
		return users;
	}
	@Override
	public boolean insert(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.saveOrUpdate(user);
			transaction.commit();
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}finally{
			session.close();
		}
		return true;
	}
}
