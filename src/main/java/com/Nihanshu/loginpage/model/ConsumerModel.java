package com.Nihanshu.loginpage.model;

//
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.AllArgsConstructor;
//
//@Data
//@NoArgsConstructor
//@AllArgsConstructor
//public class ConsumerModel {
//    private String name;
//    private String email;
//    private String phone;
//    private String message;
//}

public class ConsumerModel {

    private String name;
    private int phoneNumber;
    private String description;
    private String email;

    // Getters and Setters

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
