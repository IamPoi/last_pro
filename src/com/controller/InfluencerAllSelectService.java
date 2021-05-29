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

import com.model.CampaginDAO;
import com.model.CampaginDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.influencerInstaDTO;


@WebServlet("/InfluencerAllSelectService")
public class InfluencerAllSelectService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("name");
	     System.out.println(id);

	      
		MemberDAO c_dao = new MemberDAO();
		ArrayList<influencerInstaDTO> qua_dto = new ArrayList<influencerInstaDTO>();
		
		
		qua_dto = c_dao.influencer_instaSelect();
		
		System.out.println("InfluencerAllService : " + qua_dto.get(0).getBiography());
		
		
		 if (qua_dto != null) {
	           //인플루언서 계정정보 테이블 내의 전체 데이터 선택 후 session에 담아 전달
	           HttpSession session = request.getSession();
	           session.setAttribute("influencer_instaSelect", qua_dto);
	          
	         
	         
	         if(id.equals("inf")) {
	            response.sendRedirect("./bino-free-html5-landing-page-template/influencer_main.jsp");
	         } else if(id.equals("adv")){
	            response.sendRedirect("./bino-free-html5-landing-page-template/company_main2.jsp");
	         
	         }   
	         
	      }else {
	         System.out.println("전송실패!");
	         
	      }
	      
	      /* ./bino-free-html5-landing-page-template/ */
	      /* company_main2.jsp */
	      
	      
	   }
	   
	}