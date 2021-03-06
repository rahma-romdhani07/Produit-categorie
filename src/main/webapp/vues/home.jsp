<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet"  href="/css/bootstrap.min.css">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="all"><i>Gestion des Produits </i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8281/produits/all">Liste des Produits</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8281/produits/add">Ajouter un Produit</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8281/produits/search">Rechercher  un Produit</a>
        </li>
           <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8281/categories/all">Liste des Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8281/categories/add">Ajouter Categorie</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8281/categories/search">Rechercher Categorie</a>
        </li>
    </div>
  </div>
</nav>
<br><br>
<div class="container">

<br><br>

<table class="table table-striped" style="width:1000px" border=2>
<tr>
  <th>Id</th>
  <th>Nom</th>
  <th>Prix</th>
  <th>Quantite</th>
  <th>Categorie</th>
  <th>Action</th>
</tr>
<c:forEach items="${liste}" var="x">
  <tr>
     <td>${x.id}</td>
	<td>${x.nom}</td>
  <form:errors>path=produit.nom</form:errors>
	<td>${x.prix}</td>
	<td>${x.quantite}</td>
	<form:errors>path=produit.quantite</form:errors>
	<td>${x.categorie.nom}</td>
	<td><a href="delete?id=${x.id}" class="btn btn-danger">supprimer</a>
	 <a href="update?id=${x.id}" class="btn btn-primary">Modifier</a></td> 
	</c:forEach>  
</table>
</div>
</div>
</div>
</body>
</html>