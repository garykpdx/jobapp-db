package com.garykrug.jobapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.garykrug.jobapp.dao.JobApp;
import com.garykrug.jobapp.dao.JobAppDao;


@Service("jobAppService")
public class JobAppService {
	
	private JobAppDao jobAppDao;
	
	
	public List<JobApp> getAllJobApps() {
		return jobAppDao.getAllJobApps();
	}
	
	public List<JobApp> getJobAppsByCompany(String companyName) {
		return jobAppDao.getJobAppsByCompany(companyName);
	}
	
	
	@Autowired
	public void setJobAppDao(JobAppDao jobAppDao) {
		this.jobAppDao = jobAppDao;
	}

	public void createJobApp(JobApp jobApp) {
		System.out.println("Sending creation signal for object: " + jobApp);
		jobAppDao.createJobApp(jobApp);
	}
}
