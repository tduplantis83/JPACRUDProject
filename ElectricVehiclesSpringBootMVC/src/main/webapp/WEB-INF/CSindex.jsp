<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Charging Stations</title>
</head>
<body>

	<div class="container-fluid">
		<h3 style="color: blue">Charging Stations</h3>
		<hr>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="getStationByCity.do" method="GET">
					<div class="form-group">
						<label for="city">City</label> <input type="text" name="city"
							class="form-control" placeholder="Enter City">
					</div>
					<button type="submit" class="btn btn-info btn-block">Find
						Charging Station by City</button>
				</form:form>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="getStationByState.do" method="GET">
					<div class="form-group">
						<label for="state">Enter State Abbreviation</label> <input type="text" name="state"
							class="form-control" placeholder="Enter State">
					</div>
					<button type="submit" class="btn btn-info btn-block">Find
						Charging Station by State Abbreviation</button>
				</form:form>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="createStation.do" method="GET">
					<button type="submit" class="btn btn-info btn-block">Create
						A New Charging Station</button>
				</form:form>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<form action="/" method="get">
							<button class="btn btn-primary btn-block btn-lg">Back to
								Home</button>
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