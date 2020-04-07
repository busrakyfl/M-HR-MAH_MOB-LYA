<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="uyegiris.aspx.cs" Inherits="uyegiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 100%;
            width:550px;
        }
        .style11
        {
            width: 131px;
        }
        .style12
        {
            width: 468px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="yazi2">
<div id="icerik">
<table class="style10" style="border-style: outset; border-color: #91aa9d">
        <tr>
            <td class="style11">
                Kullanıcı Adınız :</td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Parola :</td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            &nbsp;&nbsp;<asp:Button ID="btngiris" runat="server" Text="GİRİŞ" 
                    onclick="btngiris_Click" />
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF3300" 
                    NavigateUrl="~/uyeol.aspx">Üye Ol</asp:HyperLink>
            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="ÇIKIŞ" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
</div></div>
</asp:Content>

