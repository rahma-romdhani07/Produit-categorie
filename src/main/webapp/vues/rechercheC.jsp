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
        <form method=get  action="recherche">
        <div class="row" >
         <input class="form-control me-2" type="search"  name=mc placeholder="Nom de Categorie " aria-label="Search"  value=${val}>
        <input type="submit" value="Recherche" class="btn btn-outline-success" ></i>  </div>
    </form>

  <!--<div class=container>
<form method=get  action="recherche">
  <div class="row" >
   <label class="col-md-2">Mot clé:</label>
   <input type=text name=mc class="form-control car col-md-4"> 
  <input type="submit" name="action" value="rechercher" class="btn btn-primary">
  </div>-->
 
</form>
<br><br>

<table class="table table-striped" style="width:1000px" border=1>
<tr>
  <th>Id</th>
  <th>Nom de categorie</th>
  <th>Actions</th>
 
</tr>
<c:forEach items="${categories}" var="x">
  <tr>
     <td>${x.id}</td>
	<td>${x.nom}</td>
	<td><a href="delete?id=${x.id}" class="btn btn-danger">supprimer</a>
	       <a href="update?id=${x.id}" class="btn btn-primary">Modifier</a></td> 
	</c:forEach>  
</table>
</div>
</div>
</body>
</html>