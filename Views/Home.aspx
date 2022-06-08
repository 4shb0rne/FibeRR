<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="PSDProject.Views.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome-section">
        <h1 class="welcome-title text-white">Find the perfect <i>Clothes</i> for your styles</h1>
        <div class="form-inline my-2 my-lg-0" action="/search" method="get">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="title">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </div>
    </div>

    <div class="p-5">
        <div class="popular-categories-section mb-5">
            <h2 class="mb-4" style="font-size:36px;">Popular Categories</h2>
            <form action="/search">
                <div class="d-flex card-group justify-content-around">
                    <%--@foreach ($categories as $category)
                        <button type="submit" class="btn text-left border p-4" value="{{ $category->id }}"
                            name="category">{{ $category->name }}</button>
                    @endforeach--%>
                </div>
            </form>
        </div>
        <div class="all-gigs-section">
            <h2 class="mb-4" style="font-size:36px;">All Products</h2>
            <div class="" style=" display:grid; grid-template-columns: repeat(5, minmax(0, 1fr)); gap: 1rem;"
                id="post-data">
                <%--@include('data')--%>
            </div>
        </div>
    </div>
</asp:Content>
