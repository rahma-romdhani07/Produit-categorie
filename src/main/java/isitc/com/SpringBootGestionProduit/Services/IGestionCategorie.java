package isitc.com.SpringBootGestionProduit.Services;

import java.util.List;

import isitc.com.SpringBootGestionProduit.Dao.*;
import isitc.com.SpringBootGestionProduit.Entity.Categorie;

public interface IGestionCategorie {
	public List<Categorie> getAllCategories();
	public void ajouterCategorie (Categorie categorie);
	public Categorie getCategorie(int idc);
	public void deleteCategorie(int id);
	public List<Categorie> rechercherParMc(String mc);
	public void updateCategories(Categorie c/*, int id*/ ) ;
 

}
