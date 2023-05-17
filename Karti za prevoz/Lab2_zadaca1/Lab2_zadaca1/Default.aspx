<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2_zadaca1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container border">
        <div class="row">
            <div class="col-md-4">
                <asp:Table ID="Table1" runat="server" table-align="center">
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Име:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Презиме:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Од:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlOd" runat="server">
                                <asp:ListItem>      </asp:ListItem>
                                <asp:ListItem>Скопје</asp:ListItem>
                                <asp:ListItem>Софија</asp:ListItem>
                                <asp:ListItem>Белград</asp:ListItem>
                                <asp:ListItem>Мадрид</asp:ListItem>
                                <asp:ListItem>Прага</asp:ListItem>
                                <asp:ListItem>Рим</asp:ListItem>
                                <asp:ListItem>Лисабон</asp:ListItem>
                                <asp:ListItem>Лондон</asp:ListItem>
                                <asp:ListItem>Амстердам</asp:ListItem>
                                <asp:ListItem>Тиват</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                До:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlDo" runat="server">
                                <asp:ListItem>      </asp:ListItem>
                                <asp:ListItem>Скопје</asp:ListItem>
                                <asp:ListItem>Софија</asp:ListItem>
                                <asp:ListItem>Белград</asp:ListItem>
                                <asp:ListItem>Мадрид</asp:ListItem>
                                <asp:ListItem>Прага</asp:ListItem>
                                <asp:ListItem>Рим</asp:ListItem>
                                <asp:ListItem>Лисабон</asp:ListItem>
                                <asp:ListItem>Лондон</asp:ListItem>
                                <asp:ListItem>Амстердам</asp:ListItem>
                                <asp:ListItem>Тиват</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Датум на тргање:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Време на тргање:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlVreme" runat="server">
                                <asp:ListItem>00:00</asp:ListItem>
                                <asp:ListItem>01:00</asp:ListItem>
                                <asp:ListItem>02:00</asp:ListItem>
                                <asp:ListItem>03:00</asp:ListItem>
                                <asp:ListItem>04:00</asp:ListItem>
                                <asp:ListItem>05:00</asp:ListItem>
                                <asp:ListItem>06:00</asp:ListItem>
                                <asp:ListItem>07:00</asp:ListItem>
                                <asp:ListItem>08:00</asp:ListItem>
                                <asp:ListItem>09:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                <asp:ListItem>19:00</asp:ListItem>
                                <asp:ListItem>20:00</asp:ListItem>
                                <asp:ListItem>21:00</asp:ListItem>
                                <asp:ListItem>22:00</asp:ListItem>
                                <asp:ListItem>23:00</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Превозно средство:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:ListBox ID="lstPrevoz" runat="server">
                                <asp:ListItem>Авион</asp:ListItem>
                                <asp:ListItem>Воз</asp:ListItem>
                            </asp:ListBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Зона:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButtonList ID="rblZona" runat="server">
                                <asp:ListItem>Пушачи</asp:ListItem>
                                <asp:ListItem>Непушачи</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Класа:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButtonList ID="rblKlasa" runat="server">
                                <asp:ListItem>Економска</asp:ListItem>
                                <asp:ListItem>Бизнис</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Послуга:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBoxList ID="cblPosluga" runat="server">
                                <asp:ListItem>Пијалок</asp:ListItem>
                                <asp:ListItem>Кафе</asp:ListItem>
                                <asp:ListItem>Оброк</asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>

                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click"/>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

            <div class="col-md-4 border border-danger">
                <asp:Table ID="Table2" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Почитуван патнику:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                <asp:Label ID="lblPatnik" runat="server" Text="[lblPatnik]" ForeColor="Red" Font-Italic="False" Font-Bold="True"></asp:Label>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Издадена ви е карта за:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                <asp:Label ID="lblPrevoz" runat="server" Text="[lblPrevoz]" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                со почетна дестинација:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                <asp:Label ID="lblOd" runat="server" Text="[lblOd]" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                со крајна дестинација:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                <asp:Label ID="lblDo" runat="server" Text="[lblDo]" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Времето на поаѓање е:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                <asp:Label ID="lblVreme" runat="server" Text="[lblVreme]" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Детали:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                Вашето место за седење ќе биде во зоната за <asp:Label ID="lblZona" runat="server" Text="[lblZona]" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                                <asp:Label ID="lblKlasa" runat="server" Text="во [lblKlasa]" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                                и во текот на патувањето ќе бидете послужени со: <asp:Label ID="lblPosluga" runat="server" Text="lblPosluga" Font-Bold="True" Font-Italic="True" ForeColor="#3366CC"></asp:Label>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="text-right">
                                Слика:
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div>
                                <asp:Image ID="imgPrevoz" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
    </div>

</asp:Content>
