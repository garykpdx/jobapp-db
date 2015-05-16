package com.garykrug.jobapp.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.beans.factory.annotation.Autowired;


@Entity
@Table(name = "jobapp")
public class JobApp {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Size(min = 4, max = 100)
	private String title;
	
	@Column(name = "job_number")
	private String jobNumber;
	
	@Autowired
	@Column(name = "applied_dt")
	@Temporal(TemporalType.DATE)
	private Date appliedDate;
	
	@NotBlank
	private String status;
	private String company;
	private String location;
	
	
	public JobApp() {
		
	}
	
	
	public JobApp(String title, String jobNumber, Date appliedDate, String status, String company, String location) {
		this.title = title;
		this.jobNumber = jobNumber;
		this.appliedDate = appliedDate;
		this.status = status;
		this.company = company;
		this.location = location;
	}
	
	
	public JobApp(long id, String title, String jobNumber, Date appliedDate, String status, String company,
					String location) {
		this.id = id;
		this.title = title;
		this.jobNumber = jobNumber;
		this.appliedDate = appliedDate;
		this.status = status;
		this.company = company;
		this.location = location;
	}
	
	
	public long getId() {
		return id;
	}
	
	
	public void setId(long id) {
		this.id = id;
	}
	
	
	public String getTitle() {
		return title;
	}
	
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	public String getJobNumber() {
		return jobNumber;
	}
	
	
	public void setJobNumber(String jobNumber) {
		this.jobNumber = jobNumber;
	}
	
	
	public Date getAppliedDate() {
		return appliedDate;
	}
	
	
	public void setAppliedDate(Date appliedDate) {
		this.appliedDate = appliedDate;
	}
	
	
	public String getStatus() {
		return status;
	}
	
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	public String getCompany() {
		return company;
	}
	
	
	public void setCompany(String company) {
		this.company = company;
	}
	
	
	public String getLocation() {
		return location;
	}
	
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	
	@Override
	public String toString() {
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yy");
		StringBuilder builder = new StringBuilder();
		builder.append("JobApp [id=");
		builder.append(id);
		builder.append(", title=");
		builder.append(title);
		builder.append(", jobNumber=");
		builder.append(jobNumber);
		builder.append(", appliedDate=");
		builder.append(dateFormat.format(appliedDate));
		builder.append(", status=");
		builder.append(status);
		builder.append(", company=");
		builder.append(company);
		builder.append(", location=");
		builder.append(location);
		builder.append("]");
		
		return builder.toString();
	}
	
}
