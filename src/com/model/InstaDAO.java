package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.InstaDTO;

public class InstaDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	int cnt = 0;
	ResultSet rs = null;
	InstaDTO insta = null;
	ArrayList<InstaDTO> list = null;
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
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
			psmt.close();
			} 
			if(conn != null) {
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<InstaDTO> select() {
		list = new ArrayList<InstaDTO>();
		conn();
		try {
			String sql = "select * from influencer_insta";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while(rs.next()) {
				String influ_id = rs.getString(1);
				String biography = rs.getString(5);
				
				insta = new InstaDTO(influ_id, biography);
				list.add(insta);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return list;
	}	
	
}