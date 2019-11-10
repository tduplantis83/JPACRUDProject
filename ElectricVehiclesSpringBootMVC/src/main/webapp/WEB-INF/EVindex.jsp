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

<title>Electric Vehicles</title>
</head>
<body>

<div class="container-fluid">
<h3 style="color: green">Electric Vehicles</h3>
					<hr>
</div>
<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="getEVByID.do" method="GET">
					<div class="form-group">
						<label for="id">Vehicle ID</label> <input type="text" name="id"
							class="form-control" placeholder="Enter Vehicle ID">
					</div>
					<button type="submit" class="btn btn-success btn-block">Find
						EV by ID</button>
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
				<form:form action="getEVByMake.do" method="GET">
					<div class="form-group">
						<label for="make">Vehicle Make</label> <input type="text"
							name="make" class="form-control"
							placeholder="Enter Vehicle Make">
					</div>
					<button type="submit" class="btn btn-success btn-block">Find
						EV's by Make</button>
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
				<form:form action="vehicleCreate.do" method="GET">
					<button type="submit" class="btn btn-success btn-block">Create
						a New Electric Vehicle</button>
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
				
				<form:form action="getAllEV.do" method="GET">
					<button type="submit" class="btn btn-success btn-block">List
						All EV's</button>
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