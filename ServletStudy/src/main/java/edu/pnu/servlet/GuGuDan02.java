package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugudan02")
public class GuGuDan02 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			System.out.println("GuGuDan02");
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out = res.getWriter();
			
			String snum2 = req.getParameter("dir");
			
			if(snum2.equals("ver")) {
				out.println("<table border = 1>");
				for(int i = 2; i < 10; i++) {
					out.println("<tr><th> " + i +" 단 </th></tr>");
					for(int j = 1; j < 10; j ++) {
						out.println("<tr><td>" + i + " * " + j + " = " + (i * j) + " </td></tr>");
					}
				}
				out.println("</table>");	
			}
			
			else if(snum2.equals("hor")) {
				out.println("<table border = 1>");
				for(int i = 1; i < 10; i++) {
					out.println("<tr>");
					for(int j = 2; j < 10; j ++) {
						out.println("<td>" + j + " * " + i + " = " + (j * i) + " </td>");
					}
					out.println("</tr>");
				}
				out.println("</table>");
			}
			
			out.close();
		}catch(Exception e) {
			e.getMessage();
		}
		
	}
}