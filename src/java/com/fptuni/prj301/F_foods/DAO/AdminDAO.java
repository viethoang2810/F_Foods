/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DAO;

import com.fptuni.prj301.F_foods.DTO.ItemDetailOrderDTO;
import com.fptuni.prj301.F_foods.DTO.OrderDTO;
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
    public ArrayList<OrderDTO> listOrder = new ArrayList<>();
    public ArrayList<ItemDetailOrderDTO> listDetail = new ArrayList<>();

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

    public int getQuantityCustomer() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = " SELECT COUNT(CustomerID) AS Quantity FROM Customer";
        int quantity = 0;
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            if (rs.next()) {
                quantity = rs.getInt("Quantity");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return quantity;
    }

    public ArrayList<OrderDTO> getListOrder() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT OrderID,CusID,FullName,Address,PhoneNumber,TotalPrice,DateOrder FROM[Order]";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                OrderDTO order = new OrderDTO();
                order.setOrderId(rs.getInt("OrderID"));
                order.setCustomerID(rs.getInt("CusID"));
                order.setCustomerName(rs.getString("FullName"));
                order.setAddress(rs.getString("Address"));
                order.setPhoneNumber(rs.getString("PhoneNumber"));
                order.setTotalPrice(rs.getInt("TotalPrice"));
                order.setDateOrder(rs.getDate("DateOrder"));

                listOrder.add(order);
            }
        } catch (Exception e) {
        }
        return listOrder;
    }

    public int getQuantityOrder() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int quantity = 0;
        String sql = " SELECT COUNT(OrderID) AS Quantity FROM [Order]";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            if (rs.next()) {
                quantity = rs.getInt("Quantity");
            }
        } catch (Exception e) {

        }
        return quantity;
    }

    public ArrayList<ItemDetailOrderDTO> getItemDetail(int id) {
        String sql = " SELECT CusID , FullName ,FoodID,AmountOfItem,[OrderDetail].TotalPrice,DateOrder\n"
                + "FROM [Order] ,[OrderDetail]\n"
                + "WHERE [OrderDetail].OrderID = ? AND [OrderDetail].OrderID = [Order].OrderID";
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                ItemDetailOrderDTO dto = new ItemDetailOrderDTO();
                dto.setCusID(rs.getInt("CusID"));
                dto.setFullName(rs.getString("FullName"));
                dto.setFoodID(rs.getInt("FoodID"));
                dto.setAmountOfItem(rs.getInt("AmountOfItem"));
                dto.setTotalPrice(rs.getInt("TotalPrice"));
                dto.setDateOrder(rs.getDate("DateOrder"));

                listDetail.add(dto);
            }
        } catch (Exception e) {
        }
        return listDetail;
    }
}
