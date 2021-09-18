
package com.myagroplace.dao;

import com.myagroplace.entities.Contract;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class ContractDao {
    private SessionFactory factory;
    
    public ContractDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //GET ALL PRODUCTS
    public List<Contract> getAllContracts(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Contract");
        List<Contract> list = query.list();
        return list;
    }
}
