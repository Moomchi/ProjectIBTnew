<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProjectIBTnew.wwwroot.html.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8"/>
		<link href="../styles/style.css" rel="stylesheet"/>
		<title>CinemaBee</title>
	</head>
	<body>
		<form runat="server">
			<h1 class="title" id="main_title">Welcome to CinemaBee!</h1>
			<img src="../images/logo.png" class="logo" alt="Logo"/>
			<h2 class="login" id="login" runat="server"><a href="userLogin.aspx">Log in</a> | <a href="Register.aspx">Register</a></h2>
			<h2 class ="loggedIn" id="loggedIn" runat="server">Welcome <a href="userPage.aspx"><%=Session["username"]%></a></h2>
			<h2 class ="loggedInAdmin" id="loggedInAdmin" runat="server">Welcome <a href="adminPage.aspx"><%=Session["username"]%></a></h2>
			<p>We are a small cinema that provide the city of Bankya with the some of the finest movies avaliable at the present time.</p>
		
			<div class="panel">
				<h2><a href="movie1.aspx">Movie 1</a></h2>
				<p class="name">Pulp Fiction</p>
				<img src="../images/pulp-fiction.png" class="moviepicture" alt="Pulp Fiction"  width = "250" height = "250"/>
				<p class="description">&nbsp;&nbsp;&nbsp;Pulp Fiction is the story of three men — Jules, Vincent,
					and Butch — and the choices each of them makes regarding life and death, honor and disgrace, and the vagaries of chance.</p>
				<p class="price">Цена на билет: <strong>12,99лв.</strong></p>
			</div>
		
			<div class="panel">
				<h2><a href="movie2.aspx">Movie 2</a></h2>
				<p class="name">Star Wars: Episode III - Revenge of the Sith</p>
				<img src="../images/revenge.png" class="moviepicture" alt="Revenge of the Sith"  width = "250" height = "250"/>
				<p class="description">&nbsp;&nbsp;&nbsp;Three years into the Clone Wars, the Jedi rescue Palpatine from Count Dooku. As Obi-Wan pursues a new threat,
					Anakin acts as a double agent between the Jedi Council and Palpatine.</p>
				<p class="price">Цена на билет: <strong>8,99лв.</strong></p>
			</div>
		
			<div class="panel">
				<h2><a href="movie3.aspx">Movie 3</a></h2>
				<p class="name">King Arthur: Legend of the Sword</p>
				<img src="../images/arthur.png" class="moviepicture" alt="King Arthur"  width = "250" height = "250"/>
				<p class="description">&nbsp;&nbsp;&nbsp;Robbed of his birthright, Arthur comes up the hard way in the back alleys of the city.
					But once he pulls the sword from the stone, he is forced to acknowledge his true legacy - whether he likes it or not.</p>
				<p class="price">Цена на билет: <strong>11,99лв.</strong></p>
			</div>
		
			<div class="panel">
				<h2><a href="movie4.aspx">Movie 4</a></h2>
				<p class="name">Interstellar</p>
				<img src="../images/interstellar.png" class="moviepicture" alt="Interstellar"  width = "250" height = "250"/>
				<p class="description">&nbsp;&nbsp;&nbsp;Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts
					who travel through a wormhole near Saturn in search of a new home for humanity.</p>
				<p class="price">Цена на билет: <strong>12,99лв.</strong></p>
			</div>
			<div class="panel">
				<h2><a href="movie5.aspx">Movie 5</a></h2>
				<p class="name">The Wolf of Wall Street</p>
				<img src="../images/wolf-cover.png" class="moviepicture" alt="The Wolf of Wall Street"  width = "250" height = "250"/>
				<p class="description">&nbsp;&nbsp;&nbsp;The movie The Wolf of Wall Street is the true story of how
					rags-to-riches trader Jordan Belfort started with an OTC brokerage firm using pump and dump schemes,
					but eventually became a main player on Wall Street, where he launched the IPOs of several large companies.</p>
				<p class="price">Цена на билет: <strong>13,99лв.</strong></p>
			</div>
			<footer>
				<div id="footer1">
					<div class="footerLink" runat="server"><a href="adminLoign.aspx">Admin login</a></div>
				</div>
			</footer>
		</form>
	</body>
</html>
