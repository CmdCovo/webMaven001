package es.avalon.web.controllers.acciones;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import es.avalon.jpa.negocio.Libro;
import es.avalon.servicios.IServicioLibros;
import es.avalon.servicios.impl.ServicioLibrosImpl;

@Component
public class BorrarLibroAccion extends Accion{
	
	@Autowired
	IServicioLibros sl = new ServicioLibrosImpl();

	@Override
	public void ejecutar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Libro libro = new Libro(request.getParameter("titulo"));
		sl.borrarLibro(libro);
		List<Libro> lstLibros = (List<Libro>) sl.buscarTodosLosLibros();
		request.setAttribute("lstLibros", lstLibros);
		
		despachar(request, response, "listado.jsp", "vistas/libro/");
		
	}

}
