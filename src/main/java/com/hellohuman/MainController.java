package com.hellohuman;

//import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {
	@GetMapping("/omikuji")
	public String index()
	{    
		return "index";
	}
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String form(HttpSession session,
	    @RequestParam(value="number") Integer number,
	    @RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="thing") String thing,
		@RequestParam(value="message") String message) {
		
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("message", message);
		
	    return "redirect:/omikuji/show";
	}
	@RequestMapping("/omikuji/show")
	public String submit(HttpSession session, Model model) {
		Integer num = (Integer) session.getAttribute("number");
		model.addAttribute("number", num);
		String city = (String) session.getAttribute("city");
		model.addAttribute("city", city);
		String person = (String) session.getAttribute("person");
		model.addAttribute("person", person);
		String hobby = (String) session.getAttribute("hobby");
		model.addAttribute("hobby", hobby);
		String thing = (String) session.getAttribute("thing");
		model.addAttribute("thing", thing);
		String message = (String) session.getAttribute("message");
		model.addAttribute("message", message);
		
		return "message";
	}
	
}

