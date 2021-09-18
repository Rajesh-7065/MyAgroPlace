package com.myagroplace.dao;

import com.myagroplace.entities.Product_Category;
import com.myagroplace.entities.Seller;
import com.myagroplace.helper.FactoryProvider;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class CategoryDao {
    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //saves the category to the db
    public int saveCategory(Product_Category cat){
        //Product_Category product_category = null;
        try{
           
           Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
 
 
        int catId = (int) session.save(cat);

        tx.commit();
        
        
        session.close(); 
        return catId;
        }catch(Exception e)
         {
             e.printStackTrace();
         }
        return 0;
        
    }
    public List<Product_Category> getCategories(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Product_Category");
        List<Product_Category> list = query.list();
        return list;
    }
    
    public Product_Category getCategoryById(int c_Id) {
        Product_Category cat = null;
        try {
            Session session = this.factory.openSession();
            cat = session.get(Product_Category.class, c_Id);
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cat;
    }
}