<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="urun.aspx.cs" Inherits="urun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
    {
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="metin" style="border-style: groove; border-color: #8CA096">
       
     <table class="style8">
         <tr>
             <td class="style9">
                 Ürün Kodu :</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Mobilya Resim :</td>
             <td>
                 <asp:FileUpload ID="FileUpload1" runat="server" />
             </td>
         </tr>
         <tr>
             <td class="style9" colspan="2">
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                     Text="EKLE" />
                 Ürün İd :
                 <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                 &nbsp;<asp:Button ID="Button2" runat="server" Text="SİL" 
                     onclick="Button2_Click" Width="33px" />
                 &nbsp;
                 <asp:Button ID="Button3" runat="server" Text="DÜZENLE" 
                     onclick="Button3_Click" />
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="İD" SortExpression="id" />
                <asp:BoundField DataField="no" HeaderText="NO" SortExpression="no" />
                <asp:ImageField DataImageUrlField="resim_yolu" HeaderText="MOBİLYA RESİM">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
             <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bag %>" 
            SelectCommand="SELECT * FROM [urun]"></asp:SqlDataSource>
    </div>
</asp:Content>

