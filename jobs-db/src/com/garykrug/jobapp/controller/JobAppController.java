package com.garykrug.jobapp.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.garykrug.jobapp.dao.JobApp;
import com.garykrug.jobapp.service.JobAppService;


@Controller
public class JobAppController {
	
	@Autowired
	private JobAppService jobAppService;
	
	@RequestMapping("/")
	public String showHomePage(Model model) {	
		List<JobApp> jobApps = jobAppService.getAllJobApps();
		model.addAttribute("jobApps", jobApps);
		
		return "home";
	}
	
	@RequestMapping(value="/newapp")
	public String showNewAddApplicationPage(Model model) {
		model.addAttribute("jobApp", new JobApp());
		return "newapp";
	}
	
	@RequestMapping(value="/appcreated", method=RequestMethod.POST)
	public String showApplicationCreatedPage(Model model, @Valid JobApp jobApp, BindingResult result) {
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			
			return "newapp";
		}
		
		jobAppService.createJobApp(jobApp);
		
		return "appcreated";
	}
	
	@RequestMapping(value="/testing")
	public String showTestPage() {
		return "testing";
	}
}
