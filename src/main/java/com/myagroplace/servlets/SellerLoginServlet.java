
package com.myagroplace.servlets;

import com.myagroplace.dao.SellerDao;
import com.myagroplace.entities.Seller;
import com.myagroplace.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SellerLoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            //fetching data
            String sellerEmail = request.getParameter("sellerEmail");
            String sellerPassword = request.getParameter("sellerPassword");
            
            //validations
            
            
            //authenticate seller
            SellerDao sellerDao = new SellerDao(FactoryProvider.getFactory());
            Seller seller = sellerDao.getSellerByEmailandPassword(sellerEmail, sellerPassword);
            //System.out.println(seller);
            HttpSession httpSession = request.getSession();
            
            if(seller == null)
            {
                httpSession.setAttribute("message","Invalid details");
                response.sendRedirect("sellerLogin.jsp");
                return;
            }else{
                out.println("<h1>Welcome "+seller.getSellerName()+"</h1>");
                
                //LOGIN FOR A PARTICULAR SESSION
                httpSession.setAttribute("current_seller", seller);
                
                //SELLER JSP PAGE
                response.sendRedirect("seller.jsp");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
