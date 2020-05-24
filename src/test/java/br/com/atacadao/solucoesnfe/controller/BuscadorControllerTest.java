package br.com.atacadao.solucoesnfe.controller;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;

import br.com.atacadao.solucoesnfe.model.Status;


public class BuscadorControllerTest {

	@Test
	public void test() {	
			
		Status status = new Status();
		
		Status procurado = new Status();
		
		status.setId_status(1L);
		status.setCodigo("99999");
		status.setDescricao("Nao catalogado");
		
		
		Set<Status> lista = new HashSet<>();
		
		lista.add(status);		
		
		procurado.setCodigo("9999");
		
		System.out.println(status.getCodigo());
		
		System.out.println(lista.contains(procurado));		
		
		
	
		
		
	}

}
