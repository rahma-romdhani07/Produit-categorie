package isitc.com.SpringBootGestionProduit.Controlleurs;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import isitc.com.SpringBootGestionProduit.Entity.Categorie;
import isitc.com.SpringBootGestionProduit.Entity.Produit;
import isitc.com.SpringBootGestionProduit.Services.IGestion;
import isitc.com.SpringBootGestionProduit.Services.IGestionCategorie;

@Controller
//si on a plusieurs controlleur 
@RequestMapping("/produits")
public class ControleurProduit {
	@Autowired
	IGestion gestionProduits ;
	@Autowired
	IGestionCategorie gestionCategorie ;
	
	//recupere tous les produits
	@GetMapping("/all")
	public String getAllProduits(Model  m) {
		
		List<Produit>l= gestionProduits.getAllProducts() ;
		m.addAttribute("liste",l) ;
		m.addAttribute("categories", gestionCategorie.getAllCategories());
		return "home";
	}
	//recupere formulaire d'ajout d'un produit 
	@GetMapping("/add")
	public String getform(Model m) {
	
		m.addAttribute("categories", gestionCategorie.getAllCategories());
		return "formP";
	}
	
@PostMapping ("/add")
public String ajouterProduit(@Valid Produit produit , BindingResult br , int cc , Model m) {
	if(br.hasErrors()) {
		//m.addAttribute("liste",gestionProduits.getAllProducts()) ;
		m.addAttribute("categories", gestionCategorie.getAllCategories());
		return "formP";
	}
	else {
	Categorie categorie=gestionCategorie.getCategorie(cc);
	produit.setCategorie(categorie);
	gestionProduits.addProduct(produit);
	return "redirect:/produits/all";
	}
	
}
//recupere page de recherche un produit 
@GetMapping("/search")
public String recherche(Model m) {
	m.addAttribute("liste", gestionProduits.getAllProducts());
	m.addAttribute("val", "");
	return "rechercheP";
}
@GetMapping ("/recherche")
public String rechercheProduit(Model m , String mc  ) {

	List <Produit>listee =gestionProduits.getProduitPMC(mc);
	m.addAttribute("liste",listee);
	m.addAttribute("categories", gestionCategorie.getAllCategories());
	m.addAttribute("val", mc);
	return "rechercheP";
}
@GetMapping("/delete")
public String deleteProduit(int id) {
	gestionProduits.delete(id);
	return "redirect:/produits/all";
}
@GetMapping("/update")
public String getForm(Produit produit , int id  , Model m) {
	Produit p = gestionProduits.getProduitById(id);
	m.addAttribute("produit", p);
	m.addAttribute("categories", gestionCategorie.getAllCategories());

	return "updateP";
}
@PostMapping("/update")
public String updateProduit(@Valid Produit produit , BindingResult br , int cc , Model m) {
	
	if(br.hasErrors()) {
		m.addAttribute("liste",gestionProduits.getAllProducts()) ;
		m.addAttribute("categories", gestionCategorie.getAllCategories());
		return "updateP";
	}
	else {
	Categorie categorie=gestionCategorie.getCategorie(cc);
	produit.setCategorie(categorie);
	//Produit p = gestionProduits.getProduitById(id);
	gestionProduits.updateProduit(produit );
	return "redirect:/produits/all";
	}
	
}
}
