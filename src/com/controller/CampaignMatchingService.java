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
		
		System.out.println("CampaignMatchingService������");
		HttpSession session = request.getSession(); // ���� ��������
		String camnum = request.getParameter("camnum");
		System.out.println("=====================================" + camnum);
		int camnum2 = Integer.parseInt(camnum);
		String name = request.getParameter("ck");  // inf / adver
		System.out.println("value������ : " + name);
	
		MemberDAO mdao = new MemberDAO();
					
		if (name.equals("adver")) {
			System.out.println("������-ķ���� ��Ī ���� ���� ����");
			System.out.println("Integer.parseInt(camnum)) :" +camnum2);
		
			
			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			CampaginDAO camDao = new CampaginDAO();
			CampaginDTO camDto = new CampaginDTO();
			
			matList = matDao.MachingInfluencer(camnum2);// ķ���� ���̵� �� �ӽ÷� ��2 �־���
			camDto = camDao.campaignSelect(camnum2); // �ش� ķ���� ������ ��������
			System.out.println("camDTO : " + camDto.getCampaign_Sid());
			//matList ��Ī���� :0 -> ��Ī �� ��û�� ���÷�� && �ش� ķ���� id, 
			if(matList == null) {
				System.out.println("������������ Ȯ�� : " + matList.get(0).getAd_section());
				// ���ƿ�ó�� �������
				
				session.setAttribute("check", "adver");
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			}else {
				session.setAttribute("camDto", camDto);
				session.setAttribute("check", "adver");
				session.setAttribute("applyAllInfluencer", matList);
				response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_adver.jsp");
			}
			
			
		} else if (name.equals("inf")) {
			MemberDTO info_login = (MemberDTO)session.getAttribute("info_login"); // ������ ķ���� ��������
			
			CampaginDTO camp_info = (CampaginDTO)session.getAttribute("camp_Info"); // ������ ķ���� ��������
			System.out.println("��Ī ���� : info_login = " + camp_info.getAd_estimate());
			
			System.out.println("ķ���� ��Ī ���� ���� ����");
	
			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			MatchingDAO matDao = new MatchingDAO();
			int cnt = matDao.applyCamp(camp_info,info_login);
			
			if(cnt > 0) {
				System.out.println("ķ���� ��û ����!");
			}else {
				System.out.println("ķ���� ��û ����!");
			}
			
			//��û�Ϸ� ����
			response.sendRedirect("klorofil-free-dashboard-template-v2.0/campain_inf.jsp");
		}
	}
}
