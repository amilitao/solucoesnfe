package br.com.atacadao.solucoesnfe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.atacadao.solucoesnfe.model.Status;


@Controller
@RequestMapping("/status")
public class StatusController {
	

	@RequestMapping("/form")
	public ModelAndView form(Status status) {
		ModelAndView modelAndView = new ModelAndView("status/form");

		return modelAndView;
	}
}
