package br.com.atacadao.solucoesnfe.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.atacadao.solucoesnfe.model.dao.StatusDao;

@Controller
@RequestMapping("/buscador")
public class BuscadorController {
	
	@Autowired
	private StatusDao statusDao;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView busca() {		
		ModelAndView mav = new ModelAndView("buscador/busca-status");		
		return mav;
	
	}	
	
	@RequestMapping("/acesso-restrito")
	public ModelAndView acessoRestrito() {		
		return new ModelAndView("redirect:/buscador/");
	
	}	
	
	
	@RequestMapping("/busca-status") 
	public ModelAndView pesquisa(String codigo) {
		
		ModelAndView mav = new ModelAndView("buscador/busca-status");		
						
		mav.addObject("listaDeStatus", statusDao.listByCode(codigo));
		mav.addObject("codigo", codigo);
		
		return mav;
	}
	
	
	
	
}
