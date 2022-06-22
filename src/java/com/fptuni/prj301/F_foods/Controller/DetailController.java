/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.Controller;

import com.fptuni.prj301.F_foods.DAO.DetailFoodDAO;
import com.fptuni.prj301.F_foods.DAO.FoodDAO;
import com.fptuni.prj301.F_foods.DTO.CommentDTO;
import com.fptuni.prj301.F_foods.DTO.FoodDTO;
import com.fptuni.prj301.F_foods.DTO.UserDTO;
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
public class DetailController extends HttpServlet {

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
        String detailFoodId = request.getParameter("detail");
        DetailFoodDAO detail = new DetailFoodDAO();
        FoodDAO foodDao = new FoodDAO();
        UserDTO dto = new UserDTO();
        ArrayList<CommentDTO> listOfComment = new ArrayList<>();
        ArrayList<FoodDTO> list = foodDao.getListFood();
        FoodDTO food = detail.getFoodById(Integer.parseInt(detailFoodId));
        ArrayList<FoodDTO> randomArray = detail.getFoodArrayRandom(list);
        String comment = request.getParameter("comment");

        if (comment != null) {
            String id = request.getParameter("id");
            String content = request.getParameter("contentOfComment");
            String user = request.getParameter("user");
            boolean check = detail.insertComment(Integer.parseInt(id), content, user);
            response.sendRedirect("../Detail/detailFood?detail=" + detailFoodId);
            return;
        }
        if (request.getParameter("addCart") != null) {
            String foodId = request.getParameter("foodId");
            FoodDTO item = detail.getFoodById(Integer.parseInt(foodId));
            ArrayList<FoodDTO> cart = dto.getCart();
            response.sendRedirect("../Detail/detailFood?detail=" + foodId);
            return;
            
        }
        listOfComment = detail.getListComment(detailFoodId);
        request.setAttribute("listComment", listOfComment);
        request.setAttribute("randomFood", randomArray);
        request.setAttribute("foodDetail", food);
        request.getRequestDispatcher("/views/DetailProduct.jsp").forward(request, response);

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
