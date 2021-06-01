package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CampaginDAO;
import com.model.CampaginDTO;
import com.model.MemberDTO;

@WebServlet("/InfluencerCampaignService")
public class InfluencerCampaignService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");


		HttpSession session = request.getSession(); // 세션 가져오기

		MemberDTO info = (MemberDTO) session.getAttribute("info"); // 회원 세션 가져오기
		
		// 로그인 세션 정보가 없으면 로그인 페이지로 이동
		if (info == null) {
			out.println(
					"<script>alert('로그인 실패'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp'; </script>");
			out.flush();
		} else {
			CampaginDAO mdao = new CampaginDAO();

			CampaginDTO mdto = mdao.campaignSelect(1);// 캠페인 id

			if (mdto != null) {
				System.out.println("SUCCESS InfluencerCampaignService");

				session.setAttribute("selectCampaign", mdto); 


				response.sendRedirect("./klorofil-free-dashboard-template-v2.0/campain.jsp");

			} else {
				System.out.println("전송실패!");
			}
		}
//		

	}

}
