package isitc.com.SpringBootGestionProduit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;

import isitc.com.SpringBootGestionProduit.Entity.Categorie;
import isitc.com.SpringBootGestionProduit.Entity.Produit;

@SpringBootApplication
public class SpringBootGestionProduitApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootGestionProduitApplication.class, args);
	}
@Autowired 
RepositoryRestConfiguration r ; 
	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		r.exposeIdsFor(Produit.class) ; 
		r.exposeIdsFor(Categorie.class) ;
	}

}
