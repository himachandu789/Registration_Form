package com.chandu.Model;

import javax.persistence.*;

@Entity
@Table(name="User")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    @Column(name="Name")
    private String name;

    @Column(name="Age")
    private int age;

    @Column(name="Qualification")
    private  String education;


    @Column(name="Experience")
    private int exp;

    @Column(name="Skills")
    private String skills;

    @Column(name="Email")
    private String email;

    @Column(name="Password")
    private  String pswd;


    public User() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public User(String name, int age, String education, int exp, String skills, String email, String pswd) {
        this.name = name;
        this.age = age;
        this.education = education;
        this.exp = exp;
        this.skills = skills;
        this.email = email;
        this.pswd = pswd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public int getExp() {
        return exp;
    }

    public void setExp(int exp) {
        this.exp = exp;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

}
