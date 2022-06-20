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

/**
 *
 * @author Admin
 */
public class AccessDAO {

    public UserDTO checkLogin(String username, String password) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        UserDTO user = new UserDTO();

        String sql = "SELECT Username , Password , AccessRole,PhoneNumber FROM dbo.Customer WHERE Username LIKE ?  AND Password LIKE ?";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                user.setUsername(rs.getString("Username"));
                user.setAccessRight(rs.getString("AccessRole"));
                user.setPhoneNumber(rs.getString("PhoneNumber"));
            }
        } catch (Exception e) {
        }
        return user;
    }
}
