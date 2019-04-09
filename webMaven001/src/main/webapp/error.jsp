<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/webMaven001/vistas/css/style.css">
<meta charset="UTF-8">
<title>Ha sucedido un error</title>
<%String e = exception.getMessage(); %>
</head>

<body>

<div id="botonera">
<ul>
  <li><a href="ServletFrontController?">Inicio</a></li>
  <li><a href="ServletFrontController?accion=formularioInsertarLibro">Crear Libro</a></li>
  <li><a href="ServletFrontController?accion=formularioInsertarCapitulo">Crear Capítulo</a></li>
  <li><a href="ServletFrontController?accion=listadoLibros">Listado Libros</a></li>
  <li><a href="ServletFrontController?accion=listadoCapitulos">Listado Capítulos</a></li>
</ul>
</div>

<div style="background-color: #efeff5; padding: 50px; width: 92.5%; margin: auto; border-radius: 4px; font-weight: bold;">

<h1>Ha ocurrido un error: </h1>
<br>
<br><h2><% out.print(e); %></h2>

<br>

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