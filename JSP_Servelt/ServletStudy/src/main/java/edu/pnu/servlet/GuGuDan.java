package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugudan")
public class GuGuDan extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			System.out.println("GuGuDan");
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out = res.getWriter();
			
			String snum = req.getParameter("num");
			int num = 2;
			
			if(snum != null) {
				num = Integer.parseInt(snum);
			}
			
			out.println("<h3>" + num + " 단입니다.</h3>");
			out.println("<ul>");
			for(int i = 1; i < 10; i++) {
				out.println("<li>" + num + " * " + i + " = " + (num*i) + "</li>");
			}
			out.println("</ul>");
			out.close();
		}catch(Exception e) {
			e.getMessage();
		}
		
	}
}
