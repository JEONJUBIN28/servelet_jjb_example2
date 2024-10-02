package eud.ict.servlet;

import java.io.IOException;

import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LottoServelt
 */
@WebServlet("/star")
public class StarServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StarServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); //Post 방식에서 한글 안깨지게 하는것.
		
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		out.print("<html>");
		out.print("<body>");
		for(int i = 1; i <= num; i++) {
			for (int j = 1; j <= i; j++) {
				//System.out.print("*");
				out.print("*");
			}	
			//System.out.println();
			out.print("<br>");
		}
		
		out.print("<hr>");
		
		out.print("<html>");
		out.print("<body>");
		for(int i = 1; i <= num; i++) {
			for (int j = i; j <= num; j++) {
				//System.out.print("*");
				out.print("*");
			}	
			//System.out.println();
			out.print("<br>");
		}
		
		out.print("<body>");
		out.print("<html>");
		out.close();

	}

}
