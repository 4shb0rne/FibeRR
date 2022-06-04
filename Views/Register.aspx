<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PSDProject.Views.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center" style="margin-top: 2.5%;">
    <div class="card row d-flex" style="width: 30rem;">
        <div class="card-body">
            <form action="/register" method="POST">
                <p class="card-text">Name</p>
                <div class="mb-3">
                    <input type="text" class="form-control" name="name"/>
                </div>
                <p class="card-text">Email</p>
                <div class="mb-3">
                    <input type="text" class="form-control" name="email"/>
                </div>
                <p class="card-text">Password</p>
                <div class="mb-3">
                    <input type="password" class="form-control" name="password"></input>
                </div>
                <p><a href="/register"><button class="btn btn-success" style="width: 100%;">Register</button></a></p>
                <p><a href="/login"><input type="button" class="btn btn-outline-success" style="width: 100%;" value="Login"></input></a></p>
            </form>
        </div>
    </div>
</div>
</asp:Content>
