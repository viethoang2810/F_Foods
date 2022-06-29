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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class AccessDAO {

    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    UserDTO user = new UserDTO();

    public UserDTO checkLogin(String username, String password) {

        String sql = "SELECT Username , Password , AccessRole,PhoneNumber FROM dbo.Customer WHERE Username LIKE ?  AND Password LIKE ?";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                user.setUsername(rs.getString("Username"));
                user.setPassword(rs.getString("Password"));
                user.setAccessRight(rs.getString("AccessRole"));
                user.setPhoneNumber(rs.getString("PhoneNumber"));

            }
        } catch (Exception e) {
        }
        return user;
    }

    public boolean signup(String username, String password, String address, String PhoneNumber) {
        int checkSignUp = 0;
        String query = "INSERT INTO Customer ( Username, Password, Address, PhoneNumber, AccessRole, DateCreateAccount)VALUES(?, ?, ?, ?,'User',GETDATE())";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, address);
            stm.setString(4, PhoneNumber);
            checkSignUp = stm.executeUpdate();
            if (checkSignUp > 0) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;

    }

    public UserDTO checkUserExist(String username) {

        String sql = "select * from Customer\n"
                + "where [Username] = ? \n";
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            if (rs.next()) {
                user.setUsername(rs.getString("Username"));
                user.setPassword(rs.getString("Password"));

            }
        } catch (Exception e) {
        }
        return null;
    }

    public String getCurrentTimeStamp() {
        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");//dd/MM/yyyy
        Date now = new Date();
        String strDate = sdfDate.format(now);
        return strDate;
    }
}
