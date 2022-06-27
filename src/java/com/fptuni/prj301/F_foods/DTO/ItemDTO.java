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
public class ItemDTO {
    private int orderID ;
    private int foodID ;
    private int quantity;
    private FoodDTO food ;
    private int totalPrice ;
    private String address ;

    public ItemDTO() {
    }

    public ItemDTO(int orderID, int foodID, FoodDTO food,int quantity, int totalPrice, String address) {
        this.orderID = orderID;
        this.foodID = foodID;
        this.food = food;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.address = address;
    }

    public ItemDTO(int orderID, int foodID, int quantity, FoodDTO food, int totalPrice) {
        this.orderID = orderID;
        this.foodID = foodID;
        this.quantity = quantity;
        this.food = food;
        this.totalPrice = totalPrice;
    }
    
    public FoodDTO getFood() {
        return food;
    }

    public void setFood(FoodDTO food) {
        this.food = food;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getFoodID() {
        return foodID;
    }

    public void setFoodID(int foodID) {
        this.foodID = foodID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
    
    
}
