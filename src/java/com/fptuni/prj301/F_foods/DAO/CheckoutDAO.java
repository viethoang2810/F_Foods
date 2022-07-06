/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DAO;

import com.fptuni.prj301.F_foods.DTO.ItemDetailOrderDTO;
import com.fptuni.prj301.F_foods.Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class CheckoutDAO {
    
            
    public boolean insertIntoOrder(int id, String receiver, String phoneNumber, int totalPrice, String address) {
        Connection con = null;
        PreparedStatement stm = null;
        int checkInsert = 0;
        String query = "INSERT INTO [Order] (CusID,FullName,TotalPrice,DateOrder,PhoneNumber , Address) VALUES (?,?,?,GETDATE(),?,N'" + address + "')";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query);
            stm.setInt(1, id);
            stm.setString(2, receiver);
            stm.setInt(3, totalPrice);
            stm.setString(4, phoneNumber);

            checkInsert = stm.executeUpdate();

            if (checkInsert > 0) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;
    }

    public boolean insertIntoOrderDetail(int orderId, int foodId, int amount, int totalPrice) {
        String sql = "INSERT INTO [OrderDetail](OrderID,FoodID,AmountOfItem,TotalPrice,DateOfComment) VALUES (?,?,?,?,GETDATE())";
        Connection con = null;
        PreparedStatement stm = null;
        int checkInsert = 0;
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setInt(1, orderId + 17);
            stm.setInt(2, foodId);
            stm.setInt(3, amount);
            stm.setInt(4, totalPrice);

            checkInsert = stm.executeUpdate();
            if (checkInsert > 0) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public int searchFoodByName(String name) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int id = 0;
        String sql = " SELECT FoodID FROM Food WHERE FoodName LIKE N'" + name + "' ";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("FoodID");
            }
        } catch (Exception e) {
        }
        return 0;
    }

    
}
