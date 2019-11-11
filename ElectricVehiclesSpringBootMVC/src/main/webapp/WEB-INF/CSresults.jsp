<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Charging Stations</title>
</head>
<body style="background-color: lightgray">
	<!-- display EV'S -->
	<c:choose>
		<c:when test="${fn:length(CS) gt 0}">
			<div class="container-fluid">
						<h2 style="color: blue">Charging Stations</h2>
						<table class="table table-striped table-bordered table-hover">
							<thead class="table-dark">
								<tr>
									<td><strong>ID</strong></td>
									<td><strong>Station Name</strong></td>
									<td><strong>Street Address</strong></td>
									<td><strong>City</strong></td>
									<td><strong>State</strong></td>
									<td><strong>Zip Code</strong></td>
									<td><strong>Country</strong></td>
									<td><strong>EV Network</strong></td>
									<td><strong>Connector Type</strong></td>
								</tr>
							<thead>
							<tbody>
								<c:forEach var="c" items="${CS}">
									<tr>
										<td>${c.id }</td>
										<td>${c.stationName }</td>
										<td>${c.streetAddress}</td>
										<td>${c.city}</td>
										<td>${c.state}</td>
										<td>${c.zip}</td>
										<td>${c.country}</td>
										<td>${c.evNetwork}</td>
										<td>${c.evConnectorType}</td>
									</tr>
									<tr>
										<td colspan="1"></td>
										<td colspan="4"><form:form action="stationUpdate.do"
												method="get" name="id">
												<button type="submit" class="btn btn-warning btn-block">Update
													this Station</button>
												<input type="hidden" name="id" value="${c.id }">
											</form:form></td>
										<td colspan="4"><form:form action="stationDelete.do"
												method="get" name="id">
												<button type="submit" class="btn btn-danger btn-block">Delete
													this Station</button>
												<input type="hidden" name="id" value="${c.id }">
											</form:form></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
			</div>
		</c:when>
		<c:when test="${deleteStatus}">
			<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<h2 style="color: green">Charging Station Deletion Successful!</h2>
						<div class="col-2"></div>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="container">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-8">
						<h2 style="color: red">No Matching Charging Stations Found</h2>
						<div class="col-2"></div>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	<br>
	<div class="container">
		<c:choose>
			<c:when test="${createStatus}">
				<h2 style="color: green">Charging Station Creation Successful!</h2>
			</c:when>
			<c:when test="${updateStatus}">
				<h2 style="color: green">Charging Station Update Successful!</h2>
			</c:when>
		</c:choose>
	</div>

	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form action="CSindex.do" method="get">
					<button class="btn btn-primary btn-block btn-lg">Back to
						Charging Station Home</button>
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