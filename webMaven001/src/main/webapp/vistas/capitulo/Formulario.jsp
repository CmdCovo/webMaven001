<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario</title>

<link rel="stylesheet" type="text/css" href="http://localhost:8080/webMaven001/vistas/css/style.css">

</head>
<body>

<div id="botonera">
<ul>
  <li><a href="ServletFrontController?">Inicio</a></li>
  <li><a href="ServletFrontController?accion=formularioInsertarLibro">Crear Libro</a></li>
  <li><a href="ServletFrontController?accion=formularioInsertarCapitulo">Crear Cap�tulo</a></li>
  <li><a href="ServletFrontController?accion=listadoLibros">Listado Libros</a></li>
  <li><a href="ServletFrontController?accion=listadoCapitulos">Listado Cap�tulos</a></li>
</ul>
</div>

<div id="contenedor">
    
<h2 class="tituloFormulario">Formulario Cap�tulo</h2>
<form action="ServletFrontController">
<fieldset class="fieldsetPrincipal">
<legend>Insertar Cap�tulo:</legend>
    <h5>T�tulo</h5>
    <input class="cajaTexto" type="text" name="titulo">
    <br>
    
    <h5>P�ginas</h5>
    <input class="cajaTexto" type="number" name="paginas">
    <br>

    <h5>T�tulo del Libro</h5>
    
    <select class="selectLibros" name="libro_titulo">
    <c:forEach items="${lstLibros}" var="l">
    
    <option>${l.titulo}</option>
    
    </c:forEach>
    </select>
    <br>

    <br>
    <input type="submit" value="Enviar" style="margin-left: 45%"/>
    <input type="hidden" name="accion" value="insertarCapitulo"  />
</fieldset>
</form>

</div>

</body>

<div class="contenedor2">
<footer>
<div class="piePagina">

Curso Grupo Avalon 2019 - Gabriel Covone

</div>
</footer>
</div>
</html>