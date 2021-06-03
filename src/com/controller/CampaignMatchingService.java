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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");

		System.out.println("CampaignMatchingService페이지");
		HttpSession session = request.getSession(); // 세션 가져오기

		String name = request.getParameter("ck"); // inf / adver
		System.out.println("value페이지 : " + name);

		MemberDAO mdao = new MemberDAO();

		if (name.equals("adver")) {
			String camnum = request.getParameter("camnum");
			String[] array = camnum.split(",");
			System.out.println("=====================================" + array[0]); // 캠페인 시퀀스 넘버
			System.out.println("=====================================" + array[1]); // 캠페인 상태 0모집중 1모집완료 2종료

			int camnum2 = Integer.parseInt(array[0]);
			int camStatus = Integer.parseInt(array[1]);
			System.out.println("광고주-캠페인 매칭 서비스 서블릿 파일");
			System.out.println("Integer.parseInt(camnum)) :" + camnum2);

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			CampaginDAO camDao = new CampaginDAO();
			CampaginDTO camDto = new CampaginDTO();

			matList = matDao.MachingInfluencer(camnum2);// 캠페인 아이디 값 임시로 ㄴ2 넣어줌

			System.out.println("matList :" + matList.size());
			camDto = camDao.campaignSelect(camnum2); // 해당 캠페인 정보들 가져오기
			System.out.println("camDTO : " + camDto.getCampaign_Sid());
			// matList 매칭여부 :0 -> 매칭 전 신청한 인플루언서 && 해당 캠페인 id,

			int camp_ck = 0;
			for (int i = 0; i < matList.size(); i++) {
				if (matList.get(i).getCamp_ck() == 0) {
					camp_ck = 0;
					break;
				} else {
					camp_ck = 1;
				}
			}

			System.out.println("캠페인 매칭 서비스 : match_ck" + camp_ck);

			MatchingDAO matDao2 = new MatchingDAO();

			ArrayList<MatchingDTO> matList2 = new ArrayList<MatchingDTO>();
			matList2 = matDao2.MachingInfluencerSuccess(camnum2);

			if (matList.size() == 0) {
				System.out.println("켐페인페이지 확인 ");
				session.setAttribute("camDto", camDto);
				session.setAttribute("check", "adver");
				session.setAttribute("applyAllInfluencer", matList);
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			} else {
				System.out.println("else켐페인페이지 확인 ");
				session.setAttribute("camDto", camDto);
				session.setAttribute("check", "adver");
				session.setAttribute("camp_ck", String.valueOf(camp_ck));
				session.setAttribute("applyAllInfluencer", matList);
				session.setAttribute("MachingInfluencerSuccess", matList2);
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			}

		} else if (name.equals("inf")) {
			MemberDTO info_login = (MemberDTO) session.getAttribute("info_login"); // 선택한 캠페인 세션정보

			CampaginDTO camp_info = (CampaginDTO) session.getAttribute("camp_Info"); // 선택한 캠페인 세션정보
			System.out.println("매칭 서비스 : info_login = " + camp_info.getAd_estimate());

			System.out.println("캠페인 매칭 서비스 서블릿 파일");

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			System.out.println("11111111111" + info_login);
			System.out.println("11111111111" + camp_info);
			int cnt = matDao.applyCamp(camp_info, info_login);

			if (cnt > 0) {
				System.out.println("캠페인 신청 성공!");
			} else {
				System.out.println("캠페인 신청 실패!");
			}

			// 신청완료 띄우기
			response.sendRedirect("bino-free-html5-landing-page-template/influencer_main.jsp");
		}
	}
}
