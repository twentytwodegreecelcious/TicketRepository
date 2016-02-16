package com.dmitriy.lagus.tickets.Entities;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;


@Entity
@Table(name = "users")
public class User {
    @Column (name="username", length = 60)
    private String username;
    @Column (name="first_name", length = 40)
    private String firstName;
    @Column(name="last_name", length = 40)
    private String lastName;
    @Column (name="password", length=80)
    private String password;
    @Column (name="logged_in")
    private boolean loggedIn;
    @Id
    @Column (name="user_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int userId;
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name="registered")
    private Date registered;
    @Transient
    private String status;

    public String getStatus() {
       return (loggedIn)? "online" : "offline";
    }



    public String getUsername() {
        return username;
    }

    public void setUsername (String username) {
        this.username=username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String first_name) {
        this.firstName = first_name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String last_name) {
        this.lastName = last_name;
    }

    public boolean isLoggedIn() {
        return loggedIn;
    }

    public void setLoggedIn(boolean logged_in) {
        this.loggedIn = logged_in;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegistered() {
        return registered;
    }

    public void setRegistered(Date registered) {
        this.registered = registered;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int user_id) {
        this.userId = user_id;
    }

    public User (String username, String first_name, String last_name, String password,  int user_id, boolean logged_in, Date registered, String status) {
        this.firstName =first_name;
        this.userId =user_id;

        this.lastName =last_name;
        this.loggedIn =logged_in;
        this.username=username;
        this.password=password;
        this.registered=registered;
        this.status=status;
    }

    public User () {}

}