package isitc.com.SpringBootGestionProduit.Controlleurs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import isitc.com.SpringBootGestionProduit.Dao.CategorieRepository;
import isitc.com.SpringBootGestionProduit.Dao.ProduitRepository;
import isitc.com.SpringBootGestionProduit.Entity.Categorie;
import isitc.com.SpringBootGestionProduit.Entity.Produit;
import isitc.com.SpringBootGestionProduit.Services.IGestion;
import isitc.com.SpringBootGestionProduit.Services.IGestionCategorie;
@CrossOrigin("*") 
@RestController
@RequestMapping("/api")
public class Controller {
 
	@Autowired IGestion gestion  ; 
	@Autowired IGestionCategorie gestionc  ; 
	@Autowired ProduitRepository pr ;
	@Autowired CategorieRepository cr ;
	
	
	@GetMapping("/produits")
	public List<Produit> getAllProducts(){
		return  gestion.getAllProducts();
	}
	
	@PostMapping("/produits")
	public void  addProduct(@RequestBody Produit p) {
		gestion.addProduct(p);
	}
	@DeleteMapping("/produits/{id}")	
	public void  deleteProduit(@PathVariable ("id") int idProduit) {
		gestion.delete(idProduit);
	}
	@GetMapping("/produits/{mc}")
	public List<Produit> getProduitByMC(@PathVariable ("mc") String mot){
		return gestion.getProduitPMC(mot) ; 
	}
	@GetMapping("/produit/{id}")
	public Produit getProduit(@PathVariable("id") int id ) {
		return  pr.findById(id);
	}
	// composition
	/*@DeleteMapping("/categories/{id}")	
	public void  deleteCategorie(@PathVariable ("id") int idCategorie) {
		gestionc.deleteCategorie(idCategorie);
	}*/
	//agregation
	/*@DeleteMapping("/categories/{id}")	
	public void  deleteCategorie(@PathVariable ("id") int idCategorie) {
	//	gestionc.deleteCategorie(idCategorie);
		Categorie c = cr.findById(idCategorie).get() ; 
		for (Produit p:c.getListe()) {
			p.setCategorie(null);
		}
		cr.deleteById(idCategorie);
		//gestionc.deleteCategorie(idCategorie);
	}*/
}
