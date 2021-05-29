package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class CampaginDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	CampaginDTO info = null;
	ArrayList<CampaginDTO> list = null;

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



	public ArrayList<CampaginDTO> CampaginAllSelect() {
		list = new ArrayList<CampaginDTO>();
		conn();
		try {
			String sql = "select * from campaign";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int campaign_Sid = Integer.parseInt(rs.getString(1)) ;
				String advertiser_ID = rs.getString(2);
				String ad_section = rs.getString(3);
				int ad_estimate = Integer.parseInt(rs.getString(4)) ;
				String rq_gender = rs.getString(5);
				String category = rs.getString(6);
				String campaign_title = rs.getString(7);
				String campaign_sub = rs.getString(8);
				int rcrtmNmbr = Integer.parseInt(rs.getString(9)) ;
				int rq_follower = Integer.parseInt(rs.getString(10)) ;
				int application_num = Integer.parseInt(rs.getString(11)) ;
				
				info=new CampaginDTO(campaign_Sid, advertiser_ID, ad_section, ad_estimate, 
						rq_gender, category, campaign_title,campaign_sub,rcrtmNmbr,rq_follower,application_num);
				
				list.add(info);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
		

	}
	
	
	// 인플루언서 - 캠페인 조회
		public CampaginDTO campaignSelect(int campaignSelect) {
			conn();
			try {
				String sql = "select * from campaign where campaign_Sid = ?"; 
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, campaignSelect);
				rs = psmt.executeQuery();
			
				if (rs.next()) {
					
					int campaign_Sid = Integer.parseInt(rs.getString(1)) ;
					String advertiser_ID = rs.getString(2);
					String ad_section = rs.getString(3);
					int ad_estimate = Integer.parseInt(rs.getString(4)) ;
					String rq_gender = rs.getString(5);
					String category = rs.getString(6);
					String campaign_title = rs.getString(7);
					String campaign_sub = rs.getString(8);
					int rcrtmNmbr = Integer.parseInt(rs.getString(9)) ;
					int rq_follower = Integer.parseInt(rs.getString(10)) ;
					int application_num = Integer.parseInt(rs.getString(11)) ;
					
					info=new CampaginDTO(campaign_Sid, advertiser_ID, ad_section, ad_estimate, 
							rq_gender, category, campaign_title,campaign_sub,rcrtmNmbr,rq_follower,application_num);
					
				
				}

			} catch (SQLException e) {
				System.out.println("check");
				e.printStackTrace();
			} finally {
				close();
			}
			return info;

		}
		

}
