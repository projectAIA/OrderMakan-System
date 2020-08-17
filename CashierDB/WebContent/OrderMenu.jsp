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

<script data-require="jquery@3.1.1" data-semver="3.1.1" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="style.css" />
    <script src="script.js"></script>  
  <script>
	function NL()
	{
		document.f1.pri1.value= document.f1.opt1.value;
		document.f1.hd1.value= document.f1.opt1.item(document.f1.opt1.selectedIndex).text;
	}
	</script>
	<script>
	function NG()
	{
		document.f1.pri2.value= document.f1.opt2.value;
		document.f1.hd2.value= document.f1.opt2.item(document.f1.opt2.selectedIndex).text;
	}
	
</script>
<script>
	function MG()
	{
		document.f1.pri3.value= document.f1.opt3.value;
		document.f1.hd3.value= document.f1.opt3.item(document.f1.opt3.selectedIndex).text;
	}	
</script>
<script>
	function KTG()
	{
		document.f1.pri4.value= document.f1.opt4.value;
		document.f1.hd4.value= document.f1.opt4.item(document.f1.opt4.selectedIndex).text;
	}
</script>
<script>
	function BB()
	{
		document.f1.pri5.value= document.f1.opt5.value;
		document.f1.hd5.value= document.f1.opt5.item(document.f1.opt5.selectedIndex).text;
	}
</script>
<script>
	function CB()
	{
		document.f1.pri6.value= document.f1.opt6.value;
		document.f1.hd6.value= document.f1.opt6.item(document.f1.opt6.selectedIndex).text;
	}	
</script>
<script>
	function FB()
	{
		document.f1.pri7.value= document.f1.opt7.value;
		document.f1.hd7.value= document.f1.opt7.item(document.f1.opt7.selectedIndex).text;
	}
</script>
<script>
	function CC()
	{
		document.f1.pri8.value= document.f1.opt8.value;
		document.f1.hd8.value= document.f1.opt8.item(document.f1.opt8.selectedIndex).text;
	}
</script>
<script>
	function PP()
	{
		document.f1.pri9.value= document.f1.opt9.value;
		document.f1.hd9.value= document.f1.opt9.item(document.f1.opt9.selectedIndex).text;
	}
</script>
<script>
	function MD()
	{
		document.f1.pri10.value= document.f1.opt10.value;
		document.f1.hd10.value= document.f1.opt10.item(document.f1.opt10.selectedIndex).text;
	}
	
</script>


<title>Menu</title>
</head>
<body>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

.center {
  margin-left: auto;
  margin-right: auto;
}

button {
  align: center;
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: in-line;
  font-size: 16px;
  margin:auto;
  cursor: pointer;
  background-color: #4EE2FD;
}

.qty {
    width: 40px;
    height: 25px;
    text-align: center;
}
input.qtyplus { width:25px; height:25px;}
input.qtyminus { width:25px; height:25px;}

section {
  display: block;
}
</style>
<br>
<a href="loginCashier.jsp" style="float: right;">Logout | End shift</a><br>

<h3 style="color:Blue;"  align="center">Welcome, <%= session.getAttribute("Username")%>. Happy Working!</h3><br>

<h1 style="text-align:center">Order Makan System</h1>
<br>

<form action="printKitchen.jsp" method="POST" name="f1">
<section name="NasiLemak">
<table class="center">

<tr>
 <td style="text-align:center" colspan="4" bgcolor="lightblue">NASI SECTION</td>
 </tr>
<tr>
    <td style="text-align:center">Name</td>
    <td style="text-align:center">Food</td>
    <td style="text-align:center">Price</td>
    <td style="text-align:center">Select Set</td>
  </tr>
  
  <tr>
    <td style="text-align:center" >Nasi Lemak</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\nasilemak.png" width="150" height="120" style="border:1px solid green"></td>
	<td style="text-align:center">Nasi Lemak Biasa <br> RM3.00<br><br>Nasi Lemak Ayam <br> RM5.00</td>
	<td><select name="opt1" onchange="NL()" >
			<option value="">Select</option>
			<option value="3.00">Nasi Lemak Biasa</option>
			<option value="5.00">Nasi Lemak Ayam</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri1" readonly>
		<br><input type="hidden" name="hd1">
		<br><input type="text" placeholder="Quantity" id="qty" name="quantity1">
		</td>
  </tr>
  
  <tr>
    <td style="text-align:center" >Nasi Goreng</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\nasigoreng.png" width="150" height="120" style="border:1px solid green" value=6.00></td>
	<td style="text-align:center">Nasi Goreng Cina<br>RM4.00<br><br>Nasi Goreng Ayam<br>RM6.00</td>
	<td><select name="opt2" onchange="NG()">
			<option value=" ">Select</option>
			<option value="4.00">Nasi Goreng Cina</option>
			<option value="6.00">Nasi Goreng Ayam</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri2" readonly>
		<br><input type="hidden"  name="hd2">
		<br><input type="text" placeholder="Quantity" name="quantity2"></td>
  </tr>

<tr>
 <td style="text-align:center"colspan="4" bgcolor="lightblue">NOODLE SECTION</td>
 </tr>
