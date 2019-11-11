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
		<h2 style="color: blue">Charging Stations</h2>
		<hr>
	</div>
	<div id="parent">
		<div id="child">
			<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<form:form action="getStationByCity.do" method="GET">
							<div class="form-group">
								<label for="city">City</label> <select class="form-control"
									id="city" name="city">
									<c:forEach var="c" items="${CSCity}">
										<option>${c}</option>
									</c:forEach>
								</select>
								<button type="submit" class="btn btn-info btn-block">Find
									Charging Station by City</button>
							</div>
						</form:form>
					</div>
					<div class="col-2"></div>
				</div>
			</div>
			<br> 
			<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<form:form action="getStationByState.do" method="GET">
							<div class="form-group">
								<label for="state">State Abbreviation</label> <select
									class="form-control" id="state" name="state">
									<c:forEach var="cs" items="${CSState}">
										<option>${cs}</option>
									</c:forEach>
								</select>
								<button type="submit" class="btn btn-info btn-block">Find
									Charging Station by State</button>
							</div>
						</form:form>
					</div>
					<div class="col-2"></div>
				</div>
			</div>
			<br> 
			<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<form:form action="getStationByConnector.do" method="GET">
							<div class="form-group">
								<label for="evConnectorType">EV Connector Type</label> <select
									class="form-control" id="evConnectorType" name="evConnectorType">
									<c:forEach var="csc" items="${CSConnector}">
										<option>${csc}</option>
									</c:forEach>
								</select>
								<button type="submit" class="btn btn-info btn-block">Find
									Charging Station by Connector Type</button>
							</div>
						</form:form>
					</div>
					<div class="col-2"></div>
				</div>
			</div>
			<br> 
			<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<form:form action="getStationByNetwork.do" method="GET">
							<div class="form-group">
								<label for="evNetwork">EV Network</label> <select
									class="form-control" id="evNetwork" name="evNetwork">
									<c:forEach var="csn" items="${CSNetwork}">
										<option>${csn}</option>
									</c:forEach>
								</select>
								<button type="submit" class="btn btn-info btn-block">Find
									Charging Station by Network</button>
							</div>
						</form:form>
					</div>
					<div class="col-2"></div>
				</div>
			</div>
			<br> <br>
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
			<br> <br> <br> <br>
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
		</div>
	</div>

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