package com.kelly.EngToolbox.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kelly.EngToolbox.models.User;
import com.kelly.EngToolbox.services.UserService;

@Controller
public class HomeController{
	@Autowired
	private UserService uService;
	
	@RequestMapping("/")
	public String home(HttpSession session, Model viewModel, User user) {
		if (session.getAttribute("user_id")!= null ) {
			User u = uService.findUserById((Long) session.getAttribute("user_id"));
			viewModel.addAttribute("user", u);
			}
		return "home.jsp";
	}
	@RequestMapping("/physics")
	public String physics(HttpSession session, Model viewModel, User user) {
		if (session.getAttribute("user_id")!= null ) {
			User u = uService.findUserById((Long) session.getAttribute("user_id"));
			viewModel.addAttribute("user", u);
			}
		return "physics.jsp";
	}
	@RequestMapping("/projectile-motion")
	public String proMo() {
		return "ProjectileMotion.jsp";
	}
	@RequestMapping("/electricity")
	public String electricity(HttpSession session, Model viewModel, User user) {
		if (session.getAttribute("user_id")!= null ) {
			User u = uService.findUserById((Long) session.getAttribute("user_id"));
			viewModel.addAttribute("user", u);
			}
		return "electricity.jsp";
	}
	@RequestMapping("/thermodynamics")
	public String thermodynamics(HttpSession session, Model viewModel, User user) {
		if (session.getAttribute("user_id")!= null ) {
			User u = uService.findUserById((Long) session.getAttribute("user_id"));
			viewModel.addAttribute("user", u);
			}
		return "thermo.jsp";
	}
	@RequestMapping("/fluid-mechanics")
	public String fluidMech(HttpSession session, Model viewModel, User user) {
		if (session.getAttribute("user_id")!= null ) {
			User u = uService.findUserById((Long) session.getAttribute("user_id"));
			viewModel.addAttribute("user", u);
			}
		return "fluids.jsp";
	}
}