package com.springbootbasics;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
public class UserController {

    @Autowired
    private UserRepository userData;

    	@GetMapping("/results")
    	public ModelAndView getPage() {
    		User usr = new User();
    		return new ModelAndView("searchUsers", "fn", usr);       
    	}

    	@PostMapping("/results")
    	public ModelAndView find(@RequestParam long id) {
    		User usr = userData.findById(id).get();
    		return new ModelAndView("results", "hello", usr);       
    	}
    	
    	@GetMapping("/editemp")
    	public ModelAndView getupdate(@RequestParam long id) {
    		User usr = userData.findById(id).get();
    		return new ModelAndView("update", "edit", usr);
    	}
    	@PostMapping("/editemp")
    	public RedirectView updateEmp(User usr) {
    		userData.save(usr);
    		return new RedirectView("listemp");
    	}
    
    	@GetMapping("/listemp")
    	public ModelAndView listEmp() {
    		List<User> allUsers = (List<User>) userData.findAll();
    		return new ModelAndView("allUsers","employee", allUsers);
    	}
}