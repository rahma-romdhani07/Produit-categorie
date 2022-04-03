package isitc.com.SpringBootGestionProduit.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import isitc.com.SpringBootGestionProduit.Entity.Categorie;
import isitc.com.SpringBootGestionProduit.Entity.Produit;


@Repository
public interface CategorieRepository extends JpaRepository<Categorie, Integer> {
	public List<Categorie> findByNomContains(String mc);
	}
