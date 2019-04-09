package es.avalon.web.controllers.acciones;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import es.avalon.jpa.negocio.Libro;
import es.avalon.servicios.IServicioLibros;
import es.avalon.servicios.impl.ServicioLibrosImpl;

@Component
public class EditarLibroAccion extends Accion {
	
	@Autowired
	IServicioLibros sl = new ServicioLibrosImpl();
	

	@Override
	public void ejecutar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Libro l = sl.buscarLibroPorTitulo(request.getParameter("titulo"));
		request.setAttribute("titulo", request.getParameter("titulo"));
		request.setAttribute("libro", l);
		request.setAttribute("lstCapitulos", sl.buscarCapituloPorTituloLibro(request.getParameter("titulo")));
		despachar(request, response, "editar.jsp", "vistas/libro/");
		
	}
	
	

}
