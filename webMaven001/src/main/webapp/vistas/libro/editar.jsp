<%@page import="java.util.List"%>
<%@ page import="es.avalon.jpa.negocio.Libro" %>
<%@ page import="es.avalon.jpa.negocio.Capitulo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<h2 class="tituloDetalle">Detalle de ${libro.titulo}</h2>
<form action="ServletFrontController?accion=updateLibro" method="post">
<fieldset class="fieldsetPrincipal">
<legend>Actualizar Libro:</legend>

    <h5>Título</h5>
    <input class="cajaTexto" type="text" name="titulo" value="${libro.titulo}" disabled>
    <br>

    <h5>Autor</h5>
    <input class="cajaTexto" type="text" name="autor" value="${libro.autor}">
    <br>

    <h5>Total de Páginas</h5>
    <input class="cajaTexto" type="number" name="paginas" value="${libro.getPaginas()}" readonly>
    <br>
    <input name="tituloOG" type="hidden" value="${libro.titulo}">
    <br>
    <input type="submit" value="Actualizar" style="margin-left: 40%" />


<br>
<fieldset>
<legend>Capítulos del Libro:</legend>
<table border="1" >

<tr>
<th>Título</th>
<th>Páginas</th>
<th></th>
</tr>

<c:forEach items="${lstCapitulos}" var="c"> 

<tr>
<td>${c.titulo}</td>
<td>${c.paginas}</td>

<td>
<div class="botonVer">
<a class="botonText" href="./ServletFrontController?accion=editarCapitulo&titulo=${c.titulo}">Ver</a>
</div>
</td>

</tr>
</c:forEach>


</table>
</fieldset>
    
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