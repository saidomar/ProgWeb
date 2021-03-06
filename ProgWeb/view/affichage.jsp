<%@ include file="/design/header.jspf" %>

  	<%
		Hashtable<String, Object> model = new Hashtable<String, Object>();			
		Hashtable<Integer, Categorie> modelCategories = new Hashtable<Integer, Categorie>();
		Hashtable<Integer, Annonce> modelAnnonces = new Hashtable<Integer, Annonce>();
		Hashtable<Integer, Pays> modelPays = new Hashtable<Integer, Pays>();
		
		model = (Hashtable<String, Object>)request.getAttribute("bdd");		
		modelCategories = (Hashtable<Integer, Categorie>)model.get("categories");		
		modelAnnonces = (Hashtable<Integer, Annonce>)model.get("annonces");
		modelPays = (Hashtable<Integer, Pays>)model.get("pays");
								
		Collection<Pays> mesPays = modelPays.values();
		
		String pays = new String("");
		pays = request.getParameter("country");
		
		if(pays == null)
			pays = new String("Tous les pays:");
		
	%>

 
    <div class="container-fluid">
      <div class="row-fluid">
        
		
        <div class="span9">
		
		<div class="navbar">
			<div class="navbar-inner">
			<a class="brand" href=""><%=pays%></a>
			<ul class="nav">			
			<%									
																				
				Collection<Categorie> mesCategories = modelCategories.values();				
				String name= new String();
				String name2;
				
				// Read database				
				for(Categorie c:mesCategories)
				{
					name = c.getNomCategorie();
											
					%>								
					<li> 
						<a href="#"><%=name%></a>
							<ul>
							<%
								for(Categorie sc: c.sousCategorie){
									name2=sc.getNomCategorie();
									int id = sc.getId();
									
									%>
									<li>
										<a href="affichage.html?country=<%=pays%>&cat=<%=name2%>"><%=name2%> </a>										
									</li>
									<%									
								}														
							%>
							</ul>							 						
					</li>
					<% 					
											
				}
					
			%>		
			</ul>
			</div>
		</div>			
	
		<table class="table table-hover">
			<caption>
			<% 
				Collection<Annonce> mesAnnonces = modelAnnonces.values();
				String caption = new String();
				if(mesAnnonces.isEmpty()){
					caption = "Pas d'annonces pour ce Pays ou cette categorie";
				
				}						
			%>
			
			<%=caption%>
			</caption>
			<thead>
				<tr>
					<th>Post�e le</th>
					<th>Titre</th>					 					
					<th>Prix</th>
					
				</tr>
			</thead>
			
			<tbody>
				<%						
					// Read database
					
					for(Annonce a:mesAnnonces)
					{
						//get the country device for this annonce
						String devise = new String();
						for(Pays p:mesPays){
							if(a.getNom_pays().equalsIgnoreCase(p.getNom()) ){
								
								devise = p.getDevise();
							}
						}
						%>
						<tr>
							<td>
								<%=a.getPublication()%>	
							</td>							
							<td>
								<a href="annonce.html?country=<%=a.getNom_pays()%>&title=<%=a.getTitre()%>"><%=a.getTitre()%> </a>							
							</td>						
							<td>
								<%=a.getPrix()%> <wbr/> <%=devise%>							
							</td>							
						</tr>					
						<% 																	
					}
				
				%>
		
				<tr>
					<td>...</td>
					<td>...</td>
					<td>...</td>
				</tr>
			</tbody>   
		</table>
		
          
          <div class="row-fluid">
                 
            
          </div><!--/row--> 
        </div><!--/span-->
      </div><!--/row-->

    </div><!--/.fluid-container-->
    
    <%@ include file="/design/footer.jspf" %>

    