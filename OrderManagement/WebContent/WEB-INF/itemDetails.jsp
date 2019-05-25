<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, inicial-scale=1">
<title>Store</title>
</head>
<body>
	<c:if test="${sessionScope.cart.numberOfItems > 0}">
		<p>
			<c:url var="url" value="/showcart">
				<c:param name="Clear" value="0" />
				<c:param name="Remove" value="0" />
			</c:url>
			<a href="${url}">Check Cart</a>&nbsp;&nbsp;&nbsp;
			<c:url var="url" value="/buyItems" />
			<a href="${url}>">Buy Items</a>
		</p>
		<p>&nbsp;</p>
	</c:if>

	<table width="548" height="174" border="1">
		<tr>
			<td width="108" height="62"><div align="center">Item Name</div></td>
			<td width="152"><div align="center">Item Price</div></td>
			<td width="132"><div align="center">Item Quality</div></td>
		</tr>
		<c:forEach var="itemsList" items="${itemDetailsList}">
			<tr>
				<td height="61"><c:set var="itemName"
						value="${itemsList.itemName}" /> <c:out value="${itemName}" /></td>
				<td>${itemsList.itemPrice}</td>
				<td>${itemsList.itemQuality}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>