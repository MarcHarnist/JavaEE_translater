package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletChangerLangue
 */
@WebServlet("/ServletChangerLangue")
public class ServletChangerLangue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletChangerLangue() {}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String langueInitiale = request.getParameter("langue_initiale");
		String langueCible = request.getParameter("langue_cible");
		
		request.setAttribute("langueInitiale", langueInitiale);
		request.setAttribute("langueCible", langueCible);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/traducteur.jsp");
		rd.forward(request, response);
	}

}