<tr>
    <td style="text-align:center">Name</td>
    <td style="text-align:center">Food</td>
    <td style="text-align:center">Price</td>
    <td style="text-align:center">Select Set</td>
  </tr>
  
  <tr>
    <td style="text-align:center" >Mee Goreng</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\mee.png" alt="mee" width="150" height="150" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center" >Mee Goreng Biasa <br> RM4.50<br><br>Mee Goreng Ayam <br> RM6.00</td>
	<td><select name="opt3" onchange="MG()">
			<option value=" ">Select</option>
			<option value="4.50">Mee Goreng Biasa</option>
			<option value="6.00">Mee Goreng Ayam</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri3" readonly>
		<br><input type="hidden"  name="hd3">
		<br><input type="text" placeholder="Quantity"name="quantity3">
  </tr>
  
  <tr>
    <td style="text-align:center" >Kuey Teow Goreng</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\ktg.png" alt="ktg" width="150" height="100" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">KT Goreng Biasa <br> RM4.50<br><br>KT Goreng Kerang <br> RM6.00</td>
	<td><select name="opt4" onchange="KTG()">
			<option value=" ">Select</option>
			<option value="4.50">KT Goreng Biasa</option>
			<option value="6.00">KT Goreng Kerang</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri4" readonly>
		<br><input type="hidden" name="hd4">
		<br><input type="text" placeholder="Quantity"name="quantity4"></td>
  </tr>

<tr>
 <td style="text-align:center"colspan="4" bgcolor="lightblue">BURGER SECTION</td>
 </tr>
<tr>
    <td style="text-align:center">Name</td>
    <td style="text-align:center">Food</td>
    <td style="text-align:center">Price</td>
    <td style="text-align:center">Select Set</td>
  </tr>
 
  <tr>
    <td style="text-align:center">Beef Burger</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\bigmac.png" alt="bigmac" width="150" height="100" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">Ala Carte <br> RM4.50<br><br>Combo <br> RM9.00</td>
	<td><select name="opt5" onchange="BB()">
			<option value=" ">Select</option>
			<option value="4.50">BB Ala Carte</option>
			<option value="9.00">BB Combo</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri5" readonly>
		<br><input type="hidden" name="hd5">
		<br><input type="text" placeholder="Quantity" name="quantity5"></td>
  	</tr>
  
  <tr>
    <td style="text-align:center">Chicken Burger</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\bigchick.png" alt="bigchick" width="150" height="100" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">Ala Carte <br> RM4.50<br><br>Combo <br> RM9.00</td>
	<td><select name="opt6" onchange="CB()">
			<option value=" ">Select</option>
			<option value="4.50">CB Ala Carte</option>
			<option value="9.00">CB Combo</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri6" readonly>
		<br><input type="hidden" name="hd6">
		<br><input type="text" placeholder="Quantity" name="quantity6"></td>
  	</tr>
  
  <tr>
    <td style="text-align:center">Fish Burger</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\bigfish.png" alt="bigfish" width="150" height="100" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">Ala Carte <br> RM4.50<br><br>Combo <br> RM9.00</td>
	<td><select name="opt7" onchange="FB()">
			<option value=" ">Select</option>
			<option value="4.50">FB Ala Carte</option>
			<option value="9.00">FB Combo</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri7" readonly>
		<br><input type="hidden" name="hd7">
		<br><input type="text" placeholder="Quantity" name="quantity7"></td>
  	</tr>

<tr>
 <td style="text-align:center"colspan="4" bgcolor="lightblue">DRINK SECTION</td>
 </tr>
<tr>
    <td style="text-align:center" >Name</td>
    <td style="text-align:center" >Drinks</td>
    <td style="text-align:center" >Price</td>
    <td style="text-align:center" >Select Set</td>
  </tr>
 
  <tr>
    <td style="text-align:center" >Coca-Cola</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\coke.png" alt="coke" width="150" height="100" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">Bottle <br> RM3.50<br><br>Canned <br> RM2.50</td>
	<td><select name="opt8" onchange="CC()">
			<option value=" ">Select</option>
			<option value="3.50">Coke Bottle</option>
			<option value="2.50">Coke Canned</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri8" readonly>
		<br><input type="hidden" name="hd8">
		<br><input type="text" placeholder="Quantity" name="quantity8"></td>
  	</tr>
  
  <tr>
    <td style="text-align:center" >Pepsi</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\pepsi.png" alt="pepsi" width="150" height="150" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">Bottle <br> RM3.50<br><br>Canned <br> RM2.50</td>
	<td><select name="opt9" onchange="PP()">
			<option value=" ">Select</option>
			<option value="3.50">Pepsi Bottle</option>
			<option value="2.50">Pepsi Canned</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri9" readonly>
		<br><input type="hidden" name="hd9">
		<br><input type="text" placeholder="Quantity" name="quantity9" id="qtyPP"></td>
  	</tr>
  
  <tr>
    <td style="text-align:center">Mountain Dew</td>
    <td><input type="image" src="C:\myWebProject\CashierDB\images\dew.png" alt="dew" width="150" height="150" style="border:1px solid green" value=5.0></td>
	<td style="text-align:center">Bottle <br> RM3.50<br><br>Canned <br> RM2.50</td>
	<td><select name="opt10" onchange="MD()">
			<option value=" ">Select</option>
			<option value="3.50">MD Bottle</option>
			<option value="2.50">MD Canned</option>
		</select><br>
		<input type="text" placeholder="RM" name="pri10" readonly>
		<br><input type="hidden" name="hd10">
		<br><input type="text" placeholder="Quantity" name="quantity10"></td>
  	</tr>
  </table>
  </section>
  <br>
  <center><input type="submit" value="Print Kitchen"><input type="submit" formaction="totalOrder_process.jsp" value="Print Receipt"></center>
</form>


</body>
</html>