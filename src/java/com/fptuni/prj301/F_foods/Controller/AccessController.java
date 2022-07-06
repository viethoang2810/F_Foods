/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.Controller;

import com.fptuni.prj301.F_foods.DAO.AccessDAO;
import com.fptuni.prj301.F_foods.DTO.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class AccessController extends HttpServlet {

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
        String login = request.getParameter("Login");
        String signUp = request.getParameter("signup");
              

        AccessDAO access = new AccessDAO();
        String btnAction = request.getParameter("Signup");
        if (btnAction != null) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String re_pass = request.getParameter("confirm");
            String phone = request.getParameter("phonenumber");
            String address = request.getParameter("address");
            String Signup = request.getParameter("Signup");
            if (!password.equals(re_pass)) {
                request.setAttribute("error", "Invalid password!");
            } else {
                AccessDAO dao = new AccessDAO();
                UserDTO a = dao.checkUserExist(username);
                if (a == null) {
                    //dc signup
                    boolean checkInsert = dao.signup(username, password, address, phone);
                    if (checkInsert) {
                        response.sendRedirect("../Home/HomePage");
                        return;
                    }
                }
            }
        }
        if (login != null) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            UserDTO user = access.checkLogin(username, password);
            if (user != null) {
                HttpSession ss = request.getSession(true);
                ss.setAttribute("usersession", user);
                if (user != null) {
                    if ((user.getAccessRight()).equals("User")) {
                        response.sendRedirect("../Home/HomePage");
                    } else if ((user.getAccessRight()).equals("Admin")) {
                        response.sendRedirect("../Management/AdminPage");
                    }
                }
            }
        } else {
            request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
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
