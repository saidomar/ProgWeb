package fr.spring.model;

import java.sql.Statement;
import java.util.Hashtable;
import fr.spring.objects.Annonce;
import fr.spring.objects.Categorie;
import fr.spring.objects.Membre;
import fr.spring.objects.Pays;
import fr.spring.objects.Ville;

public interface IModel {
			
	public Hashtable<Integer, Pays> BuildModelPays(String query, Statement state);

	public Hashtable<Integer, Categorie> BuildModelCategorie(String query,Statement state);

	public Hashtable<Integer, Annonce> BuildModelAnnonce(String query, Statement state);

	Hashtable<Integer, Membre> BuildModelMembre(String query, Statement state);

	Hashtable<Integer, Ville> BuildModelVille(String query, Statement state);
}
