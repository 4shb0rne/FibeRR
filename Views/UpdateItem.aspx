<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Template.Master" AutoEventWireup="true" CodeBehind="UpdateItem.aspx.cs" Inherits="PSDProject.Views.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:2% 10%">
        <div method="post">
            <div class="form-group">
                <label for="inputTitle">Title</label>
                <input type="text" class="form-control" name="name">
                <%--@if ($errors->has('name'))
                    <p class="text-danger">The title field is required</p>
                @endif--%>
            </div>
            <div class="form-group">
                <label for="inputCategory">Category</label>
                <select class="form-control" name="category">
                    <%--@foreach ($categories as $category)
                        @if ($gig)
                            @if ($category->id == $gig->category_id)
                                @continue
                            @endif
                        @endif
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endforeach--%>
                </select>
            </div>
            <div class="form-group">
                <label for="about">About</label>
                <textarea class="form-control" name="about" rows="6"></textarea>
                <%--@if ($errors->has('about'))
                    <p class="text-danger">The about field is required</p>
                @endif--%>
            </div>
            <div class="form-group">
                <div class="form-grouping">
                    <label for="inputBasicPrice">Basic Price</label>
                    <input type="number" class="form-control" name="price1" >
                    <%--@if ($errors->has('price1'))
                        <p class="text-danger">The basic price field is required</p>
                    @endif--%>
                </div>
                <div class="form-grouping">
                    <label for="inputPrice">Description</label>
                    <textarea class="form-control" name="desc1" rows="5"></textarea>
                    <%--@if ($errors->has('desc1'))
                        <p class="text-danger">The description field is required</p>
                    @endif--%>
                </div>
            </div>
      
            </div>
            <div class="form-group custom-file mb-5">
                <label class="form-label" for="customFile">Images</label>
                <input type="file" multiple class="form-control p-1" id="customFile" name="images[]" />
                <%--@if ($errors->has('image'))
                    <p class="text-danger">The image field is required.</p>
                @endif--%>
            </div>
            <button type="submit" class="btn btn-success mb-2 w-100">Submit</button>
            <a href="<%--/profile/{{ $userId }}--%>"><button class="btn btn-success mb-2 w-100"
                style="opacity: 0.6;">Cancel</button></a>
            <div method="post" action="<%--/delete/{{$gig->id}}--%>">
                <input type="hidden" name="_method" value="DELETE" />
                <button class="btn btn-danger w-100" type="submit">Delete</button>
            </div>
        </div>
    </div>
</asp:Content>
