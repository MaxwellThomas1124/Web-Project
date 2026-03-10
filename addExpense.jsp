<%@ page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String amount = request.getParameter("amount");

try {

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/expensesdb","root","Maxwell@2006");

PreparedStatement ps = con.prepareStatement(
"INSERT INTO expenses(name,amount) VALUES (?,?)");

ps.setString(1,name);
ps.setString(2,amount);

ps.executeUpdate();

out.println("Expense Added Successfully!");

} catch(Exception e){
out.println(e);
}
%>