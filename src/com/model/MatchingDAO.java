package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MatchingDAO {
   Connection conn = null;
   PreparedStatement psmt = null;
   ResultSet rs = null;
   MatchingDTO info = null;
   ArrayList<MatchingDTO> list = null;

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

   public ArrayList<MatchingDTO> MatchingAllSelect(String influ_ID) {
      list = new ArrayList<MatchingDTO>();
      conn();
      try {
         String sql = "select * from matching_camp where influ_id = ?";

         psmt = conn.prepareStatement(sql);
         psmt.setString(1, influ_ID);
         rs = psmt.executeQuery();

         while (rs.next()) {

            int campaign_index = Integer.parseInt(rs.getString(1));
            int campaign_Sid = Integer.parseInt(rs.getString(2));
            String campaign_title = rs.getString(3);
            String influ_id = rs.getString(4);
            String ad_section = rs.getString(5);
            int match_ck = Integer.parseInt(rs.getString(6));
            int influ_affect = Integer.parseInt(rs.getString(7));

            info = new MatchingDTO(campaign_index,campaign_Sid,campaign_title
                  ,influ_id,ad_section,match_ck,influ_affect);
                  
                  
            list.add(info);
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return list;

   }
   
   
   public ArrayList<MatchingDTO> MatchingAllSelect_ad(String adver_id) {
      list = new ArrayList<MatchingDTO>();
      conn();
      try {
         String sql = "select * from matching_camp where adver_mbr = ?";

         psmt = conn.prepareStatement(sql);
         psmt.setString(1, adver_id);
         rs = psmt.executeQuery();

         while (rs.next()) {

            int campaign_index = Integer.parseInt(rs.getString(1));
            int campaign_Sid = Integer.parseInt(rs.getString(2));
            String campaign_title = rs.getString(3);
            String influ_id = rs.getString(4);
            String ad_section = rs.getString(5);
            int match_ck = Integer.parseInt(rs.getString(6));
            int influ_affect = Integer.parseInt(rs.getString(7));

            info = new MatchingDTO(campaign_index,campaign_Sid,campaign_title
                  ,influ_id,ad_section,match_ck,influ_affect);
                  
                  
            list.add(info);
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return list;

   }   
   

}