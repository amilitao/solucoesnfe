package br.com.atacadao.solucoesnfe.model.dao;

import java.util.List;

import br.com.atacadao.solucoesnfe.builders.StatusBuilder;
import br.com.atacadao.solucoesnfe.model.Status;

public class StatusDaoTest {
	
	
	public void listaDeStatusTest() {
		
		StatusDao statusDao = new StatusDao();
		
		List<Status> lista = StatusBuilder.newStatus().mais(3).buildAll();
		
	}

}
