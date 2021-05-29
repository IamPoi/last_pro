package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.InstaDTO;
import com.model.InstaDAO;

/**
 * Servlet implementation class Influ_main_service
 */
@WebServlet("/Advertiser_main_service")
public class Advertiser_main_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  request.setCharacterEncoding("EUC-KR"); 
		  	  
		  InstaDAO i_dao = new InstaDAO();
		  ArrayList<InstaDTO> list = new ArrayList<InstaDTO>();
		  list = i_dao.select();
		  
		  System.out.println(list);
		  
		  if(list != null) {
			  	
			 response.sendRedirect("./bino-free-html5-landing-page-template/company_main.jsp"); 
		  } else {
		 	  System.out.print("메시지 전송 실패"); 
		 	  } 
		 

		
	}

}
