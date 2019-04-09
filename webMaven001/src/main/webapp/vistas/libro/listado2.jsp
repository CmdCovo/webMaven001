<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="es.avalon.jpa.negocio.Libro" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<link rel="stylesheet" type="text/css" href="http://localhost:8080/webMaven001/vistas/css/style.css">

<meta charset="UTF-8">
<title>Listado Libros</title>
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
<h2 class="tituloListado">Listado Libros</h2>
<table border="1" >

<tr>
<th><a class="titulos" href="./ServletFrontController?accion=ordenarLibro&columna=titulo">Título</a></th>
<th><a class="titulos" href="./ServletFrontController?accion=ordenarLibro&columna=autor">Autor</a></th>
<th><a class="titulos" href="./ServletFrontController?accion=ordenarLibro&columna=paginas">Páginas</a></th>
<th colspan="2"></th>
</tr>


<c:forEach items="${lstLibros}" var="l"> 


<tr>
<td>${l[0]}</td>
<td>${l[1]}</td>
<td>${l[2]}</td>

<td>
<div class="botonVer">
<a class="botonText" href="./ServletFrontController?accion=editarLibro&titulo=${l[0]}">Ver</a>
</div>
</td>

<td>
<div class="botonBorrar">
<a class="botonText" href="./ServletFrontController?accion=borrarLibro&titulo=${l[0]}">Borrar</a>
</div>
</td>
</tr>
</c:forEach>



</table>
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