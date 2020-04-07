<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="Oturma_Odasi.aspx.cs" Inherits="Oturma_Odasi" %>

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
                 Mobilya Adı :</td>
             <td>
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
             <td class="style9">
                 Mobilya Ölçüleri :</td>
             <td>
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Mobilya Renk :</td>
             <td>
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Kumaş Adı :</td>
             <td>
                 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Kumaş Renk :</td>
             <td>
                 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Ağaç Cins :</td>
             <td>
                 <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Fiyat :</td>
             <td>
                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 İndirim Fiyat :</td>
             <td>
                 <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 KategoriKategori :</td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem></asp:ListItem>
                     <asp:ListItem>Koltuk </asp:ListItem>
                     <asp:ListItem>Masa</asp:ListItem>
                     <asp:ListItem>Sandalye</asp:ListItem>
                     <asp:ListItem Value="Sehpa">Sehpa</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style9" colspan="2">
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="EKLE" />
                 &nbsp;Ürün Kodu :
                 <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Text="SİL" onclick="Button2_Click" />
&nbsp;&nbsp;
                 <asp:Button ID="Button3" runat="server" Text="DÜZENLE" 
                     onclick="Button3_Click" />
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
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" 
                     BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                     ForeColor="Black" GridLines="Horizontal" 
                     onselectedindexchanged="GridView1_SelectedIndexChanged">
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="İD" InsertVisible="False" 
                             ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="no" HeaderText="NO" SortExpression="no" />
                         <asp:BoundField DataField="m_adi" HeaderText="MOBİLYA ADI" 
                             SortExpression="m_adi" />
                         <asp:ImageField DataImageUrlField="m_resim_yolu" HeaderText="MOBİLYA RESİM">
                             <ItemStyle Height="25px" Width="25px" />
                         </asp:ImageField>
                         <asp:BoundField DataField="m_boyut" HeaderText="MOBİLYA ÖLÇÜLERİ" 
                             SortExpression="m_boyut" />
                         <asp:BoundField DataField="m_renk" HeaderText="MOBİLYA RENK" 
                             SortExpression="m_renk" />
                         <asp:BoundField DataField="kumas_adi" HeaderText="KUMAŞ ADI" 
                             SortExpression="kumas_adi" />
                         <asp:BoundField DataField="kumas_renk" HeaderText="KUMAŞ RENK" 
                             SortExpression="kumas_renk" />
                         <asp:BoundField DataField="agac_cinsi" HeaderText="AĞAÇ CİNSİ" 
                             SortExpression="agac_cinsi" />
                         <asp:BoundField DataField="fiyat" HeaderText="FİYAT" 
                             SortExpression="fiyat" />
                         <asp:BoundField DataField="indirim_fiyat" HeaderText="İNDİRİMLİ FİYAT" 
                             SortExpression="indirim_fiyat" />
                         <asp:BoundField DataField="kategori" HeaderText="KATEGORİ" 
                             SortExpression="kategori" />
                     </Columns>
                     <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                     <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                     <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F7F7F7" />
                     <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                     <SortedDescendingCellStyle BackColor="#E5E5E5" />
                     <SortedDescendingHeaderStyle BackColor="#242121" />
                 </asp:GridView>
             <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bag %>" 
            SelectCommand="SELECT * FROM [oturma_odasi]"></asp:SqlDataSource>
    </div>
</asp:Content>

