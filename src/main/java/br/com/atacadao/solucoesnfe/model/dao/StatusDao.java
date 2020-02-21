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
	
	public void save(Status servidor){
		manager.persist(servidor);
	}
	
	public void update(Status servidor) {
		manager.merge(servidor);
	}
	
	public void remove(Status servidor) {
		manager.remove(servidor);
	}
	
	public Status find(Long id) {
		return manager.find(Status.class, id);
	}
	
	public List<Status> list() {
		return manager.createQuery("select distinct(s) from Status s",
				Status.class).getResultList();
	}

	public List<Status> listByCode(String codigo) {
		return manager.createQuery("select distinct(s) from Status s where s.codigo = :codigo ",
				Status.class).setParameter("codigo", codigo ).getResultList();
	}

}
