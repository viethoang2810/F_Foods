/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.Controller;

import com.fptuni.prj301.F_foods.DAO.AdminDAO;
import com.fptuni.prj301.F_foods.DAO.CheckoutDAO;
import com.fptuni.prj301.F_foods.DAO.DetailFoodDAO;
import com.fptuni.prj301.F_foods.DTO.FoodDTO;
import com.fptuni.prj301.F_foods.DTO.ItemDTO;
import com.fptuni.prj301.F_foods.DTO.UserDTO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class CheckoutController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        DetailFoodDAO detail = new DetailFoodDAO();
        HttpSession ss = request.getSession();
        UserDTO dto = (UserDTO) ss.getAttribute("usersession");
        AdminDAO admin = new AdminDAO();
        String foodId = request.getParameter("food");
        String logout = request.getParameter("logout");
        String removeItem = request.getParameter("removeId");
        String checkout = request.getParameter("checkout-sub");
        String detailOrder = request.getParameter("detailOrder");
        CheckoutDAO payment = new CheckoutDAO();
        if (removeItem != null) {
            ArrayList<ItemDTO> listItem = dto.getCart();
            int removeId = Integer.parseInt(request.getParameter("removeId"));
            for (int i = 0; i < listItem.size(); i++) {
                if (listItem.get(i).getFood().getFoodID() == removeId) {
                    listItem.remove(i);
                    break;
                }
            }
        }
        ArrayList<ItemDTO> cart = dto.getCart();
        if (cart == null) {
            cart = new ArrayList<>();
        }
        if (foodId != null) {
            FoodDTO item = detail.getFoodById(Integer.parseInt(foodId));
            cart.add(new ItemDTO(cart.size(), item.getFoodID(), 1, item, item.getFinalPrice()));
            dto.setCart(cart);
        }
        if (logout != null) {
            ss = request.getSession();
            ss.setAttribute("usersession", null);
            response.sendRedirect("../Access/Login");
            return;
        }
        if (checkout != null) {
            int cusID = dto.getUserID();
            String itemList = request.getParameter("itemList");
            StringTokenizer st = new StringTokenizer(itemList, ",");
            ArrayList<String> listItem = new ArrayList<>();
            String receiver = request.getParameter("name");
            String phoneNumber = request.getParameter("phone");
            String totalPrice = request.getParameter("totalPrice");
            String address = request.getParameter("address");
            boolean checkInsert = payment.insertIntoOrder(cusID, receiver, phoneNumber, Integer.parseInt(totalPrice), address);
            while (st.hasMoreTokens()) {
                listItem.add(st.nextToken());
            }
            for (String item : listItem) {
                st = new StringTokenizer(item, "-");
                String itemName = st.nextToken();
                int itemQuantity = Integer.parseInt(st.nextToken());
                int itemPrice = Integer.parseInt(st.nextToken());
                int itemId = payment.searchFoodByName(itemName);
                boolean insertDetail = payment.insertIntoOrderDetail(admin.getQuantityOrder(), itemId, itemQuantity, itemPrice);
            }

            if (checkInsert) {
                request.setAttribute("notify", "You have successfully paid");
            }
        }
        request.setAttribute("listItem", cart);
        request.getRequestDispatcher("/views/Cart.jsp").forward(request, response);
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
