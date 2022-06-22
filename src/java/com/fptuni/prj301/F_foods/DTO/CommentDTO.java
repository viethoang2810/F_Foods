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
public class CommentDTO {
    private String username ;
    private String content ;
    private Date dateOfComment ;

    public CommentDTO(String username, String content, Date dateOfComment) {
        this.username = username;
        this.content = content;
        this.dateOfComment = dateOfComment;
    }

    public CommentDTO() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDateOfComment() {
        return dateOfComment;
    }

    public void setDateOfComment(Date dateOfComment) {
        this.dateOfComment = dateOfComment;
    }
    
    
}
