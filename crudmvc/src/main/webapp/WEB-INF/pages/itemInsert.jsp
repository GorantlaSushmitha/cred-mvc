<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url var="addAction" value="addItem"></c:url>

	<form:form action="${addAction}" modelAttribute="item" id="btn-add" method="POST">
		<h3>
			<c:if test="$(item.id==0}">
		       Add New Item
	            </c:if>
			<c:if test="${!empty Item.id}">
		      Update Item for Id: <c:out value="${item.id}" />
				
			</c:if>
			</h3>

			<table >

				<tr>
					<c:if test="${item.id!=0}">
						<td>Id:</td>
						<td><form:input path="id" readonly="true" /></td>
					</c:if>
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				<tr>
					<td>Description:</td>
					<td><form:input path="description" /></td>
				<tr>
					<td>Price:</td>
					<td><form:input path="price" /></td>
					<td colspan="2"><c:if test="${item.id==0}">
							<input type="submit" value="Add" id="btn-add">
						</c:if> <c:if test="${item.id!=0}">
							<input type="submit" value="Update" id="btn-update">
						</c:if></td>
				<tr>
					<td colspan="2" class="success-msg"><c:out value="${msg}" /></td>
			</table>
			<table>
			

   <div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
       
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
        <thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th colspan="2">Action</th>
				</tr>
				<c:forEach var="obj" items="${allData}">
					<tr>
						<td><c:out value="${obj.id}" /></td>
						<td><c:out value="${obj.name}" /></td>
						<td><c:out value="${obj.description}" /></td>
						<td><c:out value="${obj.price}" /></td>
						
						 <td><a href="deleteById/${obj.id}" class="btn-default btn">Delete </a> |
						  <a href="ItemById/${obj.id}" button type="button" class="btn btn-primary">Edit</a></td> 
							<!-- <button type="button" class="btn btn-primary">Primary</button> -->
					</tr>
					
				</c:forEach>
				
			</table>
			</div></div></div></div></table>
	</form:form>
 
	</table>

</body>
</html>