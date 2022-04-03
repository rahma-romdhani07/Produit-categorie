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
<div class="container" style="margin-left: 280px;">
<div class=card style="width:800px;">
<div class="card-body"  >
  <h2 class="card-title"  align="center"><i><u>Ajouter un produit</u></i></h2>
<form method=post action="add">

<div >
<label class="form-label">Nom</label>
<input type=text name=nom required class="form-control car">
 <span  class="bg-danger" text =white><form:errors path="produit.nom"></form:errors></span>
</div>
<div>
<label class="form-label">Prix</label>
<input type=number name=prix required class="form-control car">
<span  class="bg-danger" text =white><form:errors path="produit.prix"></form:errors></span>
</div>
<div>
<label class="form-label">Quantite</label>
<input name=quantite type=number required="required" class="form-control car"> 
<span  class="bg-danger" text =white><form:errors path="produit.quantite"></form:errors></span>

</div>
<div>
<label class="form-label">Categorie</label>
<select name="cc">
<c:forEach items="${categories}" var="x">
  <option value=${x.id}>${x.nom}</option> 
  </c:forEach>
  
</select><br>
 <a href="http://localhost:8281/categories/add" class="btn btn-danger">Ajouter Categorie</a><br>
<br>
</div>

<input type="submit" name="action" value="ajouter" class="btn btn-success">
<a href="all" class="btn btn-info">Annuler</a>
</form>
</div>
</div>
</div>
</body>
</html>
