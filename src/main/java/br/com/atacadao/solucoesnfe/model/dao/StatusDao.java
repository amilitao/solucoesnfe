package br.com.atacadao.solucoesnfe.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class StatusDao {
	
	@PersistenceContext
	private EntityManager manager;

}
