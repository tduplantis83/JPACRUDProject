<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/forms.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Update Charging Station</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<h2 style="color: orange">Update this Charging Station</h2>
				<c:choose>
					<c:when test="${updateStatus}">
						<h2 style="color: red">Charging Station Update Failed!</h2>
					</c:when>
				</c:choose>
				<div class="col-2"></div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="stationUpdate.do" method="POST" items="${CS}">
					<div class="form-group">
					
						<input type="hidden" name="id" value="${CS.id}"/> <label
							for="stationName">Station Name</label> <input type="text" name="stationName"
							class="form-control" value="${CS.stationName}" required="required"> <br>
							
						<label for="streetAddress">Street Address</label> <input type="text" name="streetAddress"
							class="form-control" value="${CS.streetAddress}"> <br>
							
						<label for="city">City</label> <input
							type="text" name="city" class="form-control"
							value="${CS.city}"> <br> 
							<label
							for="state">State</label><input
							type="text" name="state" class="form-control"
							value="${CS.state}"> <br> 
							<label
							for="zip">Zip Code</label> <input
							type="text" name="zip" class="form-control"
							value="${CS.zip}" > <br>
							
						<label for="country">Country</label> <input
							type="text" name="country" class="form-control"
							value="${CS.country}" > <br> 
							<label
							for="evNetwork">EV Network</label> <input
							type="text" name="evNetwork" class="form-control"
							value="${CS.evNetwork}" > <br> 
							<label
							for="evConnectorType">EV Connector Type</label> <input type="text"
							name="evConnectorType" class="form-control"
							value="${CS.evConnectorType}" > <br>
					</div>
					<button type="submit" class="btn btn-warning btn-block">Update
						Charging Station</button>
				</form:form>
				<div class="col-2"></div>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form action="CSindex.do" method="get">
					<button class="btn btn-primary btn-block btn-lg">Back to
						Charing Station Home</button>
				</form>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
<br>
<br>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>