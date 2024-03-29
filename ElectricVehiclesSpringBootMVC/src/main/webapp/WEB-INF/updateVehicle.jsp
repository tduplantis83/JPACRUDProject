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
<title>Update Electric Vehicle</title>
</head>

<body>
<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<h2 style="color: orange">Update this Vehicle</h2>
				<c:choose>
					<c:when test="${updateStatus}">
						<h2 style="color: red">Vehicle Update Failed!</h2>
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
						<form:form action="vehicleUpdate.do" method="POST" items="${EV}">
							<div class="form-group">
								<input type="hidden" name="id" value="${EV.id}" /> <label
									for="title">Make</label> <input type="text" name="make"
									class="form-control" value="${EV.make}" required="required">
								<br> <label for="model">Model</label> <input type="text"
									name="model" class="form-control" value="${EV.model}"
									required="required"> <br> <label for="releaseYear">
									Production Start Year</label> <input type="text"
									name="productionStartYear" class="form-control"
									value="${EV.productionStartYear}">
								<br> <label for="productionEndYear">Production End
									Year</label><input type="text" name="productionEndYear"
									class="form-control" value="${EV.productionEndYear}"> <br> <label
									for="estimatedNumberProduced">Est Number Produced</label> <input
									type="text" name="estimatedNumberProduced" class="form-control"
									value="${EV.estimatedNumberProduced}">
								<br> <label for="topSpeedMPH">Top Speed (MPH)</label> <input
									type="text" name="topSpeedMPH" class="form-control"
									value="${EV.topSpeedMPH}"> <br>
								<label for="originalcostUSD">Original Cost (USD)</label> <input
									type="text" name="originalcostUSD" class="form-control"
									value="${EV.originalcostUSD}"> <br>
								<label for="maxRangeInMiles">Max Range (Miles)</label> <input type="text"
									name="maxRangeInMiles" class="form-control"
									value="${EV.maxRangeInMiles}"> <br>
								<label for="comments">Comments</label> <input type="text"
									name="comments" class="form-control" value="${EV.comments }">
							</div>
							<button type="submit" class="btn btn-warning btn-block">Update
								Vehicle</button>
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
						<form action="EVindex.do" method="get">
							<button class="btn btn-primary btn-block btn-lg">Back to
								EV Home</button>
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