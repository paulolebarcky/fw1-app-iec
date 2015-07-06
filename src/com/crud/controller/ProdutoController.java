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

    public List<Object[]> countProdutoPorPercentual() {

        EntityManager em = getEntityManager();
        List<Object[]> results = null;

        try {

            results = em.createNativeQuery(" select A.total ATE_20, B.total ATE_40, C.total ATE_60, D.total MAIS_60, E.total TOTAL from \n"
                    + "(select count(*) as total from produto where percentual > 80 and preco > 0) A,\n"
                    + "(select count(*) as total from produto where percentual between 60 and 80 and preco > 0) B,\n"
                    + "(select count(*) as total from produto where percentual between 40 and 60 and preco > 0) C,\n"
                    + "(select count(*) as total from produto where percentual < 40 and preco > 0) D,\n"
                    + "(select count(*) as total from produto where preco > 0) E").getResultList();

        } finally {
            em.close();
        }

        return results;

    }
}
