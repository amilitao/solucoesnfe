package br.com.atacadao.solucoesnfe.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.atacadao.solucoesnfe.model.Usuario;


@Repository
public class UsuarioDAO implements UserDetailsService {

	@PersistenceContext
	private EntityManager em;
	
	public void save(Usuario usuario) {
		em.persist(usuario);
	}
	public void remove(Usuario usuario) {
		em.remove(usuario);
	}

	public void update(Usuario usuario) {
		em.merge(usuario);
	}	

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String jpql = "select u from Usuario u where u.login = :login";

		List<Usuario> users = em.createQuery(jpql, Usuario.class).setParameter("login", username).getResultList();
		if (users.isEmpty()) {
			throw new UsernameNotFoundException("O usuario " + username + " não existe");
		}
		
		return users.get(0);

	}	
	
	public List<Usuario> listUserByLogin(String login) {
		return em.createQuery("select distinct(u) from Usuario u where u.login = :login",
				Usuario.class).setParameter("login", login).getResultList();

	}
	
}