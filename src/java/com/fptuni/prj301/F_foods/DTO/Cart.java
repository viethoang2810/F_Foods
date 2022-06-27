/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DTO;

/**
 *
 * @author Admin
 */
public class Cart {
    private int CustomerID ;
    private String customerName ;
    private int totalPrice ;

    public Cart(int CustomerID, String customerName, int totalPrice) {
        this.CustomerID = CustomerID;
        this.customerName = customerName;
        this.totalPrice = totalPrice;
    }

    public Cart() {
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    
    
}
