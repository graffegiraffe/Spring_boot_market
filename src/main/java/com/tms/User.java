package com.tms;

import org.springframework.stereotype.Component;

@Component("adam")
public class User {
    private Long id;
    private String firstname;

    public User() {
    }

    public User(Long id, String firstname) {
        this.id = id;
        this.firstname = firstname;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", firstname='" + firstname + '\'' +
                '}';
    }
}
