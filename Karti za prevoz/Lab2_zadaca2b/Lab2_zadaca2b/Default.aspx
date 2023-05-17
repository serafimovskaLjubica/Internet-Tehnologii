<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2_zadaca2b._Default" %>

asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="m-4">
        <h1>E-MAIL VALIDATION</h1>
    </div>

    <div class="container">

        <div class="row">
            <div class="col-md-3">
                Име:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvIme" 
                    runat="server" 
                    ErrorMessage="Внеси име!" 
                    ControlToValidate="txtIme" 
                    ValidationGroup="podatoci1"
                    class="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Презиме:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvPrezime" 
                    runat="server" 
                    ErrorMessage="Внеси презиме!" 
                    ControlToValidate="txtPrezime" 
                    ValidationGroup="podatoci1"
                    class="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                <b>ФИНКИ ID:</b>
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtFinkiID" runat="server"></asp:TextBox> @finki.ukim.mk
                <asp:RequiredFieldValidator ID="rfvFinkiID" 
                    runat="server" 
                    ErrorMessage="Внеси ФИНКИ ID!" 
                    ControlToValidate="txtFinkiID" 
                    ValidationGroup="podatoci1"
                    class="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="revFinkiID" 
                    runat="server" 
                    ErrorMessage="Неправилен формат на ID" 
                    ControlToValidate="txtFinkiID" 
                    ValidationGroup="podatoci1"
                    ValidationExpression="(([A-Z]|[0-9])+)(([A-Z]|[0-9])+|[_]\d{2})"
                    class="text-danger"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Лозинка:
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvLozinka" 
                    runat="server" 
                    ErrorMessage="Внеси лозинка!" 
                    ControlToValidate="txtLozinka" 
                    ValidationGroup="podatoci1"
                    class="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Потврда:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtPotvrda" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvPotvrda" 
                    runat="server" 
                    ErrorMessage="Внесете потврда на лозинка!" 
                    ControlToValidate="txtPotvrda" 
                    ValidationGroup="podatoci1"
                    class="text-danger"></asp:RequiredFieldValidator>
                <asp:CompareValidator 
                    ID="cvPotvrdaNaLozinka" 
                    runat="server" 
                    ErrorMessage="Различни лозинки"
                    ControlToCompare="txtLozinka" 
                    ValidationGroup="podatoci1"
                    ControlToValidate="txtPotvrda"
                    class="text-danger"></asp:CompareValidator>
            </div>
            <p>Лозинката може да ги содржи знаците a-z, 0,9, _ и максимум една точка.</p>
            <br/>
            <br/>
        </div>

        <div class="row">
            <div class="col-md-4">
                <asp:ValidationSummary 
                    ID="vsSumarno" 
                    runat="server" 
                    class="text-danger"
                    ShowSummary="True" 
                    ValidationGroup="podatoci1"
                    DisplayMode="BulletList" 
                    ShowMessageBox="True" />
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Адреса:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvAdresa" 
                    runat="server" 
                    ErrorMessage="Внеси адреса!" 
                    ControlToValidate="txtAdresa"
                    class="text-danger"></asp:RequiredFieldValidator>
            </div>
            <br />
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Телефон:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvTelefon" 
                    runat="server" 
                    ErrorMessage="Внеси телефон!" 
                    ControlToValidate="txtTelefon"
                    class="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator2" 
                    runat="server" 
                    class="text-danger"
                    ErrorMessage="Неправилен формат на телефон!!!" 
                    ControlToValidate="txtTelefon" 
                    ValidationExpression="[+][3][8][9]\s(([7][0-9]\s\d{3}\s\d{3})|([1-9][0-9]\s\d{3}\s\d{3})|([2-3]\s\d{4}\s\d{3}))"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Пол:
            </div>
            <div class="col-md-4">
                <asp:RadioButtonList ID="rblPol" runat="server">
                    <asp:ListItem Value="M">Машки</asp:ListItem>
                    <asp:ListItem Value="F">Женски</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:RequiredFieldValidator 
                    ID="rfvPol" 
                    runat="server" 
                    ErrorMessage="Избери пол!" 
                    ControlToValidate="rblPol"
                    class="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Датум на раѓање:
            </div>
            <div class="col-md-4">
                <asp:Calendar ID="caBirthDate" runat="server" SelectionMode="DayWeekMonth"></asp:Calendar>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Занимање:
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlZanimanje" runat="server">
                    <asp:ListItem>-занимање-</asp:ListItem>
                    <asp:ListItem>Професор</asp:ListItem>
                    <asp:ListItem>Инженер</asp:ListItem>
                    <asp:ListItem>Доктор</asp:ListItem>
                    <asp:ListItem>Адвокат</asp:ListItem>
                    <asp:ListItem>Невработен</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator 
                    ID="rfvZanimanje" 
                    runat="server" 
                    ErrorMessage="Изберете занимање!" 
                    ControlToValidate="ddlZanimanje"
                    class="text-danger"></asp:RequiredFieldValidator>
            </div>
            <br />
        </div>

        <div class="row">
            <div class="col-md-4 text-right">
                Години на вршење на избраната дејност:
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtGodini" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvGodini" 
                    runat="server" 
                    ErrorMessage="Внесете вредност!" 
                    ControlToValidate="txtGodini"
                    class="text-danger"></asp:RequiredFieldValidator>
                <asp:CompareValidator 
                    ID="CompareValidator2" 
                    runat="server" 
                    ErrorMessage="Недозволена вредност" 
                    ControlToValidate="txtGodini" 
                    ValidationExpression="[0-9]+"
                    Operator="GreaterThanEqual"
                    class="text-danger"></asp:CompareValidator>
            </div>
        </div>

        <div class="row text-center">
            <br />
            <br />
            <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" CssClass="btn btn-success"/>
        </div>
        <div>
            <br />
            <asp:Label ID="lblSignedUp" runat="server" Text=""></asp:Label>
        </div>
    </div>

</asp:Content>
