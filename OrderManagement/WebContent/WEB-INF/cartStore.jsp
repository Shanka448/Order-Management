<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/shop.css">
<title>Insert title here</title>
<script type="text/javascript">
function getItems() {
	location = document.form1.category.options[document.form1.category.selectedIndex].value
}
</script>
</head>
<body>

	<p><jsp:include page="header.jsp" /></p>

	<div align="justify" id="body">
		<table width="1160" height="557" align="center" border="0">
			<tr>
				<td height="452"><table width="1148" height="392" border="0">
						<tr>
							<td><p><jsp:include page="${param.page}.jsp" /></p>
								<p>&nbsp;</p>
								<p>
									<br />
								</p></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</div>

	
	
</body>
</html>