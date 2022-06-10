<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="PSDProject.Views.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding: 2% 10%">
        <h1>Checkout</h1>
        <div class="row mt-4">
            <div class="col-12 col-sm-6 col-md-8">
                <div class="card">
                    <div class="card-body">
                        <div>
                            <h5 style="margin-top:-12px"><%--{{ $gig->name }}--%></h5>
                            <p><%--{{ $gig->about }}--%></p>
                        </div>
                        <div>
                            <img src="<%--../../../storage/{{ $gig->image }}--%>" alt="image" class="w-50">
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4">
                <div class="card">
                    <div class="card-body">
                        <div action="/gig/checkout/{{ $gig->id }}" method="post">
                            <input type="hidden" name="type" value="Basic" />
                            <input type="hidden" name="price" value="<%--{{ $gig->price1 }}--%>" />
                            <h5>Basic</h5>
                            <h6>$<%--{{ $gig->price1 }}--%></h6>
                            
                            <button type="submit" class="btn btn-success w-100 mt-2">Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
