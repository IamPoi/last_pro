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
   int cnt=0;
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
   
   
   
   // 광고주 마이페이지에서 캠페인에 신청한 인플루언서들 
   public ArrayList<MatchingDTO> MachingInfluencer(int campaign_Sid1) {
	      list = new ArrayList<MatchingDTO>();
	      conn();
	      try {
	         String sql = "select * from matching_camp where campaign_Sid = ? and match_ck = 0 order by influ_affect desc";

	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, campaign_Sid1);
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
   
   
   
   
   // 광고주 마이페이지에서 캠페인에 매칭된 인플루언서들 
   public ArrayList<MatchingDTO> MachingInfluencerSuccess(int campaign_Sid1) {
	      list = new ArrayList<MatchingDTO>();
	      conn();
	      try {
	         String sql = "select * from matching_camp where campaign_Sid = ? and match_ck = 1 order by influ_affect desc";

	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, campaign_Sid1);
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
   
   
	public int applyCamp(CampaginDTO camp_info, MemberDTO info_login) {
		conn();
		
		
		try {
			String sql="insert into matching_camp values(matching_camp_SEQ.nextval,?,?,?,?,?,?) ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, camp_info.getCampaign_Sid());
			psmt.setString(2, camp_info.getCampaign_title());
			psmt.setString(3, info_login.getInflu_id());
			psmt.setString(4, camp_info.getAdver_mbr());
			psmt.setInt(5, 0);
			psmt.setInt(6, info_login.getInfluence_score());
			cnt=psmt.executeUpdate();
			 
		} catch (SQLException e) {		
			e.printStackTrace();
		}
		finally {
			close();
		}
		return cnt;
		
	}

	
	// 광고주가 체크한 인플루언서
		public int MachingUpdate(String influ_id) {
			conn();
			
			
			try {
				String sql="update matching_camp set match_ck = 1 where influ_id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, influ_id);
				cnt=psmt.executeUpdate();
				 
			} catch (SQLException e) {		
				e.printStackTrace();
			}
			finally {
				close();
			}
			return cnt;
			
		}
}