package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	MemberDTO dto = null;
	ArrayList<MemberDTO> list = null;// db에 있는 모든 회원의 정보를 담기 위해 arraylist가 필요해

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

	}

	public void close() {

		try {
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public int join(MemberDTO dto) {

		conn();

		try {
			String sql = "insert into members values(?,?,?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getInflu_id());
			psmt.setString(2, dto.getInflu_pw());
			psmt.setString(3, dto.getInflu_name());
			psmt.setInt(4, dto.getInflu_age());
			psmt.setString(5, dto.getInflu_gender());
			psmt.setString(6, dto.getInflu_instaAddr());
			psmt.setInt(7, dto.getInflu_point());
			psmt.setInt(8, dto.getInflu_targetAge());
			psmt.setString(9, dto.getInflu_targetGender());

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO loginDto = null;

		conn();
		System.out.println("확인");
		try {
			String sql = "select * from influencer_mbr where influ_id = ? and pw = ?"; //
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getInflu_id());
			psmt.setString(2, dto.getInflu_pw());

			rs = psmt.executeQuery();

			if (rs.next()) {

				String influ_id = rs.getString(1);
				String influ_pw = rs.getString(2);
				String influ_name = rs.getString(3);
				int influ_age = rs.getInt(4);
				String influ_gender = rs.getString(5);
				String influ_instaAddr = rs.getString(6);
				int influ_point = rs.getInt(7);
				String influ_phone = rs.getString(8);
				int influ_targetAge = rs.getInt(9);
				String influ_targetGender = rs.getString(10);
				String influ_category = rs.getString(11);
				int influ_matchingCamp = rs.getInt(12);
				int influence_score = rs.getInt(13);
				int paidMember = rs.getInt(14);
				/* 반환해야 하는 정보가 여러개이기 때문에 캡슐화를 씀-- 나중에 쓸 수도 있으니 우선 넘겨주기로..,, */
				loginDto = new MemberDTO(influ_id, influ_pw, influ_name, influ_age, influ_gender, influ_instaAddr,
						influ_point, influ_phone, influ_targetAge, influ_targetGender,influ_category,influ_matchingCamp,influence_score, paidMember);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return loginDto;

	}
	
	
	  // 인플루언서 마이페이지
	   public MemberDTO myPage(String mem_id) {
	      conn();
	      System.out.println("연결확인");
	      
	      try {
	         String sql = "select * from influencer_mbr"; 
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();

	         if(rs.next()) {

	            String influ_id = rs.getString(1);
	            String influ_pw = rs.getString(2);
	            String influ_name = rs.getString(3);
	            int influ_age = rs.getInt(4);
	            String influ_gender = rs.getString(5);
	            String influ_instaAddr = rs.getString(6);
	            int influ_point = rs.getInt(7);
	            String influ_phone = rs.getString(8);
	            int influ_targetAge = rs.getInt(9);
	            String influ_targetGender = rs.getString(10);
	            String influ_category = rs.getString(11);
	            int influ_login_ck = rs.getInt(12);
	            int influence_score = rs.getInt(13);
	        	int paidMember = rs.getInt(14);
	            /* 반환해야 하는 정보가 여러개이기 때문에 캡슐화를 씀-- 나중에 쓸 수도 있으니 우선 넘겨주기로..,, */
	            dto = new MemberDTO(influ_id, influ_pw, influ_name, influ_age, influ_gender, influ_instaAddr,
	                  influ_point, influ_phone, influ_targetAge, influ_targetGender,influ_category,influ_login_ck,influence_score,paidMember);
	            
	            
	         }

	      } catch (SQLException e) {

	         e.printStackTrace();
	      } finally {
	         close();
	      }

	      return dto;

	   }

	
	
	
	public ArrayList<influencerInstaDTO> influencer_instaSelect() {
		ArrayList<influencerInstaDTO> influencer_insta = new ArrayList<influencerInstaDTO>();
		influencerInstaDTO instaInfo = new influencerInstaDTO();
		
		conn();
		try {
			String sql = "select * from influencer_insta"; //
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while(rs.next()) {

				String influ_id = rs.getString(1);
				int num_media = rs.getInt(2);
				int num_follower = rs.getInt(3);
				int num_following = rs.getInt(4);
				String biography = rs.getString(5);
				int real_follower = rs.getInt(6);
				int fake_follower = rs.getInt(7);
				int influ_affect = rs.getInt(8);
				
				/* 반환해야 하는 정보가 여러개이기 때문에 캡슐화를 씀-- 나중에 쓸 수도 있으니 우선 넘겨주기로..,, */
				instaInfo = new influencerInstaDTO(influ_id,num_media,num_follower,num_following,biography,
						real_follower, fake_follower, influ_affect);
				
				influencer_insta.add(instaInfo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return influencer_insta;

	}
	
	public MatchingDTO selectapplyCamp(CampaginDTO camp_info, MemberDTO info_login) {
		MatchingDTO info = new MatchingDTO();
        conn();
        try {
           String sql = "select * from matching_camp where campaign_Sid = ? and influ_id = ?";

           psmt = conn.prepareStatement(sql);
           psmt.setInt(1, camp_info.getCampaign_Sid());
           psmt.setString(2, info_login.getInflu_id());
           rs = psmt.executeQuery();

           if (rs.next()) {
        	   
              int campaign_index = Integer.parseInt(rs.getString(1));
              int campaign_Sid = Integer.parseInt(rs.getString(2));
              String campaign_title = rs.getString(3);
              String influ_id = rs.getString(4);
              String ad_section = rs.getString(5);
              int match_ck = Integer.parseInt(rs.getString(6));
              int influ_affect = Integer.parseInt(rs.getString(7));
              int camp_ck = Integer.parseInt(rs.getString(8));
             
              info = new MatchingDTO(campaign_index,campaign_Sid,campaign_title
                    ,influ_id,ad_section,match_ck,influ_affect,camp_ck);
                    
                    
      
           }

        } catch (Exception e) {
           e.printStackTrace();
        } finally {
           close();
        }
        return info;
  }

//	public ArrayList<MemberDTO> select() {
//		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
//		
//		conn();
//		
//		
//		try {
//			String sql = "select * from members ";
//			psmt=conn.prepareStatement(sql);
//			rs=psmt.executeQuery();
//			
//			while(rs.next()) {
//				String id= rs.getString(1);
//				String pw= rs.getString(2);
//				String name= rs.getString(3);
//				int dob= Integer.parseInt(rs.getString(4)) ;
//				String add= rs.getString(5);
//				String tell= rs.getString(6);
//				String gender= rs.getString(7);
//				String grade= rs.getString(8);
//				
//				//dto=new MemberDTO(id,pw,name,dob,add,tell,gender,grade);
//				
//				memberList.add(dto);
//			}
//			
//			
//		} catch (SQLException e) {
//			
//			e.printStackTrace();
//		}
//		finally {
//			close();
//		}
//		
//		return memberList;
//		
//		
//		
//	}
//	
//	public int update(String pw, String tell, String add, String id) {
//		conn();
//		   try {
//		         String sql = "update members set mem_pw=?, mem_tell =?, mem_add =? where mem_id= ?";
//		         
//		         
//		         psmt = conn.prepareStatement(sql);
//		         psmt.setString(1, pw);
//		         psmt.setString(2, tell);
//		         psmt.setString(3, add);
//		         psmt.setString(4, id);
//		         cnt = psmt.executeUpdate();
//		         
//		      } catch (SQLException e) {
//		         e.printStackTrace();
//		      }finally {
//		         close();
//		      }
//		      
//		      return cnt;
//		   }
//	
//	public int secession(MemberDTO dto) {
//	      conn();
//	      
//	      
//	      try {
//	    	 String sql = "delete from members where Mem_id=?";
//	         psmt = conn.prepareStatement(sql);
//	         psmt.setString(1, dto.getMem_id());
//	         cnt = psmt.executeUpdate();
//	         
//	      } catch (SQLException e) {
//	         e.printStackTrace();
//	      }finally {
//	         close();
//	      }
//	      
//	      return cnt;
//	}
//	
//	public int UpdateGrade(MemberDTO dto) {
//
//	      conn();
//
//	      try {
//	         String sql = "update members set mem_grade=? where mem_id=?";
//
//	         psmt = conn.prepareStatement(sql);
//	         psmt.setString(1, dto.getMem_grade());
//	         psmt.setString(2, dto.getMem_id());
//
//	         cnt = psmt.executeUpdate();
//
//	      } catch (SQLException e) {
//	         e.printStackTrace();
//	      } finally {
//	         close();
//	      }
//	      return cnt;
//
//	   }

}
