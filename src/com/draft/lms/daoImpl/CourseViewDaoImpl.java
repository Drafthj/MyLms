package com.draft.lms.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.draft.lms.dao.CourseViewDao;
import com.draft.lms.domain.CourseViewData;
@Repository
public class CourseViewDaoImpl implements CourseViewDao{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public CourseViewData get(int userid, int courseid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		CourseViewData c = new CourseViewData();
		c.setUserid(userid);
		c.setCourseid(courseid);
		CourseViewData result = (CourseViewData) session.get(CourseViewData.class, c);
		session.close();
		return result;
	}

	@Override
	public boolean insert(CourseViewData courseViewData) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			session.saveOrUpdate(courseViewData);
			transaction.commit();
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}

		return true;
	}

}
