package com.training.model;

/**
 * Created on 01.05.2017
 *
 * @author Roman Hayda
 */
public class LoginBean {
    private String name,password;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean validate(){
        if(password.equalsIgnoreCase("admin") && name.equalsIgnoreCase("admin")){
            return true;
        }
        else{
            return false;
        }
    }
}
