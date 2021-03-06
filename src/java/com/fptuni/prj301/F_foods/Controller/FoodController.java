/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.Controller;

import com.fptuni.prj301.F_foods.DAO.FoodDAO;
import com.fptuni.prj301.F_foods.DTO.FoodDTO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class FoodController extends HttpServlet {

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
       ArrayList<FoodDTO> list = new ArrayList<>();
       FoodDAO dao = new FoodDAO();
       String sort = request.getParameter("sort");
       String category = request.getParameter("category");
       String searchKey = request.getParameter("search") ;
       String viewDetail = request.getParameter("viewDetails");
       if(sort == null && category == null && searchKey == null && viewDetail == null){
           list = dao.getListFood();
       }
       if(category !=null){
           list = dao.getListFoodByCategory(category);
       }
       if(searchKey != null){
           list = dao.getFoodByKey(searchKey);
       }
       if(sort != null){
           list = dao.getListIsSorted(sort);
       }
       if(viewDetail != null){
           request.getRequestDispatcher("/views/DetailProduct.jsp").forward(request, response);
       }
       request.setAttribute("listOfFood", list);
       request.getRequestDispatcher("/views/List.jsp").forward(request, response);
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
