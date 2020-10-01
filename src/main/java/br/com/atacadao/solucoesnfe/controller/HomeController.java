package br.com.atacadao.solucoesnfe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.atacadao.solucoesnfe.model.dao.StatusDao;

@Controller
public class HomeController {
	
	@Autowired
	private StatusDao statusDao;	

	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	
	
	@RequestMapping("/acesso-restrito")
	public ModelAndView acessoRestrito() {		
		return new ModelAndView("redirect:/");
	
	}	
	
	
	@RequestMapping("/pesquisa") 
	@Cacheable(value = "pesquisaStatus")
	public ModelAndView pesquisa(String codigo) {
		
		ModelAndView mav = new ModelAndView("home");		
						
		mav.addObject("listaDeStatus", statusDao.listByCode(codigo));
		mav.addObject("codigo", codigo);
		
		return mav;
	}
	

}
