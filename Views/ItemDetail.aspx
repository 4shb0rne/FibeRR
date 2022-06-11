<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="PSDProject.Views.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="padding: 2% 10% ">
        <div class="d-flex justify-content-around ">
            <div class="flex-left-gig">
                <p><%--{{ $gig->category->name }}--%> Category Name</p>
                <h4><%--{{ $gig->name }}--%> Name</h4>
                <div class="d-flex align-items-center mb-2">
                    <a href="<%--/profile/{{ $gig->user->id }}--%>"
                        class="seller-info d-flex align-items-center border-right pr-2 mr-2">
                    </a>
                </div>
                <img class="w-75" src="<%--../storage/{{ $gig->image }}--%>" alt="">
                <div class="d-flex flex-row mb-5 mt-2">
                    <img height="60px" width="100px" src="<%--../storage/{{ $gig->image }}--%>" class="mr-2">
                    
                </div>
            </div>
            <div class="flex-right-gig">
                <%--@if ($gig->user_id == $userId)
                    <a href="/gig/edit/{{ $gig->id }}"> <button class="btn btn-success mb-2" style="width:100%;">Edit
                            gig</button></a>
                @endif--%>
                <div class="card mb-3" style="width:24rem">
                    <div class="card-body">
                        <div class="d-flex justify-content-between font-weight-bold">
                            <p>Buy Now</p>
                            <p>$<%--{{ $gig->price1 }}--%></p>
                        </div>
                        <p><%--{{ $gig->desc1 }}--%> Desc</p>
                       <%-- @if ($userId)--%>
                           <%-- @if ($userId != $gig->user_id)--%>
                                <a href="/gig/checkout/{{ $gig->id }}/basic"><button
                                        class="btn btn-success w-100">Continue ($<%--{{ $gig->price1 }}--%>)</button></a>
                            <%--@endif--%>
                       <%-- @endif--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="about-gig">
            <h5>About This Gig</h5>
            <p><%--{{ $gig->about }}--%> About</p>
        </div>
        
</asp:Content>
