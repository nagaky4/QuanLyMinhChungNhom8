package com.quypt.pack.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorPageController {

	@GetMapping("/errorpage")
	public String error()
	{
		return "ErrorPage";
	}
}
