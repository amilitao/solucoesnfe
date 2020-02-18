package br.com.atacadao.solucoesnfe.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.atacadao.solucoesnfe.model.Status;

@Repository
public class StatusDao {
	
	@PersistenceContext
	private EntityManager manager;
	
	public List<Status> list() {
		return manager.createQuery("select distinct(s) from Status s",
				Status.class).getResultList();
	}

}
