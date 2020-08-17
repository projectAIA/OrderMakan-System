<%-- GROUP: AIA
     INFO 3305 SECTION 2
     NUR IZZATI MAULAD ABDUL RAHIM 1812274
     NURUL AIN SHAHIRAH BINTI NORFRIZAT 1818540
     NUR AFIFAH BINTI MOHAMAD AZAHAR 1810016 --%>
     
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ORDER IN</title>
</head>

<body style='text-align:center';">
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
</style>

<h1 style="text-align:center">ORDER IN</h1>

<% request.getParameter("submitReceipt"); %>

<div style="text-align:center">
Order time: <%= (new java.util.Date()).toLocaleString() %> <%-- current time and date --%>
</div>
<br><br>
    <table class="center">
    
<tr>
<td>Food</td>
<td>Quantity</td>
</tr>

<tr>
<td>NASI LEMAK</td>
<td><%= request.getParameter("quantity1")%></td>
</tr>

<tr>
<td>NASI GORENG</td>
<td><%= request.getParameter("quantity2")%></td>
</tr>

<tr>
<td>MEE GORENG</td>
<td><%= request.getParameter("quantity3")%></td>
</tr>

<tr>
<td>KUEY TEOW GORENG</td>
<td><%= request.getParameter("quantity4")%></td>
</tr>

<tr>
<td>BEEF BURGER</td>
<td><%= request.getParameter("quantity5")%></td>
</tr>

<tr>
<td>CHICKEN BURGER</td>
<td><%= request.getParameter("quantity6")%></td>
</tr>

<tr>
<td>FISH BURGER</td>
<td><%= request.getParameter("quantity7")%></td>
</tr>

<tr>
<td>COCA-COLA</td>
<td><%= request.getParameter("quantity8")%></td>
</tr>

<tr>
<td>PEPSI</td>
<td><%= request.getParameter("quantity9")%></td>
</tr>

<tr>
<td>MOUNTAIN DEW</td>
<td><%= request.getParameter("quantity10")%></td>
</tr>
</table>

<button onclick="goBack()">Go Back</button>

<script>
function goBack() {
  window.history.back();
}
</script>


</body>
</html>