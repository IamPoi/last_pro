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
import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      request.setCharacterEncoding("EUC-KR");
      PrintWriter out = response.getWriter();
      
      String Id = request.getParameter("id");
      String Password = request.getParameter("pw");
      
      String value = request.getParameter("value");
      System.out.println("넘어오는 값 확인 :"+value);
      
      
      if(value.equals("adver")) {
         
           AdvertiserDAO addao = new AdvertiserDAO(); 
           AdvertiserDTO addto = new AdvertiserDTO(Id, Password);
           
           AdvertiserDTO user = addao.login(addto);
           
           CampaginDAO campdao = new CampaginDAO(); 
           ArrayList<CampaginDTO> camp_dto = new ArrayList<CampaginDTO>(); 
           camp_dto = campdao.CampaginAllSelect();
           
           if (user != null) { 
              
              System.out.println("로그인 성공");
              HttpSession session = request.getSession(); 
              session.setAttribute("info", user); 
              session.setAttribute("campAll", camp_dto);
              response.sendRedirect("bino-free-html5-landing-page-template/company_main2.jsp");
           
           } else {
           
              System.out.println("로그인 실패");
         
           }
      }else if(value.equals("inf")) {
         
         MemberDAO dao = new MemberDAO();
         MemberDTO dto = new MemberDTO(Id, Password);

         MemberDTO user = dao.login(dto);
         System.out.println("확인 : ");
        // System.out.println(user.getInflu_age());

         CampaginDAO c_dao = new CampaginDAO();
         ArrayList<CampaginDTO> qua_dto = new ArrayList<CampaginDTO>();
         qua_dto = c_dao.CampaginAllSelect();
         
         if (user != null) {
            System.out.println("로그인 성공");

            HttpSession session = request.getSession();
            session.setAttribute("info", user);
            session.setAttribute("campAll", qua_dto);
            response.sendRedirect("bino-free-html5-landing-page-template/influencer_main.jsp");
            
         } else {
            
            System.out.println("로그인 실패");
            
            //out.println("<script>alert('로그인 실패'); location.href='main.jsp'; </script>");
            //out.flush();
         }
         
      }
   

      
      

   }
}