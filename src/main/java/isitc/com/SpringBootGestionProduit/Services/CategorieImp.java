package isitc.com.SpringBootGestionProduit.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import isitc.com.SpringBootGestionProduit.Dao.CategorieRepository;
import isitc.com.SpringBootGestionProduit.Dao.ProduitRepository;
import isitc.com.SpringBootGestionProduit.Entity.Categorie;

@Service 
public class CategorieImp implements IGestionCategorie {
	@Autowired
	CategorieRepository cr;
	@Override
	public List<Categorie> getAllCategories() {
		// TODO Auto-generated method stub
		return cr.findAll();
	}

	@Override
	public Categorie getCategorie(int idc) {
		// TODO Auto-generated method stub
		return cr.findById(idc).get();
	}

	@Override
	public void ajouterCategorie(Categorie categorie) {
		// TODO Auto-generated method stub
		cr.save(categorie) ;
		
	}

	@Override
	public void deleteCategorie(int id) {
		// TODO Auto-generated method stub
		cr.deleteById(id);
		
	}

	@Override
	public List<Categorie> rechercherParMc(String mc) {
		// TODO Auto-generated method stub
		return cr.findByNomContains(mc);
	}

	@Override
	public void updateCategories(Categorie c /*, int id*/ ) {
		// TODO Auto-generated method stub
		cr.save(c);
	}

	
	

}
