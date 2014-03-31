<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>index</title>

<style type="text/css">
.modal-dialog {
	padding-top: 10%;
}
</style>
</head>
<body>
	<!-- Button trigger modal -->
		<input type="submit" class="btn btn-primary btn-lg"
			data-toggle="modal" data-target="#myModal" value="Launch demo modal" />

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body " id="bod">
					

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>


	<div class="container">
		<s:property value="product.productId" />
		:
		<s:property value="product.productName" />
		<br>
		<s:iterator value="product.productEAV">
			<br>
			<s:property value="attributeName" /> : 
			<s:property value="attributeValue" />
		</s:iterator>
		<br> <br> <br> <br>
	</div>
	<script>
		//$( "#bod" ).load( "ProductList.jsp" );
	</script>
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/modal.js"></script>


</body>
</html>

