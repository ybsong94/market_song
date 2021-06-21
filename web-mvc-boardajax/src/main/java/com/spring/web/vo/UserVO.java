package com.spring.web.vo;

public class UserVO {
   private int uno;
   private String id;
   private String password;
   private String name;
   
   public UserVO() {
   }

   public UserVO(int uno, String id, String password, String name) {
      super();
      this.uno = uno;
      this.id = id;
      this.password = password;
      this.name = name;
   }

   public int getUno() {
      return uno;
   }

   public void setUno(int uno) {
      this.uno = uno;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   @Override
   public String toString() {
      return "UserVO [uno=" + uno + ", id=" + id + ", password=" + password + ", name=" + name + "]";
   }
   
   
}