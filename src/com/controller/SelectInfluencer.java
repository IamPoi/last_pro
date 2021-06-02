package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

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


@WebServlet("/SelectInfluencer")
public class SelectInfluencer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("EUC-KR"); 
		 
		 PrintWriter out = response.getWriter();
		 String [] sizes = request.getParameterValues("ck");
		 String[] array = null;
		 ArrayList<String> arr = new ArrayList<String>();
		 
		 int k=0;
		 int kk=1;
		 for(int i=0; i<sizes.length; i++) {
		 
			 System.out.println("SelectInfluencer : " + sizes[i]);
			 array = sizes[i].split(",");
			 arr.add(array[0]);
			 arr.add(array[1]);
			 
			 
			 
			 k = k+ 2;
			 kk = 1+k;
		
		 }
		 
		 
		 System.out.println("array : " + arr.size());
	
		 for(int i=0; i<arr.size();i++) {
			 System.out.println("array : " + arr.get(i));
		 }
		 
		 
		 MatchingDAO matDao = new MatchingDAO();
		 MatchingDTO matDto = new MatchingDTO();
		 

		
		 
		 
		

		 for(int x=0;x<arr.size();x++) {
			 if(x%2 == 0) {
				 matDao.MachingUpdate(arr.get(x));
				 System.out.println("SelectInfluencer 페이지 인플루언서 업데이트: ");
			 }
			 }
		
		 
			CampaginDAO cdao = new CampaginDAO();
			CampaginDTO cdto = new CampaginDTO();
			
		 for(int i=0; i<arr.size(); i++) {
			 
			 if(i%2 != 0) {
				 cdao.CampaignUpdate(Integer.parseInt(arr.get(i)));
			 }
			 
		 }
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 System.out.println("광고주 마이페이로 이동");

			HttpSession session = request.getSession(); // 세션 가져오기

			AdvertiserDTO info = (AdvertiserDTO) session.getAttribute("info"); // 회원 세션 가져오기

			AdvertiserDAO mdao = new AdvertiserDAO();
			AdvertiserDTO list = new AdvertiserDTO();


			ArrayList<MatchingDTO> matList = new ArrayList<MatchingDTO>();
			ArrayList<CampaginDTO> arrList = new ArrayList<CampaginDTO>();

			// 로그인 세션 정보가 없으면 로그인 페이지로 이동
			if (info == null) {
				out.println(
						"<script>alert('Try To Login!'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp?value=adver'; </script>");
				out.flush();
			} else {

				list = mdao.myPage(info.getAdver_mbr());// info.getMem_id()
				
				
				matList = matDao.MachingInfluencerSuccess(Integer.parseInt(arr.get(1)));
				
				
				
				arrList = cdao.campaign_adver_Select(info.getAdver_mbr());
				
				System.out.println("확인 : ============== " + matList.size());
				if (list != null) {
					System.out.println("확인 : 0000 ");
					session.setAttribute("matchingadv12345", "matching"); 
					session.setAttribute("adverMypage", list);
					session.setAttribute("adverMypageMatching2", matList);
					session.setAttribute("adverCampaignSelect", arrList);
					response.sendRedirect("./klorofil-free-dashboard-template-v2.0/mypage_ad.jsp");

				} else {
					System.out.println("전송실패!");
				}

			}
			
			
			

		 
		 
	}

}
