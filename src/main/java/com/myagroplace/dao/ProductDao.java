package com.myagroplace.dao;

import com.myagroplace.entities.Product;
import com.myagroplace.entities.Product_Category;
import com.myagroplace.entities.Seller;
import com.myagroplace.helper.FactoryProvider;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ProductDao {
    private SessionFactory factory;

    public ProductDao(SessionFactory factory) {
        this.factory = factory;
    }
    public boolean saveProduct(Product product)
    {
        boolean f = false;
        try {
           Session session = this.factory.openSession();
           Transaction tx = session.beginTransaction();
           
           session.save(product);
           tx.commit();
           session.close();
           f = true;
        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }
        return f;
    }
    
    //GET ALL PRODUCTS
    public List<Product> getAllProducts(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Product");
        List<Product> list = query.list();
        return list;
    }
    
    //GET ALL PRODUCTS OF GIVEN CATEGORY
    public List<Product> getAllProductsById(int cid){
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Product as p where p.category.categoryId =: id");
        query.setParameter("id", cid);
        List<Product> list = query.list();
        return list;
    }
}