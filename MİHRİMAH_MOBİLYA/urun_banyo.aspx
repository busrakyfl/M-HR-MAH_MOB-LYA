<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="urun_banyo.aspx.cs" Inherits="urun_banyo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="metin" style="border-style: groove; border-color: #8CA096">
    
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div style="border: medium solid #8CA096">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="orbitron" 
                    ForeColor="#8CA096" Text='<%# Eval("m_adi") %>'></asp:Label>
                <br />
                <asp:Image ID="Image1" runat="server" Height="250px" 
                    ImageUrl='<%# Eval("m_resim_yolu") %>' Width="250px" />
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("fiyat") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server"  ForeColor="Maroon" 
                    Text='<%# Eval("indirim_fiyat") %>' Font-Underline="True" 
                    Font-Size="X-Large"></asp:Label>
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    
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

