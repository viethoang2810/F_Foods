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
public class ItemDetailOrderDTO {
    private int cusID ;
    private String fullName;
    private int foodID ;
    private int amountOfItem ;
    private int totalPrice ; 
    private Date dateOrder;

    public ItemDetailOrderDTO() {
    }

    public ItemDetailOrderDTO(int cusID, String fullName, int foodID, int amountOfItem, int totalPrice, Date dateOrder) {
        this.cusID = cusID;
        this.fullName = fullName;
        this.foodID = foodID;
        this.amountOfItem = amountOfItem;
        this.totalPrice = totalPrice;
        this.dateOrder = dateOrder;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getFoodID() {
        return foodID;
    }

    public void setFoodID(int foodID) {
        this.foodID = foodID;
    }

    public int getAmountOfItem() {
        return amountOfItem;
    }

    public void setAmountOfItem(int amountOfItem) {
        this.amountOfItem = amountOfItem;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }
    
    
}
