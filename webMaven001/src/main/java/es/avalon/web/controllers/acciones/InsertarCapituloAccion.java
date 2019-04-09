package es.avalon.web.controllers.acciones;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import es.avalon.jpa.negocio.Capitulo;
import es.avalon.jpa.negocio.Libro;
import es.avalon.servicios.IServicioLibros;
import es.avalon.servicios.impl.ServicioLibrosImpl;

@Component
public class InsertarCapituloAccion extends Accion{
	
	@Autowired
	IServicioLibros sl = new ServicioLibrosImpl();

	@Override
	public void ejecutar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Capitulo capitulo = new Capitulo(request.getParameter("titulo"), Integer.parseInt(request.getParameter("paginas")));
		Libro l = sl.buscarLibroPorTitulo(request.getParameter("libro_titulo"));
		capitulo.setLibro(l);
		sl.insertarCapitulo(capitulo);
		List<Capitulo> lstCapitulos = (List<Capitulo>) sl.buscarTodosLosCapitulos();
		request.setAttribute("lstCapitulos", lstCapitulos);
		despachar(request, response, "listado.jsp", "vistas/capitulo/");
		
	}

}
