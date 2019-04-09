<%@ page import="es.avalon.jpa.negocio.Capitulo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="http://localhost:8080/webMaven001/vistas/css/style.css">

<meta charset="UTF-8">
<title></title>
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

<div id="contenedor">

<h2 class="tituloDetalle">Detalle de ${capitulo.titulo}</h2>
<form action="ServletFrontController?accion=updateCapitulo&tituloOG=${capitulo.titulo}" method="post">
<fieldset class="fieldsetPrincipal">
<legend>Actualizar Capitulo:</legend>

    <div class="botonLibro">
    <a class="botonText" href="./ServletFrontController?accion=editarLibro&titulo=${capitulo.libro.titulo}">Ver Libro</a>
    </div>
    
    <h5>Título</h5> 
    <input class="cajaTexto" type="text" name="titulo" value="${capitulo.titulo}">
    <br>
    
    <h5>Paginas</h5>
    <input class="cajaTexto" type="number" name="paginas" value="${capitulo.paginas}">
    <br>

    <h5>Titulo del Libro</h5>
    <input class="cajaTexto" type="text" name="libro_titulo" value="${capitulo.libro.titulo}" readonly>
    <br>

    <br>
    <input type="submit" value="Actualizar" style="margin-left: 40%"/>
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