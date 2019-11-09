<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="forms.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Update Vehicle</title>
</head>

<body>
	<div class="container">

		<body style="background-color: lightgray">
			<div class="container">

				<div class="row">
					<div class="col-4"></div>
					<div class="col-4">
						<h1 style="color: red">Update this Vehicle</h1>
						<c:choose>
							<c:when test="${updateStatus}">
								<h2>Film Update Failed!</h2>
							</c:when>
						</c:choose>
						<div class="col-4"></div>
					</div>
				</div>
			</div>
			<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<form:form action="vehicleCreate.do" method="POST" items="${eNew}">
					<div class="form-group">
					<input type="hidden" name="id" value="${eNew.id}" /> 
						<label for="title">Make</label> <input type="text" name="title"
									class="form-control" value="${eNew.make}">
						<br> <label for="desc">Model</label> <input type="text"
							name="model" class="form-control" value="${eNew.model}"
							required="required"> <br> <label for="releaseYear">
							Production Start Year</label> <input type="text" name="productionStartYear" class="form-control"
							value="${eNew.productionStartYear}"> <br>
						<label for="productionEndYear">Production End Year</label><input
							type="text" name="productionEndYear" class="form-control"
							value="${eNew.productionEndYear}"> <br>
						<label for="estimatedNumberProduced">Est Number Produced</label> <input type="text"
							name="estimatedNumberProduced" class="form-control" value="${eNew.estimatedNumberProduced}"> <br> <label for="topSpeedMPH">Top Speed (MPH)</label>

						<input type="text" name="topSpeedMPH" class="form-control"
							value="${eNew.topSpeedMPH}"> <br> <label
							for="replacementCost">Original Cost (USD)</label> <input type="text"
							name="originalcostUSD" class="form-control"
							value="${eNew.originalcostUSD}"> <br>
						<label for="rating">Max Range (Miles)</label> <input type="text"
							name="maxRangeInMiles" class="form-control"
							value="${eNew.maxRangeInMiles}"> <br>
							<label for="rating">Comments</label> <input type="text"
							name="comments" class="form-control"
							value="${eNew.comments }">
					</div>
					<button type="submit" class="btn btn-success btn-block">Update Vehicle</button>
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
						<form action="welcomePage.do" method="get">
							<button class="btn btn-success btn-block btn-lg">Back to
								Home</button>
						</form>
					</div>
					<div class="col-2"></div>
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