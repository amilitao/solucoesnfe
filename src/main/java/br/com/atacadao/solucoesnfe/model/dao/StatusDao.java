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
	
	public void save(Status status){
		manager.persist(status);
	}
	
	public void update(Status status) {
		manager.merge(status);
	}
	
	public void remove(Status status) {
		manager.remove(status);
	}
	
	public Status find(Long id) {		
		return manager.createQuery("select s from Status s join fetch s.procedimentos where s.id = :id",
				Status.class).setParameter("id", id).getSingleResult();
	
	}
	
	public List<Status> list() {
		return manager.createQuery("select distinct(s) from Status s join fetch s.procedimentos",
				Status.class).getResultList();
	}

	public List<Status> listByCode(String codigo) {
		return manager.createQuery("select distinct(s) from Status s join fetch s.procedimentos where s.codigo = :codigo ",
				Status.class).setParameter("codigo", codigo ).getResultList();
	}

}
