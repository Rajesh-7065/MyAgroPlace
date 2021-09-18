
package com.myagroplace.servlets;

import com.myagroplace.entities.Contract;
import com.myagroplace.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

@WebServlet(name = "ContractServlet", urlPatterns = {"/ContractServlet"})
public class ContractServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String crop = request.getParameter("crop");
            String land = request.getParameter("land");
            String cropRate = request.getParameter("cropRate");
            String contractDescription = request.getParameter("contractDescription");
            String contractor_mobNo = request.getParameter("contractor_mobNo");
            String contractor_Name = request.getParameter("contractor_Name");
            String contractor_Address = request.getParameter("contractor_Address");
            
            //CREATING CONTRACT OBJECT TO STORE DATA
            Contract contract = new Contract(crop, land, cropRate, contractDescription, contractor_mobNo, contractor_Name, contractor_Address);
            
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();
                int contractId = (int) hibernateSession.save(contract);
                tx.commit();
                hibernateSession.close();
                
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message","Contract Added Successfully!! Contract Id: " + contractId);
                response.sendRedirect("contract_farming.jsp");
                return;
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
