<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="yonetici_ekle.aspx.cs" Inherits="yonetici_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
     {
         width: 139px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="metin" style="border-style: groove; border-color: #8CA096">
       
     <table class="style8">
         <tr>
             <td class="style9">
                 Yönetici Adı :</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Parola :</td>
             <td>
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="EKLE" />
             &nbsp;
                 <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SİL" />
             </td>
             <td>
                 <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
             </td>
         </tr>
     </table>
       
    </div>
<div class="menuic"">
    <ul>
    <li><a href="oturma_odasi.aspx">Oturma Odası</a>
    <li><a href="yemek_odasi.aspx">Yemek Odası</a>
    <li><a href="yatak_odasi.aspx">Yatak Odası</a></li>
    <li><a href="mutfak.aspx">Mutfak</a></li>
    <li><a href="cocuk_odasi.aspx">Çocuk Odası</a></li>
    <li><a href="banyo.aspx">Banyo</a></li>
    <li><a href="yemek_odası.aspx">Yemek Odası</a></li>
    <li><a href="cok_amacli.aspx">Çok Amaçlı</a></li>
   
    </ul>
    </div>
</asp:Content>

