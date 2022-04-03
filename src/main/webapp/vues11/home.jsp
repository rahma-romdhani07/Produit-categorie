<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
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
          <a class="nav-link active" aria-current="page" href="all">Liste des Produits</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="view">Ajouter un Produit</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="search">Rechercher  un Produit</a>
        </li>
           <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="iste">Liste des Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="categories/form">Ajouter Categorie</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="categories/rech">Rechercher Categorie</a>
        </li>
    </div>
  </div>
</nav>
<!--  <div class=container>
<form method=get  action="recherche">
  <div class="row" >
   <label class="col-md-2">Mot clé:</label>
   <input type=text name=mc class="form-control car col-md-4"> 
  <input type="submit" name="action" value="rechercher" class="btn btn-primary">
  </div>
 
</form>-->
<br><br>
 <div class=container>
<table class="table table-striped" style="width:1000px" border=1 align="center" >
<tr>
  <th>id</th>
  <th>nom</th>
  <th>prix</th>
  <th>quantite</th>
  <th>categorie</th>
  <th>Action</th>
</tr>
<c:forEach items="${liste}" var="x">
  <tr>
     <td>${x.id}</td>
<td>${x.nom}</td>
<td>${x.prix}</td>
<td>${x.quantite}</td>
<td>${x.categorie.nom}</td>
<td><a href="delete?id=${x.id}" class="btn btn-danger">supprimer</a></td>
<!-- <td><a href="update?id=${x.id}" class="btn btn-danger">Modifier</a></td> -->
</c:forEach>  
</table>
  </div>
<!-- 
<div class=card style="width:600px;">
<div class="card-body">
<h5 class="card-title">Ajouter un produit</h5>
<form method=post action="add">

<div >
<label class="form-label">nom</label>
<input type=text name=nom required class="form-control car">
 <!--  <span  class="bg-danger" text =white><form:errors path="produit.nom"></form:errors></span>
</div>
<div>
<label class="form-label">prix</label>
<input type=number name=prix required class="form-control car">
</div>
<div>
<label class="form-label">quantite</label>
<input name=quantite type=number required="required" class="form-control car"><br>
</div>
<div>
<label class="form-label">Categorie</label>
<select name="cc">
<c:forEach items="${categories}" var="x">
  <option value=${x.id}>${x.nom}</option>
  </c:forEach>
  
</select>
<br>
</div>

<input type="submit" name="action" value="ajouter" class="btn btn-success">
</form>
</div>
</div>-->
</div>
</body>
</html>