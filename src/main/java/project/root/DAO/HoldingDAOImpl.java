package project.root.DAO;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import project.root.model.Holding;

import java.util.List;

@Repository
@EnableTransactionManagement
public class HoldingDAOImpl implements HoldingDAO {

    @Autowired
    SessionFactory sessionFactory;


    @Override
    public void save(Holding holding) {

    }


    @Override
    public List<Holding> getHoldingsByParameter(String paramName, String paramValue) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        Query query = null;

        // only search by name if theSearchName is not empty
        if (paramValue != null && paramValue.trim().length() > 0) {

            // search for firstName or lastName
            query = currentSession.createQuery("from Holding ", Holding.class);

            query.setMaxResults(10);
//            query.setParameter(paramName, "%" + paramValue.toLowerCase() + "%");

        }

        // execute query and get result list
        List<Holding> holdings = query.getResultList();

        return holdings;
    }
}
