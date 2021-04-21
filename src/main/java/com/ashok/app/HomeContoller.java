package com.ashok.app;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeContoller {

	@RequestMapping("/")
	public String home() {
		return "Welcome to Spring boot running as a microservice!";
	}
}
