package es.avalon.web.controllers.acciones;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import es.avalon.servicios.IServicioLibros;
import es.avalon.servicios.impl.ServicioLibrosImpl;

@Component
public class FormularioCapituloInsertarAccion extends Accion {

	@Autowired
	IServicioLibros sl = new ServicioLibrosImpl();

	@Override
	public void ejecutar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("lstLibros", sl.buscarTodosLosLibros());
		despachar(request, response, "Formulario.jsp", "vistas/capitulo/");

	}

}
