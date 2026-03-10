<html>
<head>
<title>Expense Tracker</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<a href="index.jsp">Home</a> |
<a href="viewExpenses.jsp">View Expenses</a>

<br><br>

<h1>Expense Tracker</h1>

<form action="addExpense.jsp" method="post">

Expense Name:
<input type="text" name="name"><br><br>

Amount:
<input type="number" name="amount"><br><br>

<input type="submit" value="Add Expense">

</form>

<br>

<a href="viewExpenses.jsp">
<button>View All Expenses</button>
</a>

</body>
</html>