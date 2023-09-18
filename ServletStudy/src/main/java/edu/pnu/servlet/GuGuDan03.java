package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugudan03")
public class GuGuDan03 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			System.out.println("GuGuDan03");
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out = res.getWriter();

			String sdan = req.getParameter("dan");
			int dan = 3;

			if (sdan != null) {
				dan = Integer.parseInt(sdan);
			}
			
			out.println("<table border = 1>");

			for (int i = 2; i <= 9; i += dan) {
				for (int j = 1; j <= 9; j++) {
					out.println("<tr>");
					for (int k = i; k < i + dan; k++) {
						if( k <= 9) {
							out.println("<td>" + k + " * " + j + " = " + (k * j) + "</td>");
						}
					}
					out.println("</tr>");
				}
			}
			out.println("</table>");

			out.close();
		} catch (Exception e) {
			e.getMessage();
		}

	}
}