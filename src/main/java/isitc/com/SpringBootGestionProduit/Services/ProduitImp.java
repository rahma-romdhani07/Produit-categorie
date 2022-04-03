package isitc.com.SpringBootGestionProduit.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import isitc.com.SpringBootGestionProduit.Dao.ProduitRepository;
import isitc.com.SpringBootGestionProduit.Entity.Produit;

@Service
public class ProduitImp implements IGestion{
	//injection de dependa,ces soit par Autowired
@Autowired
ProduitRepository pr ;
/*public public ProduitImp() {
	// TODO Auto-generated constructor stub
}*/

	@Override
	public void addProduct(Produit p) {
		// TODO Auto-generated method stub
		pr.save(p);
	}

	@Override
	public List<Produit> getAllProducts() {
		// TODO Auto-generated method stub
		return pr.findAll();
	}

	@Override
	public List<Produit> getProduitPMC(String mc) {
		// TODO Auto-generated method stub
		return pr.findByNomContains(mc);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		pr.deleteById(id);
	}

	@Override
	public void updateProduit(Produit produit  ) {
		// TODO Auto-generated method stub
		
		pr.save(produit) ; 
	}

	@Override
	public Produit getProduitById(int id) {
		// TODO Auto-generated method stub
		return pr.findById(id);
	}

}
