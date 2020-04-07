<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="iade.aspx.cs" Inherits="iade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
        }
        .style10
        {
            width: 475px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="metin" style="border-style: groove; border-color: #8CA096">
       
     <table class="style8" style="border-style: outset; border-color: #000000">
         <tr>
             <td class="style9">
                 Mobilya Ürün Kodu :</td>
             <td class="style10">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 İade Sebebi :</td>
             <td class="style10">
                 <asp:TextBox ID="TextBox2" runat="server" Height="53px" TextMode="MultiLine" 
                     Width="187px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Adres :</td>
             <td class="style10">
                 <asp:TextBox ID="TextBox3" runat="server" Height="44px" TextMode="MultiLine" 
                     Width="184px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Adınız :</td>
             <td class="style10">
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Soyadınız :</td>
             <td class="style10">
                 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Telefon :</td>
             <td class="style10">
                 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Gönder" />
&nbsp;&nbsp;
                 <asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
         </tr>
     </table>
       
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
    <div id="liste">
             <br />
    </div>
</asp:Content>

