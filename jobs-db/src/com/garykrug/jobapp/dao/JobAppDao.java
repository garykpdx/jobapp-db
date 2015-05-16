package com.garykrug.jobapp.dao;

import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Component("jobAppDao")
public class JobAppDao {
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setDataSource(DataSource source) {
		this.jdbc = new NamedParameterJdbcTemplate(source);
	}
	
	public void createJobApp(JobApp jobApp) {
		System.out.println("Saving object to database: " + jobApp);
		session().save(jobApp);
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<JobApp> getAllJobApps() {
		return session().createQuery("from JobApp").list();
	}
	
	@Transactional
	public List<JobApp> getJobAppsByCompany(String companyName) {
		Criteria criteria = session().createCriteria(JobApp.class);
		criteria.add(Restrictions.eq("company", companyName));
		return criteria.list();
	}
	
	private Session session() {
		return sessionFactory.getCurrentSession();
	}
}
