package isitc.com.SpringBootGestionProduit.Services;

import java.util.List;

import isitc.com.SpringBootGestionProduit.Entity.*;

public interface IGestion {
	public void addProduct(Produit p);
	public List<Produit> getAllProducts();
	public List<Produit> getProduitPMC(String mc);
	public void delete(int id);
	public void updateProduit(Produit produit  );
	public Produit getProduitById(int id );

}
