/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DAO;

import com.fptuni.prj301.F_foods.DTO.FoodDTO;
import com.fptuni.prj301.F_foods.Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class FoodDAO {

    public ArrayList<FoodDTO> list = new ArrayList<>();

    public ArrayList<FoodDTO> getListFood() {
        Connection con = null;
        PreparedStatement psm = null;
        ResultSet rs = null;
        String query = "SELECT FoodID,FoodName,ImageLink1,ImageLink2,ImageLink3,Description,Category,OriginalPrice,DiscountPrice,FinalPrice\n"
                + " FROM Food";
        try {
            con = DBUtils.getConnection();
            psm = con.prepareStatement(query);
            rs = psm.executeQuery();
            while (rs.next()) {
                FoodDTO f = new FoodDTO();
                f.setFoodID(rs.getInt("FoodID"));
                f.setFoodName(rs.getString("FoodName"));
                f.setImgLink1(rs.getString("ImageLink1"));
                f.setImgLink2(rs.getString("ImageLink2"));
                f.setImgLink3(rs.getString("ImageLink3"));
                f.setDescription(rs.getString("Description"));
                f.setCategory(rs.getString("Category"));
                f.setOriginalPrice(rs.getInt("OriginalPrice"));
                f.setDiscountPrice(rs.getInt("DiscountPrice"));
                f.setDiscountPrice(rs.getInt("FinalPrice"));

                list.add(f);

            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<FoodDTO> getListFoodByCategory(String category) {
        Connection con = null;
        PreparedStatement psm = null;
        ResultSet rs = null;
        String query = "SELECT FoodID,FoodName,ImageLink1,ImageLink2,ImageLink3,Description,Category,OriginalPrice,DiscountPrice,FinalPrice\n"
                + " FROM Food WHERE Category LIKE ?";
        try {
            con = DBUtils.getConnection();
            psm = con.prepareStatement(query);
            psm.setString(1, category);
            rs = psm.executeQuery();
            while (rs.next()) {
                FoodDTO f = new FoodDTO();
                f.setFoodID(rs.getInt("FoodID"));
                f.setFoodName(rs.getString("FoodName"));
                f.setImgLink1(rs.getString("ImageLink1"));
                f.setImgLink2(rs.getString("ImageLink2"));
                f.setImgLink3(rs.getString("ImageLink3"));
                f.setDescription(rs.getString("Description"));
                f.setCategory(rs.getString("Category"));
                f.setOriginalPrice(rs.getInt("OriginalPrice"));
                f.setDiscountPrice(rs.getInt("DiscountPrice"));
                f.setDiscountPrice(rs.getInt("FinalPrice"));

                list.add(f);

            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<FoodDTO> getFoodByKey(String searchKey) {
        Connection con = null;
        PreparedStatement psm = null;
        ResultSet rs = null;
        String query = "SELECT FoodID,FoodName,ImageLink1,ImageLink2,ImageLink3,Description,Category,OriginalPrice,DiscountPrice,FinalPrice\n"
                + " FROM Food WHERE FoodName LIKE '%"+searchKey+"%'";
        try {
            con = DBUtils.getConnection();
            psm = con.prepareStatement(query);
            rs = psm.executeQuery();
            while (rs.next()) {
                FoodDTO f = new FoodDTO();
                f.setFoodID(rs.getInt("FoodID"));
                f.setFoodName(rs.getString("FoodName"));
                f.setImgLink1(rs.getString("ImageLink1"));
                f.setImgLink2(rs.getString("ImageLink2"));
                f.setImgLink3(rs.getString("ImageLink3"));
                f.setDescription(rs.getString("Description"));
                f.setCategory(rs.getString("Category"));
                f.setOriginalPrice(rs.getInt("OriginalPrice"));
                f.setDiscountPrice(rs.getInt("DiscountPrice"));
                f.setDiscountPrice(rs.getInt("FinalPrice"));

                list.add(f);

            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<FoodDTO> getListIsSorted(String sort) {
         Connection con = null;
        PreparedStatement psm = null;
        ResultSet rs = null;
        String query = "SELECT FoodID,FoodName,ImageLink1,ImageLink2,ImageLink3,Description,Category,OriginalPrice,DiscountPrice,FinalPrice\n"
                + " FROM Food ORDER BY FinalPrice "+sort+" ;";
        try {
            con = DBUtils.getConnection();
            psm = con.prepareStatement(query);
        
            rs = psm.executeQuery();
            while (rs.next()) {
                FoodDTO f = new FoodDTO();
                f.setFoodID(rs.getInt("FoodID"));
                f.setFoodName(rs.getString("FoodName"));
                f.setImgLink1(rs.getString("ImageLink1"));
                f.setImgLink2(rs.getString("ImageLink2"));
                f.setImgLink3(rs.getString("ImageLink3"));
                f.setDescription(rs.getString("Description"));
                f.setCategory(rs.getString("Category"));
                f.setOriginalPrice(rs.getInt("OriginalPrice"));
                f.setDiscountPrice(rs.getInt("DiscountPrice"));
                f.setDiscountPrice(rs.getInt("FinalPrice"));

                list.add(f);

            }
        } catch (Exception e) {
        }
        return list;
    }
}
