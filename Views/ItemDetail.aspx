<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="PSDProject.Views.ItemDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="padding: 2% 10% ">
        <div class="d-flex justify-content-around ">
            <div class="flex-left-gig">
                <h1><asp:Label ID="CategoryLbl" runat="server"></asp:Label></h1>
                <h2><asp:Label ID="ClothLbl" runat="server"></asp:Label></h2>
                <h4><asp:Label ID="DescLbl" runat="server"></asp:Label></h4>
                <asp:Image ID="Image" runat="server" class="card-img-top title-hover" />
            </div>
            <div class="flex-right-gig">
                <asp:Panel ID="BtnPanel" runat="server" Visible="false">
                    <asp:Button ID="EditBtn" runat="server" class="btn btn-outline-warning" Text="Edit" OnClick="EditBtn_Click"/>
                    <asp:Button ID="DeleteBtn" runat="server" class="btn btn-outline-danger" Text="Delete" OnClick="DeleteBtn_Click"/>
                </asp:Panel>
                <div class="card mb-3" style="width:24rem">
                    <div class="card-body">
                        <div class="d-flex justify-content-between font-weight-bold">
                            <p>Buy Now</p>
                            <asp:Label ID="PriceLbl" runat="server"></asp:Label>
                            <asp:Button ID="CheckoutBtn" runat="server" Text="Checkout" class="btn btn-outline-success" OnClick="CheckoutBtn_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
