package br.com.atacadao.solucoesnfe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {	
	

	@RequestMapping("/")
	public String home() {
		return "redirect:/status/";
	}	
	
	
	@RequestMapping("/acesso-restrito")
	public ModelAndView acessoRestrito() {		
		return new ModelAndView("redirect:/");
	
	}		
	
	

}
