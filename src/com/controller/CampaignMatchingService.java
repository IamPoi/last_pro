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
		
		HttpSession session = request.getSession(); // ���� ��������
		CampaginDTO camp_info = (CampaginDTO)session.getAttribute("camp_Info"); // ������ ķ���� ��������
		MemberDTO info_login = (MemberDTO)session.getAttribute("info_login"); // ������ ķ���� ��������
		
	
		String name = request.getParameter("value");  // inf / adver
		
	
		MemberDAO mdao = new MemberDAO();
	
		
		System.out.println("��Ī ���� : info_login = " + camp_info.getAd_estimate());
		
		// �α��� ���� ������ ������ �α��� �������� �̵�
		if (info_login == null) {
			out.println(
					"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=adver'; </script>");
			out.flush();
		} else {
		
		}
					
		if (name.equals("adver")) {
			System.out.println("������ �������̷� �̵�");

			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();

			

		} else if (name.equals("inf")) {
			System.out.println("ķ���� ��Ī ���� ���� ����");
	
			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			int cnt = matDao.applyCamp(camp_info,info_login);
			
			if(cnt > 0) {
				System.out.println("ķ���� ��û ����!");
			}else {
				System.out.println("ķ���� ��û ����!");
			}
			
			response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain.jsp");
			

		}
	}

}
