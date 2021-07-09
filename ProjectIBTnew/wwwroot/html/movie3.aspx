<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movie3.aspx.cs" Inherits="ProjectIBTnew.wwwroot.html.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8"/>
		<link href="../styles/style1.css" rel="stylesheet"/>
		<script src="../scripts/script1.js"></script>
		<title>King Arthur: Legend of the Sword</title>
	</head>
	
	<body>
		<form id="form1" runat="server">
			<h1 class="title" id="main_title" >King Arthur:<br /> Legend of the Sword</h1>
			<h2 class ="loggedIn" id="loggedIn" runat="server">Welcome <a href="userPage.aspx"><%=Session["username"]%></a></h2>
			<h2 class ="loggedInAdmin" id="loggedInAdmin" runat="server">Welcome <a href="adminPage.aspx"><%=Session["username"]%></a></h2>
			<h2 class="back"><a href="index.aspx">Back</a></h2>

	
			<img src="../images/logo.png" class="logo" alt="Logo"/>
			<img src="../images/arthur-cover.png" class="cover" alt="Cover photo" width="371" height="507"/>
			<img src="../images/arthur.png" class="photo" alt="Photo from movie" width="600" height="392"/>


			<div class="info">
				<h2>Plot of the movie:</h2>
				<p>&nbsp;&nbsp;&nbsp;An alternative version of the King Arthur legend. As a boy, Arthur
					is left orphaned after his father, King Uther Pendragon, and mother are killed in a
					war waged against them by Vortigern, who then assumes the throne. Arthur flees and is
					raised in a brothel, knowing very little of his birthright. Vortigern wants Arthur dead,
					to ensure there is no claimant to the throne. The legends foretell that only the next king
					will be able to draw Excalibur, Uther's sword, from the rock where it is lodged. So, in an
					effort to identify Arthur, Vortigern forces all the young men of Arthur's age to attempt to
					draw out the sword. Now it is Arthur's turn.</p>
				<h2 class="price">Цена на билет: 12,99лв.</h2>
				<asp:Button CssClass="buyTicket" ID="btnBuy" runat="server" OnClientClick="return false;" Text="Buy ticket"/>
			</div>
		
			<div class="rsection" id="rsection">
				<div class="comment">
					<div class="row">
						<div class="col-25">
							<label for="name">Name</label>
						</div>
						<div class="col-75">
							<asp:TextBox CssClass="text" ID="reviewName" name="reviewName" runat="server" placeholder="Your name.."></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-25">
							<label for="review">Review</label>
						</div>
						<div class="col-75">
							<asp:TextBox CssClass="text" ID="review" name="review" runat="server" placeholder="Write something.."></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<asp:Button CssClass="submitButton" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
					</div>
				</div>
			
				<div class="comment" id="container">
                    <asp:GridView ID="GridView1" CssClass="grid" runat="server" RowStyle-CssClass="gridRows" AutoGenerateColumns="False"  DataKeyNames="id" DataSourceID="SqlDataSource1" Height="304px" Width="377px">
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                            <ControlStyle BorderStyle="Solid" />
                            <ItemStyle BorderStyle="Solid" />
                            </asp:BoundField>
                            <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review" />
                        </Columns>

					<RowStyle CssClass="gridRows"></RowStyle>
                    </asp:GridView>
				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectIBTConnectionString %>" SelectCommand="SELECT * FROM [reviewTable1] WHERE ([movie_id] = @movie_id)">
                        <SelectParameters>
                            <asp:SessionParameter Name="movie_id" SessionField="movieID" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
				</div>
			</div>
		
			<div class="paymentContainer" id="paymentContainer">
				<label for="name">Name</label>
				<input type="text" id="orderName" name="orderName" runat="server" placeholder="Your name.."/>

				<label for="adress">Adress</label>
				<input type="text" id="adress" name="adress" runat="server" placeholder="Your adress.."/>

				<label for="quantity">Quantity (between 1 and 10):</label>
				<input type="number" id="quantity" name="quantity" runat="server" min="1" max="10" placeholder="1-10"/>

				<asp:Button CssClass="orderButton" ID="btnOrder" runat="server" Text="Submit" OnClick="btnOrder_Click" />
			</div>
		</form>
	</body>
</html>

