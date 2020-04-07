<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="yonetim.aspx.cs" Inherits="yonetim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            height: 28px;
            text-align: left;
        }
        .style10
        {
            width: 167px;
            text-align: left;
        }
        .style11
        {
            height: 28px;
            width: 167px;
            text-align: left;
        }
        .style12
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="metin" style="border-style: groove; border-color: #8CA096">
        <table class="style8">
            <tr>
                <td class="style10">
                    YÖNETİCİ AD :</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    PAROLA :</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GİRİŞ" />
                &nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#8CA096" 
                        NavigateUrl="~/yonetici_ekle.aspx" Visible="False">Yönetici Kontrol</asp:HyperLink>
                    <br />
                </td>
                <td class="style9">
                    <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ÇIKIŞ" />
                </td>
            </tr>
        </table>
        <br />
    </div>
<div class="menuic"">
    <ul>
  <li><a href="Oturma_Odasi.aspx">Oturma Odası<li>
    <li><a href="Yatak_Odasi.aspx">Yatak Odası</a></li>
    <li><a href="Mutfak.aspx">Mutfak</a></li>
    <li><a href="Cocuk_Odasi.aspx">Çocuk Odası</a></li>
    <li><a href="Banyo.aspx">Banyo</a></li>
    <li><a href="Yemek_Odasi.aspx">Yemek Odası</a></li>
    <li><a href="Cok_Amacli.aspx">Çok Amaçlı</a></li>
    <li><a href="urun.aspx">Mobilya</a></li>
    </ul>
    </div>
   
    
 
</asp:Content>

