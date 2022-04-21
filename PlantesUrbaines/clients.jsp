<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ include file = "connexion.jsp" %>
<%@ include file = "menu.jsp" %>
<!doctype html>
    <head>        
        <meta http-equiv="Content-Type"/>
        <link rel="stylesheet" type="text/css" href="css/styleClient.css" />
        <title>Afficher les clients</title>
    </head>
    <body>
        <img src="image/logo.png" alt="alt"/>
        <form action="" method="get">
            <div id="formulaire">
               <label>Tri par :</label>
            <div id="formConteneur">
                
                <select name='tri' id='tri '>
                    <option  value='SELECT * FROM client ORDER BY id_client' >Afficher tous les clients</option>
                    <option  value='SELECT * FROM client ORDER BY date_crea_cli ASC'>Trier par date inscription</option>
                    <option  value='SELECT * FROM client ORDER BY nom_cli ASC'>Trier par ordre alphabétique</option>
                </select>
                </div>
      <input type="submit" value="OK">
           
            </div>
        </form>
     
      <% String test;
        if(request.getParameter("tri")==null){
             test = "SELECT * FROM client ORDER BY id_client";
            }else{
            
            test = request.getParameter("tri");
          
            }
        
        out.println("<table>"+"<tr bgcolor = '#58b368'>"+"<th>Nom</th>"+"<th>Prenom</th>"+"<th>Ville</th>"+"<th>Code Postal</th>"+"<th>Téléphone</th>"+"<th>Mail</th>"+"<th>Client depuis le:</th>"+"</tr>");
           
              try{
                  Statement statement = conn.createStatement();
                  ResultSet resultat = statement.executeQuery(test);
                  SimpleDateFormat formater = new SimpleDateFormat("dd/MM/yyyy");
                 
                  while(resultat.next()){
                      out.println("<tr bgcolor = '#58b368'>");
                      out.println("<td>"+resultat.getString("nom_cli")+"</td>");
                      out.println("<td>"+resultat.getString("prenom_cli")+"</td>");
                      out.println("<td>"+resultat.getString("ville_cli")+"</td>");
                      out.println("<td>"+resultat.getString("cp_cli")+"</td>");
                      out.println("<td>"+resultat.getString("tel_cli")+"</td>");
                      out.println("<td>"+resultat.getString("email_cli")+"</td>");
                     java.util.Date date= resultat.getDate("date_crea_cli");
                     String dateCrea = formater.format(date);
                      out.println("<td>"+dateCrea+"</td>");
                      out.println("</tr>");
                  }
                  }catch(Exception ex){
                          out.println("SQLException: "+ex.getMessage());
                          out.println("SQLState: "+((SQLException) ex).getSQLState());
                          out.println("VendorError: "+((SQLException) ex).getErrorCode());
                          }
                  
             %>
        
            
        </table>

      
     
    </body>
    
