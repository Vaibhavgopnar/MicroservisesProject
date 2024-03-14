<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<style>
#adminlogin {
	position: absolute;
	width: 350px;
	height: 500px;
	padding: 20px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.form {
	padding: 20px;
}

.pt-1{
 padding-top: 1rem;
}

</style>
</head>
<body>

	<section id="adminlogin">
		<div class="card z-depth-3">
			<div class="card-panel center light-blue darken-3">
				<span class="card-title white-text">Admin Login</span>
			</div>
			<form class="form" action="AdminLoginServlet" method="post">
				<div class="input-field">
					<input type="email" class="validate" name="email" required> <label>Email</label>
				</div>
				<div class="input-field">
					<input type="password" class="validate" name="password" required> <label>Password</label>
				</div>
				<div class="center">
					<button type="submit" class="btn-large light-blue darken-3">
						Sign In</button>
				</div>
				<div class="center pt-1">
					<a href="#">Forgot Password</a>
				</div>
			</form>
		</div>
	</section>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>