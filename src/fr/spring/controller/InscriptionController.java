package fr.spring.controller;


import java.util.Hashtable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import fr.spring.model.BDDModel;
import fr.spring.objects.Pays;
import fr.spring.objects.StatementMysql;


@Controller
public class InscriptionController {
	
	 @RequestMapping("/inscription")
	    public ModelAndView helloWorld(HttpServletRequest request, HttpServletResponse response) {
	 
	    	// Database test 
	    	BDDModel mesPays;
	    	Hashtable<Integer, Pays> model = new Hashtable<Integer, Pays>();
	    	
	        // Modeling
	    	
			mesPays = new BDDModel();
			model = mesPays.BuildModelPays("select Id_Pays, Nom_Pays from pays order by Nom_Pays desc", StatementMysql.stat);
			
	    	// ******** //
 	
	 
	    	// To the View
	        return new ModelAndView("inscription", "bdd", model);
	    }

}
