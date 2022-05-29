<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="site.aspx.vb" Inherits="WebApplication2.site" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 214px;
        }
        .auto-style4 {
            width: 547px;
            margin-left: 0px;
        }
        .auto-style6 {
            width: 214px;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">

    <div style="text-align: center; vertical-align: middle; background-color: #00FFFF; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bolder; color: #FF0000" align="center">
        AJOUT NEW PRODUIT
    </div>
    <br />
    <div align="center" style="position:center">

        <table cellpadding="2" class="auto-style4">
            <tr>
                <td class="auto-style6">Id_Produit</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_Id" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nom_Produit</td>
                <td>
                    <asp:TextBox ID="TextBoxNom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Quantité_Produit</td>
                <td>
                    <asp:TextBox ID="TextBoxQ" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonInsert" runat="server" Text="Insérer" Width="169px" />
                </td>
            </tr>
        </table>
        <br />
        <div align="center">
                      <asp:GridView ID="GridView1" runat="server" Width="606px" AllowSorting="True">
                            <HeaderStyle BackColor="Aqua" Font-Bold="True" Font-Italic="True" />
                       </asp:GridView>

        </div>

    </div>
    </form>
</body>
</html>
