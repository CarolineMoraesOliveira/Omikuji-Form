package com.caroline.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	@GetMapping("/")
	public String index () {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String omikuji () {
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String show (HttpSession session, Model model) {
		
	String resultShow = (String) session.getAttribute("result");
	model.addAttribute("resultShow", resultShow);
	
		return "show.jsp";
	}

	@PostMapping("/Send")
	public String send(
		@RequestParam(value="number") int number,
	    @RequestParam(value="city") String city, 
	 	@RequestParam(value="name") String name,
	 	@RequestParam(value="hobby") String hobby,
	 	@RequestParam(value="living") String living,
	 	@RequestParam(value="nice") String nice, 
	 	HttpSession session) {
		
	String result = String.format("In %s years, you will live in %s with %s as your rommmate, %s for a living. The next time you see a %s, you will have good luck. Also, %s.", 
			number, city, name, hobby, living, nice);
	
	session.setAttribute("result", result);
		
		return "redirect:/omikuji/show";
	}
	
}
