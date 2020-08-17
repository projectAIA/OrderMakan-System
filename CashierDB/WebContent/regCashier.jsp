<%-- GROUP: AIA
     INFO 3305 SECTION 2
     NUR IZZATI MAULAD ABDUL RAHIM 1812274
     NURUL AIN SHAHIRAH BINTI NORFRIZAT 1818540
     NUR AFIFAH BINTI MOHAMAD AZAHAR 1810016 --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="styleReg.css">
</head>
<body>
<div class="background">
		<div class="form-box"><br><br>
		<h3 style="color:white;"  align="center">Welcome to Order Makan System</h3><br><br>
		<h3 style="color:white;"  align="center">Cashier Registration Page</h3><br>
		<h6 style="color:white;" align="center">Note: Apply first 6-Digit of IC for Username and Password</h6><br>
		 <form action="Register" method="post" class="input-group">
				<input type="text" class="input-field" placeholder="Username (Note: Enter first 6-Digit of IC)" name="user" required>
				<input type="text" class="input-field" placeholder="First Name" name="firstName" required>
				<input type="text" class="input-field" placeholder="Last Name" name="lastName" required>
				<input type="password" class="input-field" placeholder="Password" name="password" required>	
				<button type="submit" class="submit-btn" onclick="alert('You are successfully registered!')">Sign Up</button>		
			</form>
		</div>
	</div>
	
</body>
</html>

