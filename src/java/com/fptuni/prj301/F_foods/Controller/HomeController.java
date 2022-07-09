/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.Controller;

import com.fptuni.prj301.F_foods.DAO.AdminDAO;
import com.fptuni.prj301.F_foods.DAO.DetailFoodDAO;
import com.fptuni.prj301.F_foods.DAO.FoodDAO;
import com.fptuni.prj301.F_foods.DTO.FoodDTO;
import java.io.IOException;
import java.util.ArrayList;
import static java.util.Collections.list;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class HomeController extends HttpServlet {

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
        String logout = request.getParameter("logout");
        FoodDAO food = new FoodDAO();
        AdminDAO admin = new AdminDAO();
        DetailFoodDAO detail = new DetailFoodDAO();
        ArrayList<FoodDTO> listFood = food.getListFood();
        String viewDetail = request.getParameter("viewDetail");
        if(viewDetail != null){
            String id = request.getParameter("detail");
            response.sendRedirect("../Detail/detailFood?detail="+id);
            return;
        }
        if (logout != null) {
            HttpSession ss = request.getSession();
            ss.setAttribute("usersession", null);
            response.sendRedirect("../Access/Login");
            return;
        }
        
        ArrayList<FoodDTO> listFoodRandom = detail.getFoodArrayRandom(listFood);
        int orderQuantity = admin.getQuantityOrder();
        
        request.setAttribute("orderQuantity", orderQuantity);
        request.setAttribute("randomFood", listFoodRandom);
        request.setAttribute("quantityCustomer", admin.getQuantityCustomer());
        request.setAttribute("quantityFood", food.getQuantityFood());
        request.getRequestDispatcher("/views/HomePage.jsp").forward(request, response);

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
