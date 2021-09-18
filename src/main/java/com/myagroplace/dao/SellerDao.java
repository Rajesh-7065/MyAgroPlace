
package com.myagroplace.dao;

import com.myagroplace.entities.Seller;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

//DAO - DATA ACCESS OBJECT
public class SellerDao {
    private SessionFactory factory;

    public SellerDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //get seller by email and password
    public Seller getSellerByEmailandPassword(String email,String password){
        Seller seller = null;
        try{
            String query = "from Seller where seller_Email_Id =:e and seller_Password =:p ";
            Session session = this.factory.openSession(); //CREATES A HYBERNATE SESSION TO INTERACT WITH DATABASE
            Query q = session.createQuery(query); //Session IS INTERFACE, session IS REF. VARIABLE WHICH CALLS THIS METHOD TO CREATE A QUERY
            q.setParameter("e",email);
            q.setParameter("p",password);
            seller = (Seller) q.uniqueResult();  //CREATES THE QUERY RESULTS AND RETURNS ARE TYPECASTED TO SELLER OBJECT
            
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return seller;
    }
    
    public Seller getSellerByEmail(String email){
        Seller s = null;
        try{
            String query = "from Seller where seller_Email_Id =:e";
            Session session = this.factory.openSession(); //CREATES A HYBERNATE SESSION TO INTERACT WITH DATABASE
            Query q = session.createQuery(query); //Session IS INTERFACE, session IS REF. VARIABLE WHICH CALLS THIS METHOD TO CREATE A QUERY
            q.setParameter("e",email);
            s = (Seller) q.uniqueResult();  //CREATES THE QUERY RESULTS AND RETURNS ARE TYPECASTED TO SELLER OBJECT
            
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return s;
    }
}
