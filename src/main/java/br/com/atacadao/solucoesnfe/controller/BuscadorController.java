package br.com.atacadao.solucoesnfe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/buscador")
public class BuscadorController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView busca() {
		
		ModelAndView modelAndView = new ModelAndView("buscador/busca-erro");
		return modelAndView;
	
	}
	
	
}
