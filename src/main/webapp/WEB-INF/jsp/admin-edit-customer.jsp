<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Customer</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f8ebbde80f.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="d-flex justify-content-center align-items-center ">
		<form:form id="form" class="border border-3 rounded p-4 m-3">
			<h1 class="text-center">User Details:</h1>

			<label for="email" class="mb-1">User Email:</label>
			<div class="input-group mb-3">

				<input type="text" id="email" name="email" value="${user.email}"
					class="form-control">

			</div>
			<label for="address" class="mb-1">Address:</label>
			<div class="input-group mb-3">

				<input type="text" id="address" name="address"
					value="${user.address}" class="form-control">
			</div>
			<label for="state" class="mb-1">State:</label>
			<div class="input-group mb-3">

				<input type="text" id="state" name="state" value="${user.state}"
					class="form-control">
			</div>
			<label for="zipcode" class="mb-1">Zip code:</label>
			<div class="input-group mb-3">

				<input type="text" id="zipcode" name="zipcode"
					value="${user.zipcode}" class="form-control">
			</div>
			<label for="role" class="mb-1">Role:</label>
			<div class="input-group mb-3">

				<select name="role" id="role" class="form-control">
					<option value="USER"
						<c:if test="${user.role =='USER'}"> selected</c:if>>
						User</option>
					<option value="ADMIN"
						<c:if test="${user.role == 'ADMIN'}"> selected</c:if>>
						Admin</option>

				</select>
			</div>
			<label for="credit_card" class="mb-1">Credit Card:</label>
			<div class="input-group mb-3">

				<input type="text" id="credit_card" name="credit_card"
					value="${user.credit_card}" class="form-control">
			</div>

			<div class="text-center text-danger">${error}</div>
			<div class="d-flex justify-content-center mt-3">
				<input type="submit" value="Submit">
			</div>
		</form:form>
	</div>
</body>
</html>