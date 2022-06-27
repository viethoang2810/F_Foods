/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.Controller;

import com.fptuni.prj301.F_foods.DAO.AdminDAO;
import com.fptuni.prj301.F_foods.DAO.FoodDAO;
import com.fptuni.prj301.F_foods.DTO.FoodDTO;
import com.fptuni.prj301.F_foods.DTO.UserDTO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class AdminController extends HttpServlet {

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
        HttpSession ss = request.getSession();
        UserDTO us = (UserDTO) ss.getAttribute("usersession");
        String createFood = request.getParameter("createNew");
        boolean remove = Boolean.parseBoolean(request.getParameter("remove"));
        AdminDAO admin = new AdminDAO();
        ArrayList<UserDTO> userList = new ArrayList<>();
        ArrayList<FoodDTO> foodList = new ArrayList<>();
        FoodDAO food = new FoodDAO();
        String updateAction = request.getParameter("updateFood");

        int foodQuantity = admin.getQuantityProduct();
        int foodDiscountQuantity = admin.getQuantityDiscountProduct();
        userList = admin.getListUser();

        if (createFood != null) {
            String name = request.getParameter("foodName");
            String imgLink1 = request.getParameter("img1");
            String imgLink2 = request.getParameter("img2");
            String imgLink3 = request.getParameter("img3");
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            int price = Integer.parseInt(request.getParameter("price"));
            boolean insert = admin.insertNewFood(name, imgLink1, imgLink2, imgLink3, description, category, price);
            if (insert) {
                response.sendRedirect("../Management/AdminPage");
                return;
            }
        }
        if (remove) {
            String foodIDRemove = request.getParameter("foodCode");
            boolean checkRemove = admin.removeFoodById(Integer.parseInt(foodIDRemove));
            response.sendRedirect("../Management/AdminPage");
            return;
        }
        if (updateAction != null) {
            String foodID = request.getParameter("foodCode");
            String foodName = request.getParameter("foodName");
            String originalPrice = request.getParameter("originalPrice");
            String discountPrice = request.getParameter("discountPrice");
            boolean checkUpdate = admin.updateFood(Integer.parseInt(foodID), foodName, Integer.parseInt(originalPrice), Integer.parseInt(discountPrice));
            response.sendRedirect("../Management/AdminPage");
            return;
        }
        foodList = food.getListFood();
        request.setAttribute("foodList", foodList);
        request.setAttribute("listUser", userList);
        request.setAttribute("discountFood", foodDiscountQuantity);
        request.setAttribute("quantity", foodQuantity);
        request.setAttribute("user", us);
        request.getRequestDispatcher("/views/Admin.jsp").forward(request, response);
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
