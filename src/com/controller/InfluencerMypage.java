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
import com.model.ReportDAO;
import com.model.ReportDTO;

@WebServlet("/InfluencerMypage")
public class InfluencerMypage extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");

		String name = request.getParameter("name");

		System.out.println(name);

		if (name.equals("adver")) {
			System.out.println("광고주 마이페이로 이동");

			HttpSession session = request.getSession(); // 세션 가져오기
			session.removeAttribute("matchingadv12345");
			
			
			
			AdvertiserDTO info = (AdvertiserDTO) session.getAttribute("info"); // 회원 세션 가져오기

			AdvertiserDAO mdao = new AdvertiserDAO();
			AdvertiserDTO list = new AdvertiserDTO();
			CampaginDAO cdao = new CampaginDAO();
			CampaginDTO cdto = new CampaginDTO();

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			ArrayList<CampaginDTO> arrList = new ArrayList<CampaginDTO>();

			// 로그인 세션 정보가 없으면 로그인 페이지로 이동
			if (info == null) {
				out.println(
						"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=adver'; </script>");
				out.flush();
			} else {

				list = mdao.myPage(info.getAdver_mbr());// info.getMem_id()
				matList = matDao.MatchingAllSelect_ad(info.getAdver_mbr());
				arrList = cdao.campaign_adver_Select(info.getAdver_mbr());

				if (list != null) {
					session.setAttribute("adverMypage", list);
					session.setAttribute("adverMypageMatching", matList);
					session.setAttribute("adverCampaignSelect", arrList);
					response.sendRedirect("./klorofil-free-dashboard-template-v2.0/mypage_ad.jsp");

				} else {
					System.out.println("전송실패!");
				}

			}

		} else if (name.equals("inf")) {
			System.out.println("인플루언서 마이페이지로 이동");

			HttpSession session = request.getSession(); // 세션 가져오기

			MemberDTO info = (MemberDTO) session.getAttribute("info"); // 회원 세션 가져오기

			MemberDAO mdao = new MemberDAO();
			MemberDTO list = new MemberDTO();

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();

			System.out.println("확인 : " + list.getInflu_category());

			// 로그인 세션 정보가 없으면 로그인 페이지로 이동
			if (info == null) {
				out.println(
						"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=inf'; </script>");
				out.flush();
			} else {

				ReportDAO rdao = new ReportDAO();
				System.out.println("ReportService페이지 : " + info.getInflu_id());
				ReportDTO rdto = rdao.repoPage(info.getInflu_id());// info.getMem_id()

				list = mdao.myPage(info.getInflu_id());// info.getMem_id()
				matList = matDao.MatchingAllSelect(info.getInflu_id());

				if (list != null) {
					session.setAttribute("report", rdto);
					session.setAttribute("influMypage", list);
					session.setAttribute("influMypageMatching", matList);
					response.sendRedirect("./klorofil-free-dashboard-template-v2.0/mypage.jsp");
				} else {
					System.out.println("전송실패!");
				}

			}

		}

	}

}
