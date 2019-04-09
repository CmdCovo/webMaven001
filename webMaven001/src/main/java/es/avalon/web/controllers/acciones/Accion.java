package es.avalon.web.controllers.acciones;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Accion {

	public abstract void ejecutar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException;

	public void despachar(HttpServletRequest request, HttpServletResponse response, String ficheroJSP,
			final String RUTA) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher(RUTA + ficheroJSP);
		rd.forward(request, response);
	}

}
