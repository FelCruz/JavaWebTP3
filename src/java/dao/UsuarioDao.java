/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidade.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author cz
 */

public class UsuarioDao  {
     
    public List<Usuario> consultarTodosUsuarios() {        
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("LoginUsersPU");
        EntityManager em = factory.createEntityManager();
        
        em.getTransaction().begin();
        Query q = em.createNamedQuery("Usuario.findAll");        
        List<Usuario> todosUsuarios = q.getResultList();        
        return todosUsuarios;        
    }
    
    public void cadastrarPessoa(Usuario usuario) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("LoginUsersPU");
        EntityManager em = factory.createEntityManager();

        em.getTransaction().begin();
        em.persist(usuario);
        em.getTransaction().commit();
        em.close();
    }
}
