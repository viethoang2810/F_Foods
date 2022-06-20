/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DTO;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class UserDTO {
    private String username ;
    private String password ;
    private String phoneNumber;
    private String accessRight ;
    private ArrayList<FoodDTO> cart ;
    private Date dateCreateAccount ;

    public UserDTO() {
    }

    public UserDTO(String username, String accessRight, ArrayList<FoodDTO> cart) {
        this.username = username;
        this.accessRight = accessRight;
        this.cart = cart;
    }

   
    
    public UserDTO(String username, String phoneNumber, String accessRight, ArrayList<FoodDTO> cart, Date dateCreateAccount) {
        this.username = username;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.accessRight = accessRight;
        this.cart = cart;
        this.dateCreateAccount = dateCreateAccount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAccessRight() {
        return accessRight;
    }

    public void setAccessRight(String accessRight) {
        this.accessRight = accessRight;
    }

    public ArrayList<FoodDTO> getCart() {
        return cart;
    }

    public void setCart(ArrayList<FoodDTO> cart) {
        this.cart = cart;
    }

    public Date getDateCreateAccount() {
        return dateCreateAccount;
    }

    public void setDateCreateAccount(Date dateCreateAccount) {
        this.dateCreateAccount = dateCreateAccount;
    }
    
    
}
