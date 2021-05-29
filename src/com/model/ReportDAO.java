package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReportDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ReportDTO dto = null;
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
	
	
	
	
	
	
	public ReportDTO repoPage(String mem_id) {
		conn();
		System.out.println("연결확인" + mem_id);
		
		try {
			System.out.println("연결확인2");
			String sql = "select * from influencer_report where influ_id = ?"; 
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mem_id);
			rs = psmt.executeQuery();
		
			
			if(rs.next()) {
				
				String influ_id = rs.getString(1);
				int num_media = rs.getInt(2);
				int num_follower = rs.getInt(3);
				int num_following = rs.getInt(4);
				int rank_percent = rs.getInt(5);
				int influence_score = rs.getInt(6);
				int real_follower = rs.getInt(7);
				int fake_follower = rs.getInt(8);
				int real_comment = rs.getInt(9);
				int fake_comment = rs.getInt(10);
				int category_dailylife = rs.getInt(11);
				int category_beauty = rs.getInt(12);
				int category_fashion = rs.getInt(13);
				int category_food = rs.getInt(14);
				int tot_like = rs.getInt(15);
				int tot_comment = rs.getInt(16);
				int assesment = rs.getInt(17);
				int communication = rs.getInt(18);
				int inquire = rs.getInt(19);
				int comment_6 = rs.getInt(20);
				int comment_12 = rs.getInt(21);
				int comment_18 = rs.getInt(22);
				int comment_24 = rs.getInt(23);
				int comment_30 = rs.getInt(24);
				int like_6 = rs.getInt(25);
				int like_12 = rs.getInt(26);
				int like_18 = rs.getInt(27);
				int like_24 = rs.getInt(28);
				int like_30 = rs.getInt(29);
				int dispos_mon = rs.getInt(30);
				int dispos_tue = rs.getInt(31);
				int dispos_wed = rs.getInt(32);
				int dispos_thu = rs.getInt(33);
				int dispos_fri = rs.getInt(34);
				int dispos_sat = rs.getInt(35);
				int dispos_sun = rs.getInt(36);
				int dispos_first_time = rs.getInt(37);
				int dispos_second_time = rs.getInt(38);
				int dispos_third_time = rs.getInt(39);
				int dispos_fourth_time = rs.getInt(40);
				int dispos_fifth_time = rs.getInt(41);
				int all_avg_like = rs.getInt(42);
				int influ_inde_avg_like = rs.getInt(43);
				int all_avg_like_comment = rs.getInt(44);
				int influ_inde_avg_comment = rs.getInt(45);
				int all_real_avg_comment = rs.getInt(46);
				int influ_inde_real_avg_comment = rs.getInt(47);
				
				/* 반환해야 하는 정보가 여러개이기 때문에 캡슐화를 씀-- 나중에 쓸 수도 있으니 우선 넘겨주기로..,, */
				dto = new ReportDTO( influ_id,  num_media,  num_follower,  num_following,  rank_percent,influence_score,
						 real_follower,  fake_follower,  real_comment,  fake_comment,  category_dailylife,
						 category_beauty,  category_fashion,  category_food,  tot_like,  tot_comment,  assesment,
						 communication,  inquire,  comment_6,  comment_12,  comment_18,  comment_24,
						 comment_30,  like_6,  like_12,  like_18,  like_24,  like_30,  dispos_mon,
						 dispos_tue,  dispos_wed,  dispos_thu,  dispos_fri,  dispos_sat,  dispos_sun,
						 dispos_first_time,  dispos_second_time,  dispos_third_time,  dispos_fourth_time,
						 dispos_fifth_time,  all_avg_like,  influ_inde_avg_like,  all_avg_like_comment,
						 influ_inde_avg_comment,  all_real_avg_comment,  influ_inde_real_avg_comment);
				
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return dto;

	}
	
	
	
	
	

}
