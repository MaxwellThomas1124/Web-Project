<%@ page import="java.sql.*" %>

<%

String id = request.getParameter("id");

try{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/expensesdb","root","Maxwell@2006");

PreparedStatement ps = con.prepareStatement(
"DELETE FROM expenses WHERE id=?");

ps.setString(1,id);

ps.executeUpdate();

response.sendRedirect("viewExpenses.jsp");

}catch(Exception e){
out.println(e);
}

%>