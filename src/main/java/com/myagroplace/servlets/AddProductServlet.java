package com.myagroplace.servlets;

import com.myagroplace.dao.CategoryDao;
import com.myagroplace.dao.ProductDao;
import com.myagroplace.entities.Product;
import com.myagroplace.entities.Product_Category;
import com.myagroplace.helper.FactoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class AddProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           try{
               String productName = request.getParameter("productName");
               String productDescription = request.getParameter("productDescription");
               int productPrice = Integer.parseInt(request.getParameter("productPrice"));
               int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
               int catId = Integer.parseInt(request.getParameter("catId"));
               Part part = request.getPart("productPhoto");
               
               Product p = new Product();
               p.setProductName(productName);
               p.setProductDescription(productDescription);
               p.setProductPrice(productPrice);
               p.setProductQuantity(productQuantity);
               p.setProductPhoto(part.getSubmittedFileName());
               
               //get category by id
               
               CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
               Product_Category product_category = cdao.getCategoryById(catId);
               
               p.setCategory(product_category);
               
               //Save Product
               ProductDao pdao = new ProductDao(FactoryProvider.getFactory());
               pdao.saveProduct(p);
               
               //PICTURE UPLOAD
               //Finding out the path to upload photo
               String path = request.getRealPath("img") + File.separator + part.getSubmittedFileName();
               System.out.println(path);
               
               //Uploading
               try{
               FileOutputStream fos = new FileOutputStream(path);
               InputStream is = part.getInputStream();
               
               //reading the data
               byte[] data = new byte[is.available()];
               is.read(data);
               
               //writing the data
               fos.write(data);
               fos.close();
               }catch(Exception e){
                   e.printStackTrace();
               }
               
               HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message","Product added successfully");
            response.sendRedirect("seller.jsp");
               
               
           }catch(NullPointerException e){
                e.printStackTrace();
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