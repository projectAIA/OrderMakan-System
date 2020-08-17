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
<title>Process Order</title>
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

<h1 style="text-align:center">RECEIPT</h1>

<div style="text-align:center">
Order time: <%= (new java.util.Date()).toLocaleString() %> <%-- current time and date --%>
</div>

<H3 ALIGN="CENTER">
      ORDER NO: 
      <FONT COLOR="RED">
      <%! Random randomValue = new Random(); %>
      
       <%=(Math.abs(randomValue.nextInt())%9999)+1 %>
       
      </FONT>
    </H3>
    
 <form action="OrderMenu.jsp" method="POST" >   
 
    <%
	String name1=request.getParameter("hd1");
	double price1 = Double.parseDouble(request.getParameter("pri1"));
	int quantity1=Integer.parseInt(request.getParameter("quantity1"));
	out.println("Name is "+name1+"<br>");
	out.println("Price is "+price1+"<br>");
	out.println("Quantity is "+quantity1+"<br>");
	
	String name2=request.getParameter("hd2");
	double price2 = Double.parseDouble(request.getParameter("pri2"));
	int quantity2=Integer.parseInt(request.getParameter("quantity2"));
	out.println("Name is "+name2+"<br>");
	out.println("Price is "+price2+"<br>");
	out.println("Quantity is "+quantity2+"<br>");
	
	String name3=request.getParameter("hd3");
	double price3 = Double.parseDouble(request.getParameter("pri3"));
	int quantity3=Integer.parseInt(request.getParameter("quantity3"));
	out.println("Name is "+name3+"<br>");
	out.println("Price is "+price3+"<br>");
	out.println("Quantity is "+quantity3+"<br>");
	
	String name4=request.getParameter("hd4");
	double price4 = Double.parseDouble(request.getParameter("pri4"));
	int quantity4=Integer.parseInt(request.getParameter("quantity4"));
	out.println("Name is "+name4+"<br>");
	out.println("Price is "+price4+"<br>");
	out.println("Quantity is "+quantity4+"<br>");
	
	String name5=request.getParameter("hd5");
	double price5 = Double.parseDouble(request.getParameter("pri5"));
	int quantity5=Integer.parseInt(request.getParameter("quantity5"));
	out.println("Name is "+name5+"<br>");
	out.println("Price is "+price5+"<br>");
	out.println("Quantity is "+quantity5+"<br>");
	
	String name6=request.getParameter("hd6");
	double price6 = Double.parseDouble(request.getParameter("pri6"));
	int quantity6=Integer.parseInt(request.getParameter("quantity6"));
	out.println("Name is "+name6+"<br>");
	out.println("Price is "+price6+"<br>");
	out.println("Quantity is "+quantity6+"<br>");
	
	String name7=request.getParameter("hd7");
	double price7 = Double.parseDouble(request.getParameter("pri7"));
	int quantity7=Integer.parseInt(request.getParameter("quantity7"));
	out.println("Name is "+name7+"<br>");
	out.println("Price is "+price7+"<br>");
	out.println("Quantity is "+quantity7+"<br>");
	
	String name8=request.getParameter("hd8");
	double price8 = Double.parseDouble(request.getParameter("pri8"));
	int quantity8=Integer.parseInt(request.getParameter("quantity8"));
	out.println("Name is "+name8+"<br>");
	out.println("Price is "+price8+"<br>");
	out.println("Quantity is "+quantity8+"<br>");
	
	String name9=request.getParameter("hd9");
	double price9 = Double.parseDouble(request.getParameter("pri9"));
	int quantity9=Integer.parseInt(request.getParameter("quantity9"));
	out.println("Name is "+name9+"<br>");
	out.println("Price is "+price9+"<br>");
	out.println("Quantity is "+quantity9+"<br>");
	
	String name10=request.getParameter("hd10");
	double price10 = Double.parseDouble(request.getParameter("pri10"));
	int quantity10=Integer.parseInt(request.getParameter("quantity10"));
	out.println("Name is "+name10+"<br>");
	out.println("Price is "+price10+"<br>");
	out.println("Quantity is "+quantity10+"<br>");
	
	double total=((price1*quantity1)+(price2*quantity2)+(price3*quantity3)+(price4*quantity4)+(price5*quantity5)+
			(price6*quantity6)+(price7*quantity7)+(price8*quantity8)+(price9*quantity9)+(price10*quantity10));
	out.println("<hr width='200px' align-'left'>");
	out.println("Your total amount is "+ total);
	%>
<br><br>
<input type="submit" value="back">
</form>

</body>
</html>