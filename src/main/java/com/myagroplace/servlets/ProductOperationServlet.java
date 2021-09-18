package com.myagroplace.servlets;


import com.myagroplace.dao.CategoryDao;
import com.myagroplace.entities.Product_Category;
import com.myagroplace.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class ProductOperationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            try{
               
                //servlet 2:
            //add category
            //add product
            
            String op = request.getParameter("addcategory");
            String categoryTitle = request.getParameter("categoryTitle");
            
          
                
                /* Fetching Category Data */
            
            
            
            
            Product_Category product_category = new Product_Category();
            product_category.setCategoryTitle(categoryTitle);
            
            //catgeory database save
            CategoryDao categoryDao = new CategoryDao(FactoryProvider.getFactory());
            int catId = categoryDao.saveCategory(product_category);
            //out.println("Category Saved");
            
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message", "Category added successfully: "+catId);
            response.sendRedirect("seller.jsp");
            return;
  
            }catch(NullPointerException e){
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
    }

}