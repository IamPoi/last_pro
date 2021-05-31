package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.AdvertiserDAO;
import com.model.AdvertiserDTO;
import com.model.CampaginDAO;
import com.model.CampaginDTO;
import com.model.MatchingDAO;
import com.model.MatchingDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/CampaignMatchingService")
public class CampaignMatchingService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession(); // 세션 가져오기
		CampaginDTO camp_info = (CampaginDTO)session.getAttribute("camp_Info"); // 선택한 캠페인 세션정보
		MemberDTO info_login = (MemberDTO)session.getAttribute("info_login"); // 선택한 캠페인 세션정보
		
	
		String name = request.getParameter("value");  // inf / adver
		
	
		MemberDAO mdao = new MemberDAO();
	
		
		System.out.println("매칭 서비스 : info_login = " + camp_info.getAd_estimate());
		
		// 로그인 세션 정보가 없으면 로그인 페이지로 이동
		if (info_login == null) {
			out.println(
					"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=adver'; </script>");
			out.flush();
		} else {
		
		}
					
		if (name.equals("adver")) {
			System.out.println("광고주 마이페이로 이동");

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();

			

		} else if (name.equals("inf")) {
			System.out.println("캠페인 매칭 서비스 서블릿 파일");
	
			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			int cnt = matDao.applyCamp(camp_info,info_login);
			
			if(cnt > 0) {
				System.out.println("캠페인 신청 성공!");
			}else {
				System.out.println("캠페인 신청 실패!");
			}
			
			response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain.jsp");
			

		}
	}

}
