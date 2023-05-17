<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GlavnaStranica.aspx.cs" Inherits="Lab2._3.GlavnaStranica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div class="row">
            Најавен : <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </div>

        <div class="row">


        </div>

        <div class="row">


        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                <asp:Button ID="btnOdjava" runat="server" Text="Одјавa" OnClick="btnOdjava_Click" CssClass="btn btn-primary"/>
            </div>
        </div>
    </div>
</asp:Content>
