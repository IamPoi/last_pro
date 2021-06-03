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
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.ReportDAO;
import com.model.ReportDTO;

@WebServlet("/ReportService")
public class ReportService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");
		System.out.println("SUCCESS ReportService :");

		HttpSession session = request.getSession(); // 세션 가져오기

		
		
		String info_adver = request.getParameter("info_adver"); // 회원 세션 가져오기
		String[] array = info_adver.split(","); 
		//array[0] 인플루언서 id
		//array[1] adver
		
		
		
			ReportDAO rdao = new ReportDAO();
			MemberDAO mdao = new MemberDAO();
			MemberDTO mdto = new MemberDTO();
			
		//	System.out.println("ReportService페이지 : " + info.getInflu_id());
			ReportDTO rdto = null;
			if(array[1].equals("adver")){
				System.out.println("array[0 : " + array[0]);
				rdto = rdao.repoPage(array[0]);// info.getMem_id()
				mdto = mdao.myPage(array[0]);
				session.setAttribute("influMypage", mdto);
			}else {
				 MemberDTO info = (MemberDTO) session.getAttribute("info"); // 회원 세션 가져오기
				 rdto = rdao.repoPage(info.getInflu_id());// info.getMem_id()
			}
			if (rdto != null) {
				System.out.println("SUCCESS ReportService :" + rdto.getAssesment());

				session.setAttribute("report", rdto); 

				response.sendRedirect("./klorofil-free-dashboard-template-v2.0/loading.jsp");

			} else {
				System.out.println("전송실패!");
			}
		

	}

}
