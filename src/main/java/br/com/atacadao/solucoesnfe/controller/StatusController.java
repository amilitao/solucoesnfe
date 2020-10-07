package br.com.atacadao.solucoesnfe.controller;


import java.util.Collections;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.atacadao.solucoesnfe.model.Status;
import br.com.atacadao.solucoesnfe.model.TipoDocumento;
import br.com.atacadao.solucoesnfe.model.TipoProcedimento;
import br.com.atacadao.solucoesnfe.model.dao.StatusDao;


@Controller
@Transactional
@RequestMapping("/status")
public class StatusController {
	
	@Autowired
	private StatusDao statusDao;
	

	@RequestMapping("/form")
	public ModelAndView form(Status status) {
		ModelAndView modelAndView = new ModelAndView("status/form");
						
		modelAndView.addObject("tiposDeDocumento", TipoDocumento.values());
		modelAndView.addObject("tiposDeProcedimento", TipoProcedimento.values());
		
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	@Cacheable(value = "listaDeStatus")
	public ModelAndView list() {
		
		ModelAndView modelAndView = new ModelAndView("status/list");
		List<Status> listaDeStatus = statusDao.list();	
		
		Collections.sort(listaDeStatus);
		
		modelAndView.addObject("listaDeStatus" , listaDeStatus);

		return modelAndView;
	}	
	
	
	@RequestMapping("/id/{id}") 
	@Cacheable(value = "detalheStatus")
	public ModelAndView detalhe(@PathVariable("id") Long id) {
		
		ModelAndView mav = new ModelAndView("status/detalhe");		
						
		mav.addObject("status", statusDao.find(id));
			
		return mav;
	}
	
		

	@RequestMapping(method = RequestMethod.POST)
	@CacheEvict(cacheNames = {"listaDeStatus", "detalheStatus"}, allEntries = true)
	public ModelAndView save(@Valid Status status, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {

		if (bindingResult.hasErrors()) {
			return form(status);
		}

		if (status.getId() == null) {
			
			statusDao.save(status);
			redirectAttributes.addFlashAttribute("sucesso", "Status código " 
			+ status.getCodigo() + " cadastrado com sucesso!");
			
		} else {
			
			statusDao.update(status);
			
			redirectAttributes.addFlashAttribute("sucesso", "Status código " 
			+ status.getCodigo() + " atualizado com sucesso!");
		}
		
		return new ModelAndView("redirect:/status");
	}
	
	@RequestMapping("/editar/{id}")
	public ModelAndView update(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {

		ModelAndView mav = new ModelAndView("status/form");
		Status status = statusDao.find(id);

		mav.addObject("status", status);
		mav.addObject("tiposDeProcedimento", TipoProcedimento.values());
		

		redirectAttributes.addFlashAttribute("sucesso", "Status atualizado com sucesso");

		return mav;
	}
}
