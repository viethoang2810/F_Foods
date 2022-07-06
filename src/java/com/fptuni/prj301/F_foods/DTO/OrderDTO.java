/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.F_foods.DTO;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class OrderDTO {
    private int orderId;
    private int CustomerID ;
    private String customerName ;
    private int totalPrice ;
    private String address ;
    private String phoneNumber ; 
    private Date dateOrder ;

    public OrderDTO() {
    }

    public OrderDTO(int orderId,int CustomerID, String customerName, int totalPrice, String address, String phoneNumber, Date dateOrder) {
        this.orderId = orderId ;
        this.CustomerID = CustomerID;
        this.customerName = customerName;
        this.totalPrice = totalPrice;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.dateOrder = dateOrder;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }
    
    
    
    
    
}
