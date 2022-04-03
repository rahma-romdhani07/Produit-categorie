package isitc.com.SpringBootGestionProduit.Controlleurs;

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
import isitc.com.SpringBootGestionProduit.Services.IGestionCategorie;

@Controller
@RequestMapping("/categories")
public class ControlleurCategorie {

	@Autowired
  IGestionCategorie gestionCategorie ; 
	
	//recupere tous les categories
	@GetMapping("/all")
	public String getAllCatgorie(Model m) {
		m.addAttribute("categories",gestionCategorie.getAllCategories());
		return "partie2";
	}
	//recupere formulaire de l'ajout 
	@GetMapping("/add")
	public String getForm( ) {
		
		return  "formC";
	}
	//ajouter nouvelle categories
	@PostMapping("/add")
	public String ajouterCategorie(@Valid Categorie categorie ,  BindingResult br ,Model m) {
		if(br.hasErrors()) {
	
			return "formC";
		}
		else {
	
		gestionCategorie.ajouterCategorie(categorie);
		return "redirect:/categories/all";
		}
	}
	
	@GetMapping("/delete")
	public String deleteCategorie(int id) {
		gestionCategorie.deleteCategorie(id);
		return  "redirect:/categories/all";
	}
	//recupere page de recherche une categorie
	@GetMapping("/search")
	public String getForm(Model m) {
		m.addAttribute("categories", gestionCategorie.getAllCategories());
		m.addAttribute("val", "");
	return "rechercheC"  ; 
	}
	@GetMapping("/recherche")
	public String rechercheCategorie(String mc ,Model m) {
	m.addAttribute("categories" , gestionCategorie.rechercherParMc(mc)) ;
	m.addAttribute("val", mc);

		return  "rechercheC";
	}
	@GetMapping("/update")
	public String getForm(Produit produit , int id  , Model m) {
		Categorie  c = gestionCategorie.getCategorie(id) ;
		m.addAttribute("c", c);
	
		return "updateC";
	}
	@PostMapping("/update")
	public String updateProduit(@Valid  Categorie categorie , BindingResult br /*, int id */,  Model m) {
		
		if(br.hasErrors()) {
			m.addAttribute("categories", gestionCategorie.getAllCategories());
			return "updateC";
		}
		else {
			//Categorie c = gestionCategorie.getCategorie(id) ; 
		gestionCategorie.updateCategories(categorie );
		return "redirect:/categories/all";
		}
		
	
}
}
