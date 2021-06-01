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
		
		System.out.println("CampaignMatchingService페이지");
		HttpSession session = request.getSession(); // 세션 가져오기
		String camnum = request.getParameter("camnum");
		System.out.println("=====================================" + camnum);
		int camnum2 = Integer.parseInt(camnum);
		String name = request.getParameter("ck");  // inf / adver
		System.out.println("value페이지 : " + name);
	
		MemberDAO mdao = new MemberDAO();
					
		if (name.equals("adver")) {
			System.out.println("광고주-캠페인 매칭 서비스 서블릿 파일");
			System.out.println("Integer.parseInt(camnum)) :" +camnum2);
		
			
			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			CampaginDAO camDao = new CampaginDAO();
			CampaginDTO camDto = new CampaginDTO();
			
			matList = matDao.MachingInfluencer(camnum2);// 캠페인 아이디 값 임시로 ㄴ2 넣어줌
			camDto = camDao.campaignSelect(camnum2); // 해당 캠페인 정보들 가져오기
			System.out.println("camDTO : " + camDto.getCampaign_Sid());
			//matList 매칭여부 :0 -> 매칭 전 신청한 인플루언서 && 해당 캠페인 id, 
			if(matList == null) {
				System.out.println("켐페인페이지 확인 : " + matList.get(0).getAd_section());
				// ㅇㅖ외처리 해줘야함
				
				session.setAttribute("check", "adver");
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			}else {
				session.setAttribute("camDto", camDto);
				session.setAttribute("check", "adver");
				session.setAttribute("applyAllInfluencer", matList);
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			}
			
			
		} else if (name.equals("inf")) {
			MemberDTO info_login = (MemberDTO)session.getAttribute("info_login"); // 선택한 캠페인 세션정보
			
			CampaginDTO camp_info = (CampaginDTO)session.getAttribute("camp_Info"); // 선택한 캠페인 세션정보
			System.out.println("매칭 서비스 : info_login = " + camp_info.getAd_estimate());
			
			System.out.println("캠페인 매칭 서비스 서블릿 파일");
	
			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			int cnt = matDao.applyCamp(camp_info,info_login);
			
			if(cnt > 0) {
				System.out.println("캠페인 신청 성공!");
			}else {
				System.out.println("캠페인 신청 실패!");
			}
			
			//신청완료 띄우기
			response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_inf.jsp");
		}
	}
}
