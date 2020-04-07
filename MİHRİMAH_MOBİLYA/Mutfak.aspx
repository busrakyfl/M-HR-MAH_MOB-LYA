<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="Mutfak.aspx.cs" Inherits="Mutfak" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style8
        {
            text-decoration: underline;
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="metin" 
        style="border-style: groove; border-color: #8CA096; font-weight: 700;" 
        class="style8">
    Web sayfamız yapım aşamasındadır...    
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

