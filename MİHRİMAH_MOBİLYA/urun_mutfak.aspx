<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="urun_mutfak.aspx.cs" Inherits="urun_mutfak" %>

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
   <li><a href="urun_oturma_odasi.aspx">Oturma Odası</a></li>
    <li><a href="urun_yatak_odasi.aspx">Yatak Odası</a></li>
    <li><a href="urun_mutfak.aspx">Mutfak</a></li>
    <li><a href="urun_cocuk_odasi.aspx">Çocuk Odası</a></li>
    <li><a href="urun_banyo.aspx">Banyo</a></li>
    <li><a href="urun_yemek_odasi.aspx">Yemek Odası</a></li>
    <li><a href="urun_cok_amacli.aspx">Çok Amaçlı</a></li>
    </ul>
    </div>
</asp:Content>

