package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AdvertiserDAO {
   Connection conn = null;
   PreparedStatement psmt = null;
   ResultSet rs = null;
   AdvertiserDTO info = null;
   ArrayList<AdvertiserDTO> list = null;
   
   public void conn() {
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
         String db_id = "hr";
         String db_pw = "hr";

         conn = DriverManager.getConnection(db_url, db_id, db_pw);
      } catch (Exception e) {
         e.printStackTrace();
      }
   } // conn cloes();

   public void close() {

      try {
         if (rs != null) {
            rs.close();
         }
         if (psmt != null) {
         }
         psmt.close();

         if (conn != null) {
            conn.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   } // close close();
   
   public AdvertiserDTO login(AdvertiserDTO addto) {
      AdvertiserDTO adverlogin = null;
      conn();
      
      
      try {
         String sql = "select * from advertiser_mbr where adver_mbr=? and adver_pw=?";
         
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, addto.getAdver_mbr());
         psmt.setString(2, addto.getAdver_pw());
         
         rs = psmt.executeQuery();
         
         while (rs.next()) {
            String adver_mbr = rs.getString(1);
            String adver_pw = rs.getString(2);
            String name = rs.getString(3);
            String mail = rs.getString(4);
            String phone = rs.getString(5);
            int loginck = rs.getInt(6);
            

            adverlogin = new AdvertiserDTO(adver_mbr, adver_pw, name, mail, phone, loginck);
            
            System.out.println(adverlogin);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return adverlogin;   
         
   }
   
   // 광고주 마이페이지
      public AdvertiserDTO myPage(String mem_id) {
         AdvertiserDTO dto = null;
         conn();
         System.out.println("연결확인");
         
         try {
            String sql = "select * from advertiser_mbr"; 
            psmt = conn.prepareStatement(sql);
            rs = psmt.executeQuery();

            if(rs.next()) {

               String adver_mbr = rs.getString(1);
               String adver_pw = rs.getString(2);
               String influ_name = rs.getString(3);
               String age = rs.getString(4);
               String phone = rs.getString(5);
               int login_ck = rs.getInt(6);
               //int login_ck = Integer.parseInt(rs.getString(6));
               
               /* 반환해야 하는 정보가 여러개이기 때문에 캡슐화를 씀-- 나중에 쓸 수도 있으니 우선 넘겨주기로..,, */
               dto = new AdvertiserDTO(adver_mbr, adver_pw, influ_name, age, phone, login_ck);
               
               
            }

         } catch (SQLException e) {

            e.printStackTrace();
         } finally {
            close();
         }

         return dto;

      }
   
   
}
