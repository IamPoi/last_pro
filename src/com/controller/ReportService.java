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
import com.model.ReportDAO;
import com.model.ReportDTO;

@WebServlet("/ReportService")
public class ReportService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("EUC-KR");
		System.out.println("SUCCESS ReportService :");

		HttpSession session = request.getSession(); // ���� ��������

		MemberDTO info = (MemberDTO) session.getAttribute("info"); // ȸ�� ���� ��������

		// �α��� ���� ������ ������ �α��� �������� �̵�
		if (info == null) {
			out.println(
					"<script>alert('�α��� ����'); location.href='./klorofil-free-dashboard-template-v2.0/page-login.jsp'; </script>");
			out.flush();
		} else {
			ReportDAO rdao = new ReportDAO();
			System.out.println("ReportService������ : " + info.getInflu_id());
			ReportDTO rdto = rdao.repoPage(info.getInflu_id());// info.getMem_id()

			if (rdto != null) {
				System.out.println("SUCCESS ReportService :" + rdto.getAssesment());

				session.setAttribute("report", rdto); 

				response.sendRedirect("./klorofil-free-dashboard-template-v2.0/report.jsp");

			} else {
				System.out.println("���۽���!");
			}
		}

	}

}
