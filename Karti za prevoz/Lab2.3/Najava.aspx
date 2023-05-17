<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Lab2._3.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-4 text-right">
                Корисник:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Лозинка:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                <asp:Button ID="btnPodnesi" runat="server" Text="Најава" CssClass="btn btn-primary" OnClick="btnPodnesi_Click"/>
            </div>
            <div class="col-md-4">
                Обиди: <asp:Label ID="lblObidi" runat="server" Text="0"></asp:Label>
            </div>
        </div>
    </div>

    </asp:Content>