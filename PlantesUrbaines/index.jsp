<%@page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.text.*" errorPage="" %>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ include file="menu.jsp"%>
<%@ include file = "connexion.jsp" %>
<%DateFormat Date = DateFormat.getDateInstance();
    Calendar cals = Calendar.getInstance();
    String date = Date.format(cals.getTime());
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"/>
        <link rel="stylesheet" type="text/css" href="css/styleAccueil.css" />
        <title>Plantes Urbaines | Accueil</title>
    </head>
    <body>
       
       <img id="logo" src="image/logo.png" alt="alt"/>
       <h1>  Plantes Urbaines</h1>
       <h4>On va vous faire aimer les plantes !</h4>
       <h2>Nous somme le <%= date %></h2>
       
       
       <img id="imgAcc"src="image/accueil.jpg" >
      
    
    </body>
</html>