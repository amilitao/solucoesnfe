package br.com.atacadao.solucoesnfe.controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import br.com.atacadao.solucoesnfe.conf.JPAConfiguration;
import br.com.atacadao.solucoesnfe.model.Status;

public class TestaEntityManager {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new AnnotationConfigApplicationContext(JPAConfiguration.class);
		EntityManagerFactory entityManagerFactory = ctx.getBean(EntityManagerFactory.class);
		
		EntityManager em = entityManagerFactory.createEntityManager();
		
		Status status = em.find(Status.class, 1L);
		
		em.close();
		
		System.out.println(status.getCodigo());
		System.out.println(status.getDescricao());
		
		
	}

}
