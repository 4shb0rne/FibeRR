﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PSDProject.Views.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center" style="margin-top: 2.5%;">
    <div class="card row d-flex" style="width: 30rem;">
        <div class="card-body">
            <div>
                <p class="card-text">Name</p>
                <div class="mb-3">
                    <asp:TextBox ID="UsernameTxt" runat="server" class="form-control"></asp:TextBox>
                </div>
                <p class="card-text">Email</p>
                <div class="mb-3">
                    <asp:TextBox ID="EmailTxt" runat="server" class="form-control"></asp:TextBox>
                </div>
                <p class="card-text">Password</p>
                <div class="mb-3">
                    <asp:TextBox ID="PasswordTxt" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <p>
                    <asp:Button ID="registerBtn" runat="server" Text="Register" class="btn btn-success" style="width: 100%;" OnClick="registerBtn_Click"/>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Views/Login.aspx"><input type="button" value="Login" style="width:100%"/></asp:HyperLink>
                </p>
            </div>
        </div>
    </div>
</div>
</asp:Content>
