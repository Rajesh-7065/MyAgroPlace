
package com.myagroplace.servlets;

import com.myagroplace.dao.SellerDao;
import com.myagroplace.entities.Seller;
import com.myagroplace.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;


@WebServlet(name = "SellerRegisterServlet", urlPatterns = {"/SellerRegisterServlet"})
public class SellerRegisterServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try{
                
                String sname = request.getParameter("sname");
                String sgender = request.getParameter("sgender");
                String saddress = request.getParameter("saddress");
                String spincode = request.getParameter("spincode");
                String smobile = request.getParameter("smobile");
                String semail = request.getParameter("semail");
                String susername = request.getParameter("susername");
                String spassword = request.getParameter("spassword");
                
                //validation
                if(sname.isEmpty()){
                    out.println("Name is blank!!");
                    return;
                }
                
                //Validating Email
                SellerDao sellerDao = new SellerDao(FactoryProvider.getFactory());
            Seller s = sellerDao.getSellerByEmail(semail);
            //System.out.println(seller);
            HttpSession httpSession = request.getSession();
            
            if(s != null)
            {
                httpSession.setAttribute("message","Email already exists");
                response.sendRedirect("registerSeller.jsp");
                return;
            }else{
                
                //creating seller object to store data
                Seller seller = new Seller(sname, sgender, saddress, spincode, smobile, semail, susername, spassword);
                
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();
                int sellerId = (int) hibernateSession.save(seller);
                tx.commit();
                hibernateSession.close();
                
                //HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message","Registration Successful!! Seller Id: " + sellerId);
                response.sendRedirect("registerSeller.jsp");
                return;
            }
                
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
