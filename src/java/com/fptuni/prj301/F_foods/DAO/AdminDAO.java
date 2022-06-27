/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DAO;

import com.fptuni.prj301.F_foods.DTO.UserDTO;
import com.fptuni.prj301.F_foods.Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class AdminDAO {

    public ArrayList<UserDTO> userList = new ArrayList<>();

    public int getQuantityProduct() {
        int quantity = 0;
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT COUNT(FoodID) AS AmountOfProduct\n"
                + " FROM Food ";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                quantity = rs.getInt("AmountOfProduct");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return quantity;
    }

    public int getQuantityDiscountProduct() {
        int amountOfDiscount = 0;
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT COUNT(FoodID) AS AmountOfDiscountProduct\n"
                + "FROM Food WHERE DiscountPrice != 0";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                amountOfDiscount = rs.getInt("AmountOfDiscountProduct");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return amountOfDiscount;
    }

    public ArrayList<UserDTO> getListUser() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String query = " SELECT CustomerID ,Username , Address , PhoneNumber, DateCreateAccount FROM Customer";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                UserDTO user = new UserDTO();
                user.setUserID(rs.getInt("CustomerID"));
                user.setUsername(rs.getString("Username"));
                user.setAddress(rs.getString("Address"));
                user.setPhoneNumber(rs.getString("PhoneNumber"));
                user.setDateCreateAccount(rs.getDate("DateCreateAccount"));

                userList.add(user);
            }

        } catch (Exception e) {
        }
        return userList;
    }

    public boolean insertNewFood(String name, String imgLink1, String imgLink2, String imgLink3, String description, String category, int originalPrice) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int checkInsert = 0;
        String query = " INSERT INTO Food(FoodName,ImageLink1,ImageLink2,ImageLink3,Description,Category,OriginalPrice,DiscountPrice,FinalPrice) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query);
            stm.setString(1, name);
            stm.setString(2, imgLink1);
            stm.setString(3, imgLink2);
            stm.setString(4, imgLink3);
            stm.setString(5, description);
            stm.setString(6, category);
            stm.setInt(7, originalPrice);
            stm.setInt(8, 0);
            stm.setInt(9, originalPrice);

            checkInsert = stm.executeUpdate();
            if (checkInsert > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean removeFoodById(int id) {
        Connection con = null;
        PreparedStatement stm = null;
        int checkRemove = 0;
        String sql = "DELETE FROM Food WHERE FoodID = ? ";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            checkRemove = stm.executeUpdate();
            if (checkRemove > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

    public boolean updateFood(int id, String name, int originPrice, int discountPrice) {
        Connection con = null;
        PreparedStatement stm = null;
        int finalPrice = originPrice - discountPrice;
        String sql = "UPDATE Food SET FoodName = ? , OriginalPrice = ? ,DiscountPrice = ? , FinalPrice = ? WHERE FoodID = ?";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, name);
            stm.setInt(2, originPrice);
            stm.setInt(3, discountPrice);
            stm.setInt(4, finalPrice);
            stm.setInt(5, id);

            int checkUpdate = stm.executeUpdate();
            if (checkUpdate > 0) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;
    }
}
