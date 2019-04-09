package es.avalon.web.controllers.acciones;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import es.avalon.jpa.negocio.Libro;
import es.avalon.repositorioslibro.ILibroRepository;
import es.avalon.repositorioslibro.impl.LibroRepositoryImpl;

@Component
public class InsertarLibroAccion extends Accion {
	
	@Autowired
	ILibroRepository lr = new LibroRepositoryImpl();
	

	@Override
	public void ejecutar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Libro libro = new Libro(request.getParameter("titulo"), request.getParameter("autor"));
		
		lr.insertar(libro);
		List<Libro> lstLibros = (List<Libro>) lr.buscarTodos();
		request.setAttribute("lstLibros", lstLibros);
		despachar(request, response, "listado.jsp", "vistas/libro/");
		
	}

}
