/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DAO;

import com.fptuni.prj301.F_foods.DTO.CommentDTO;
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
public class DetailFoodDAO {

    FoodDTO food = new FoodDTO();
    ArrayList<FoodDTO> randomFoodArray = new ArrayList<>();
    ArrayList<CommentDTO> listOfComment = new ArrayList<>();

    public FoodDTO getFoodById(int id) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String query = "SELECT FoodID,FoodName,ImageLink1,ImageLink2,ImageLink3,Description,Category,OriginalPrice,DiscountPrice,FinalPrice\n"
                + " FROM Food WHERE FoodID LIKE ?";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                food.setFoodID(rs.getInt("FoodID"));
                food.setFoodName(rs.getString("FoodName"));
                food.setImgLink1(rs.getString("ImageLink1"));
                food.setImgLink2(rs.getString("ImageLink2"));
                food.setImgLink3(rs.getString("ImageLink3"));
                food.setDescription(rs.getString("Description"));
                food.setCategory(rs.getString("Category"));
                food.setOriginalPrice(rs.getInt("OriginalPrice"));
                food.setDiscountPrice(rs.getInt("DiscountPrice"));
                food.setFinalPrice(rs.getInt("FinalPrice"));

            }
        } catch (Exception e) {
        }
        return food;
    }

    public ArrayList<FoodDTO> getFoodArrayRandom(ArrayList<FoodDTO> list) {
        int index = (int) Math.floor(Math.random() * (list.size() - 2));
        while (randomFoodArray.size() <= 3) {
            randomFoodArray.add(list.get(index));
            index = (int) Math.floor(Math.random() * list.size());
        }
        return randomFoodArray;
    }

    public boolean insertComment(int id, String content, String user) {
        Connection con = null;
        PreparedStatement stm = null;
        int checkInsert = 0;
        String sql = "INSERT INTO [CommentFood] (CustomerName,FoodID,CommentContent) VALUES (?,?,?)";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, user);
            stm.setInt(2, id);
            stm.setString(3, content);
            checkInsert = stm.executeUpdate();
            if (checkInsert > 0) {
                return true;
            }

        } catch (Exception e) {
        }
        return false;
    }

    public ArrayList<CommentDTO> getListComment(String detailFoodId) {
        String sql = "SELECT CustomerName ,CommentContent, DateOfComment\n"
                + "FROM CommentFood WHERE FoodID = ?";
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setInt(1, Integer.parseInt(detailFoodId));
            rs = stm.executeQuery();
            while(rs.next()){
                CommentDTO comment = new CommentDTO();
                comment.setUsername(rs.getString("CustomerName"));
                comment.setContent(rs.getString("CommentContent"));
                comment.setDateOfComment(rs.getDate("DateOfComment"));
                
                listOfComment.add(comment);
            }
        } catch (Exception e) {
        }
        return listOfComment;
    }

}
