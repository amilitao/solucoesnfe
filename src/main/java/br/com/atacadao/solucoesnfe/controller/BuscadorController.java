package br.com.atacadao.solucoesnfe.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.atacadao.solucoesnfe.model.Status;
import br.com.atacadao.solucoesnfe.model.dao.StatusDao;

@Controller
@RequestMapping("/erros")
public class BuscadorController {
	
	@Autowired
	private StatusDao statusDao;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView busca() {		
		ModelAndView mav = new ModelAndView("buscador/busca-erro");		
		return mav;
	
	}
	
	@RequestMapping("/procura") 
	public ModelAndView pesquisa(String codigo) {
		
		ModelAndView mav = new ModelAndView("buscador/busca-erro");		
		Status status = statusDao.listByCode(codigo);				
		mav.addObject("status", status);
		
		return mav;
	}
	
	
}
