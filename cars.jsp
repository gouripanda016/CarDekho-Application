
<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
#message {
	font-size: 40px;
}

.head {
	width: 150px;
	font-size: 25px;
	padding: 10px;
	font-weight: bold;
	font-size: 25px;
	border: 1px solid;
	text-align: center;
}

.data {
	width: 150px;
	font-size: 20px;
	padding: 15px;
	border: 1px solid;
	text-align: center;
}

#table {
	background-color: skyblue;
	margin-top: 60px;
	background-color: skyblue;
	border: 3px solid transparent;
	box-shadow: 5px 5px 10px pink;
}

a {
	text-decoration: none
}

#box {
	background-color: skyblue;
	font-size: 20px;
	font-weight: bold;
	height: 50px;
	border: 2px solid;
}

form {
	margin-left: 780px;
	margin-top: 7px;
}

#button {
	height: 35px;
	width: 80px;
	background-color: black;
	color: gray;
	margin-top: 10px; 
	border-radius : 5px;
	font-size: 15px;
	text-decoration: none;
	border-radius: 5px;
}

input {
	height: 28px;
	width: 200px;
	background-color: skyblue;
	border: 1px solid;
	background-color: skyblue;
	background-color: skyblue;
}
</style>
</head>
<body>
	<div id="box">
		<form action="search" method="post">
			<label>Low price</label> <input type="text" name="low"
				required="required"> <label>High price</label> <input
				type="text" name="high" required="required"> <input
				id="button" type="submit" value="SEARCH">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">color</td>
				<td class="head">FuelType</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getColor()%></td>
				<td class="data"><%=car.getFuelType()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
</body>
</html>
