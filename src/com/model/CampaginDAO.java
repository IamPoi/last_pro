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

				int campaign_Sid = rs.getInt(1);
				String adver_mbr = rs.getString(2);
				String ad_section = rs.getString(3);
				int ad_estimate = rs.getInt(4);
				int rq_follower = rs.getInt(5);
				int rq_age = rs.getInt(6);
				String rq_gender = rs.getString(7);
				String category = rs.getString(8);
				String campaign_title = rs.getString(9);
				String campaign_sub = rs.getString(10);
				int rcrtmNmbr = rs.getInt(11);
				int application_num = rs.getInt(12);
				String campaign_start = rs.getString(13);
				String campaign_end = rs.getString(14);
				int campaign_status = rs.getInt(15);

				info = new CampaginDTO(campaign_Sid, adver_mbr, ad_section, ad_estimate, rq_follower, rq_age, rq_gender,
						category, campaign_title, campaign_sub, rcrtmNmbr, application_num, campaign_start,
						campaign_end, campaign_status);

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

				int campaign_Sid = rs.getInt(1);
				String adver_mbr = rs.getString(2);
				String ad_section = rs.getString(3);
				int ad_estimate = rs.getInt(4);
				int rq_follower = rs.getInt(5);
				int rq_age = rs.getInt(6);
				String rq_gender = rs.getString(7);
				String category = rs.getString(8);
				String campaign_title = rs.getString(9);
				String campaign_sub = rs.getString(10);
				int rcrtmNmbr = rs.getInt(11);
				int application_num = rs.getInt(12);
				String campaign_start = rs.getString(13);
				String campaign_end = rs.getString(14);
				int campaign_status = rs.getInt(15);

				info = new CampaginDTO(campaign_Sid, adver_mbr, ad_section, ad_estimate, rq_follower, rq_age, rq_gender,
						category, campaign_title, campaign_sub, rcrtmNmbr, application_num, campaign_start,
						campaign_end, campaign_status);

			}

		} catch (SQLException e) {
			System.out.println("check");
			e.printStackTrace();
		} finally {
			close();
		}
		return info;

	}

	public ArrayList<CampaginDTO> campaign_adver_Select(String adver_id) {
		list = new ArrayList<CampaginDTO>();
		conn();
		try {
			String sql = "select * from campaign where adver_mbr = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, adver_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int campaign_Sid = rs.getInt(1);
				String adver_mbr = rs.getString(2);
				String ad_section = rs.getString(3);
				int ad_estimate = rs.getInt(4);
				int rq_follower = rs.getInt(5);
				int rq_age = rs.getInt(6);
				String rq_gender = rs.getString(7);
				String category = rs.getString(8);
				String campaign_title = rs.getString(9);
				String campaign_sub = rs.getString(10);
				int rcrtmNmbr = rs.getInt(11);
				int application_num = rs.getInt(12);
				String campaign_start = rs.getString(13);
				String campaign_end = rs.getString(14);
				int campaign_status = rs.getInt(15);

				info = new CampaginDTO(campaign_Sid, adver_mbr, ad_section, ad_estimate, rq_follower, rq_age, rq_gender,
						category, campaign_title, campaign_sub, rcrtmNmbr, application_num, campaign_start,
						campaign_end, campaign_status);

				list.add(info);

			}

		} catch (SQLException e) {
			System.out.println("check");
			e.printStackTrace();
		} finally {
			close();
		}
		return list;

	}

	public CampaginDTO campMaching(int campMaching) {
		conn();
		try {
			String sql = "select * from campaign where campaign_Sid = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, campMaching);
			rs = psmt.executeQuery();

			if (rs.next()) {

				int campaign_Sid = rs.getInt(1);
				String adver_mbr = rs.getString(2);
				String ad_section = rs.getString(3);
				int ad_estimate = rs.getInt(4);
				int rq_follower = rs.getInt(5);
				int rq_age = rs.getInt(6);
				String rq_gender = rs.getString(7);
				String category = rs.getString(8);
				String campaign_title = rs.getString(9);
				String campaign_sub = rs.getString(10);
				int rcrtmNmbr = rs.getInt(11);
				int application_num = rs.getInt(12);
				String campaign_start = rs.getString(13);
				String campaign_end = rs.getString(14);
				int campaign_status = rs.getInt(15);

				info = new CampaginDTO(campaign_Sid, adver_mbr, ad_section, ad_estimate, rq_follower, rq_age, rq_gender,
						category, campaign_title, campaign_sub, rcrtmNmbr, application_num, campaign_start,
						campaign_end, campaign_status);

			}

		} catch (SQLException e) {
			System.out.println("check");
			e.printStackTrace();
		} finally {
			close();
		}
		return info;

	}

	int cnt = 0;

	// 광고주가 체크한 인플루언서
	public int CampaignUpdate(int camp_id) {
		conn();

		try {
			String sql = "update campaign set campaign_status = 1 where campaign_Sid = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, camp_id);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}

}
