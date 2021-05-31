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

@WebServlet("/CampaignService")
public class CampaignService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		System.out.println("InfluencerCampaignService파일");
		System.out.println("id : " + id);
		String[] array  = id.split(",");
		
		System.out.println("array[0] : " + array[0]);
		System.out.println("array[1] : " + array[1]);
		PrintWriter out = response.getWriter();

		id = array[0];
		String name = array[1];

		System.out.println(name);

		if (name.equals("adver")) {
			System.out.println("광고주 마이페이로 이동");

			HttpSession session = request.getSession(); // 세션 가져오기

			AdvertiserDTO info = (AdvertiserDTO) session.getAttribute("info"); // 회원 세션 가져오기

			AdvertiserDAO mdao = new AdvertiserDAO();
			AdvertiserDTO list = new AdvertiserDTO();

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();

			// 로그인 세션 정보가 없으면 로그인 페이지로 이동
			if (info == null) {
				out.println(
						"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=adver'; </script>");
				out.flush();
			} else {

				list = mdao.myPage(info.getAdver_mbr());// info.getMem_id()
				matList = matDao.MatchingAllSelect_ad(info.getAdver_mbr());

				if (list != null) {
					session.setAttribute("adverMypage", list);
					session.setAttribute("adverMypageMatching", matList);
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

				CampaginDAO c_dao = new CampaginDAO();
				CampaginDTO qua_dto = new CampaginDTO();
				qua_dto = c_dao.campaignSelect(Integer.parseInt(id));

				if (qua_dto != null) {
					session.setAttribute("campSelect", qua_dto);
					session.setAttribute("campPicture", id);
					response.sendRedirect("./klorofil-free-dashboard-template-v2.0/campain.jsp");
				} else {
					System.out.println("전송실패!");
				}

			}

		}

	}

}
