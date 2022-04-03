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
<br><br>
 <div align="center">
<div class=card style="width:600px;">
<div class="card-body">
<h5 class="card-title">Ajouter un produit</h5>
<form method=post action="add">

<div >
<label class="form-label">nom</label>
<input type=text name=nom required class="form-control car">
 <!--  <span  class="bg-danger" text =white><form:errors path="produit.nom"></form:errors></span>-->
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

<input type="submit" name="action" value="Ajouter" class="btn btn-success">
<a href="all" class="btn btn-danger">Annuler</a>
</form>
</div>
</div>
</div>
</body>
</html>