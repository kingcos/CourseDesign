package com.maimieng.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.maimieng.entity.User;

public class UserDaoImpl implements UserDao {
	
	private SessionFactory sessionFactory;
	
	public boolean register(User user) {
		boolean result = false;
		String usernameHql = "from user where username=?";
		Query query = sessionFactory.getCurrentSession().createQuery(usernameHql);
		query.setInteger(0, user.getUserid());
		if (query.uniqueResult() != null) {
			sessionFactory.getCurrentSession().save(user);
			result = true;
		}
		return result;
	}

	public boolean login(User user) {
		boolean result = false;
		String loginHql = "from user where username=? and userpassword=?";
		Query query = sessionFactory.getCurrentSession().createQuery(loginHql);
		query.setInteger(0, user.getUserid());
		query.setString(1, user.getUserpassword());
		if (query.uniqueResult() != null) {
			result = true;
		}
		return result;
	}

}
