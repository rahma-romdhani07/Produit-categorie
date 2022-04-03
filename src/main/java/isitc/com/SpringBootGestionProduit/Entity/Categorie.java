package isitc.com.SpringBootGestionProduit.Entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data @AllArgsConstructor @NoArgsConstructor
@Entity
public class Categorie {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Size (min =5,max =15 , message = "Le nom doit etre compris entre 5 et 10 caratéres")
	private String nom;
	@OneToMany(mappedBy = "categorie"/* , cascade = CascadeType.ALL*/)
	@JsonProperty(access =Access.WRITE_ONLY)
	private List<Produit>liste=new ArrayList<Produit>();

}
