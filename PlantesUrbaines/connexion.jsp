<%@ page contentType="text/html; charset=utf-8" language="java"
import="java.sql.*,java.text.*" errorPage=""%> <%@ page import="java.time.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtmll/DTD/xhtmll-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-TYpe" content="text/html;charset=utf-8" />
  </head>
  <body>
    <% Connection conn = null; 
	String url = "jdbc:mysql://localhost:3306/plantes?useSSL=true&serverTimezone=UTC"; String
    login = "rudy"; 
	String password = ""; 
	try {
    	Class.forName("com.mysql.cj.jdbc.Driver"); 
		conn = DriverManager.getConnection(url, login, password); 
        }catch (SQLException ex) {
    out.println("SQLException : " + ex.getMessage()); out.println("SQLState : "
    + ((SQLException) ex).getSQLState()); out.println("VendorError : " +
    ((SQLException) ex).getErrorCode()); } catch (ClassNotFoundException e) {
    System.out.println(e.getMessage()); } %>
  </body>
</html>
