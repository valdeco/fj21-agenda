package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/minhaServlet")
public class MinhaServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		log("Iniciando a servlet");
	}

	public void destroy() {
		super.destroy();
		log("Destruindo a servlet");
	}

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {

		PrintWriter out = response.getWriter();

		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		out.print("<html> <body> Oi Mundo!sao: "
				+ data.format(Calendar.getInstance().getTime())
				+ " </body> </html>");
	}
}