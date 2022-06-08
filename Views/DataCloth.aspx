<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="DataCloth.aspx.cs" Inherits="PSDProject.Views.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card m-2" >
        <a href="/gig/{{ $gig->id }}"><img class="card-img-top title-hover" src="../storage/{{ $gig->image }}" height="200px"
                alt="Card image cap"></a>
        <div class="card-body">
            <a href="<%--/gig/{{ $gig->id }}--%>" class="card-text title-hover"><%--{{ $gig->name }}--%>Cloth name</a>
        </div>
        <div class="list-group list-group-flush">
            <a href="<%--/gig/{{ $gig->id }}--%>" class="list-group-item text-right" style="font-size:18px;">
                <b>$<%--{{ $gig->price1 }}--%></b></a>
        </div>
    </div>
</asp:Content>
