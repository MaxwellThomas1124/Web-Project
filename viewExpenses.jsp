<%@ page import="java.sql.*" %>

<html>
<head>
<title>View Expenses</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<a href="index.jsp">Home</a> |
<a href="viewExpenses.jsp">View Expenses</a>

<br><br>

<h2>All Expenses</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Amount</th>
<th>Action</th>
</tr>

<%

int total = 0;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/expensesdb","root","Maxwell@2006");

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * FROM expenses");

while(rs.next()){

total = total + rs.getInt("amount");

%>

<tr>
<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getInt("amount")%></td>

<td>
<a href="deleteExpense.jsp?id=<%=rs.getInt("id")%>">
Delete
</a>
</td>
</tr>

<%
}

}catch(Exception e){
out.println(e);
}

%>

</table>

<br>

<h3>Total Expense: <%=total%></h3>

<br>

<a href="index.jsp">
<button>Back</button>
</a>

</body>
</html>