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
public class FoodDTO {
    private int foodID ;
    private String foodName ;
    private String imgLink1 ;
    private String imgLink2;
    private String imgLink3;
    private String description ;
    private String category ;
    private int originalPrice ;
    private int discountPrice ;
    private int finalPrice ;

    public FoodDTO() {
    }

    public FoodDTO(int foodID, String foodName, String imgLink1, String imgLink2, String imgLink3, String description, String category, int originalPrice, int discountPrice, int finalPrice) {
        this.foodID = foodID;
        this.foodName = foodName;
        this.imgLink1 = imgLink1;
        this.imgLink2 = imgLink2;
        this.imgLink3 = imgLink3;
        this.description = description;
        this.category = category;
        this.originalPrice = originalPrice;
        this.discountPrice = discountPrice;
        this.finalPrice = finalPrice;
    }

    public FoodDTO(String foodName, int discountPrice, int finalPrice) {
        this.foodName = foodName;
        this.discountPrice = discountPrice;
        this.finalPrice = finalPrice;
    }
    
    
    
    public int getFoodID() {
        return foodID;
    }

    public void setFoodID(int foodID) {
        this.foodID = foodID;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getImgLink1() {
        return imgLink1;
    }

    public void setImgLink1(String imgLink1) {
        this.imgLink1 = imgLink1;
    }

    public String getImgLink2() {
        return imgLink2;
    }

    public void setImgLink2(String imgLink2) {
        this.imgLink2 = imgLink2;
    }

    public String getImgLink3() {
        return imgLink3;
    }

    public void setImgLink3(String imgLink3) {
        this.imgLink3 = imgLink3;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(int originalPrice) {
        this.originalPrice = originalPrice;
    }

    public int getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(int discountPrice) {
        this.discountPrice = discountPrice;
    }

    public int getFinalPrice() {
        return finalPrice;
    }

    public void setFinalPrice(int finalPrice) {
        this.finalPrice = finalPrice;
    }
    
    
}
