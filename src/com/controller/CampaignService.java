package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CampaginDAO;
import com.model.CampaginDTO;

@WebServlet("/CampaignService")
public class CampaignService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		System.out.println("InfluencerCampaignService파일");
		System.out.println("id : " + id);

		CampaginDAO c_dao = new CampaginDAO();
		CampaginDTO qua_dto = new CampaginDTO();
		qua_dto = c_dao.campaignSelect(Integer.parseInt(id));

		if (qua_dto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("campSelect", qua_dto);
			response.sendRedirect("./klorofil-free-dashboard-template-v2.0/campain.jsp");
		} else {
			System.out.println("전송실패!");
		}

	}

}
