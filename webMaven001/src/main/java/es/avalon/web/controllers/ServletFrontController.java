package es.avalon.web.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import es.avalon.configuracion.SpringConfiguration;
import es.avalon.web.controllers.acciones.Accion;
import es.avalon.web.controllers.acciones.AccionIndex;
import es.avalon.web.controllers.acciones.BorrarCapituloAccion;
import es.avalon.web.controllers.acciones.BorrarLibroAccion;
import es.avalon.web.controllers.acciones.EditarCapituloAccion;
import es.avalon.web.controllers.acciones.EditarLibroAccion;
import es.avalon.web.controllers.acciones.FormularioCapituloInsertarAccion;
import es.avalon.web.controllers.acciones.FormularioLibroInsertarAccion;
import es.avalon.web.controllers.acciones.InsertarCapituloAccion;
import es.avalon.web.controllers.acciones.InsertarLibroAccion;
import es.avalon.web.controllers.acciones.ListaCapitulosAccion;
import es.avalon.web.controllers.acciones.ListaLibrosAccion;
import es.avalon.web.controllers.acciones.OrdenarCapituloAccion;
import es.avalon.web.controllers.acciones.OrdenarLibroAccion;
import es.avalon.web.controllers.acciones.UpdateCapituloAccion;
import es.avalon.web.controllers.acciones.UpdateLibroAccion;

public class ServletFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletFrontController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.register(SpringConfiguration.class);
		context.refresh();

		String tipoAccion = request.getParameter("accion");
		Accion accion = null;

		if (tipoAccion == null || tipoAccion.equals("")) {

			accion = context.getBean(AccionIndex.class);

		} else {

			if (tipoAccion.equals("listadoLibros")) {

				accion = context.getBean(ListaLibrosAccion.class);

			} else if (tipoAccion.equals("formularioInsertarLibro")) {

				accion = context.getBean(FormularioLibroInsertarAccion.class);

			} else if (tipoAccion.equals("insertarLibro")) {

				accion = context.getBean(InsertarLibroAccion.class);
				
			} else if (tipoAccion.equals("borrarLibro")) {

				accion = context.getBean(BorrarLibroAccion.class);
				
			} else if (tipoAccion.equals("ordenarLibro")) {

				accion = context.getBean(OrdenarLibroAccion.class);
				
			} else if (tipoAccion.equals("editarLibro")) {

				accion = context.getBean(EditarLibroAccion.class);
				
			} else if (tipoAccion.equals("updateLibro")) {

				accion = context.getBean(UpdateLibroAccion.class);
				
			} else if (tipoAccion.equals("listadoCapitulos")) {

				accion =  context.getBean(ListaCapitulosAccion.class);

			} else if (tipoAccion.equals("formularioInsertarCapitulo")) {

				accion = context.getBean(FormularioCapituloInsertarAccion.class);

			} else if (tipoAccion.equals("insertarCapitulo")) {

				accion = context.getBean(InsertarCapituloAccion.class);
				
			} else if (tipoAccion.equals("borrarCapitulo")) {

				accion = context.getBean(BorrarCapituloAccion.class);
				
			} else if (tipoAccion.equals("ordenarCapitulo")) {

				accion = context.getBean(OrdenarCapituloAccion.class);
				
			} else if (tipoAccion.equals("editarCapitulo")) {

				accion = context.getBean(EditarCapituloAccion.class);
				
			} else if (tipoAccion.equals("updateCapitulo")) {

				accion = context.getBean(UpdateCapituloAccion.class);
			}

		}
		
		try {
			accion.ejecutar(request, response);
			context.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
