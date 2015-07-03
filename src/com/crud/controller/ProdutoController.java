/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crud.controller;

import static com.crud.entity.PersistenceManager.getEntityManager;
import com.crud.entity.Produto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author root
 */
public class ProdutoController extends PrincipalController<Produto> {

    public ProdutoController(Produto t) {
        super(t);
    }

    public List<Produto> findProdutosPorPercentual(int percent, int maxResults) {
        EntityManager em = getEntityManager();

        try {
            Query q = em.createQuery("SELECT p FROM Produto p WHERE p.percentual < :percentual and p.preco > 0");
            q.setParameter("percentual", percent);
            q.setMaxResults(maxResults);
            return q.getResultList() != null ? (List<Produto>) q.getResultList() : null;
        } finally {
            em.close();
        }
    }

}
