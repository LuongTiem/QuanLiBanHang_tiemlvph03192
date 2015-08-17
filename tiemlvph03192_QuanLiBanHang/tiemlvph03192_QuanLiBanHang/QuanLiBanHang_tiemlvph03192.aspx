<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLiBanHang_tiemlvph03192.aspx.cs" Inherits="tiemlvph03192_QuanLiBanHang.QuanLiBanHang_tiemlvph03192" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="font-weight: 700; text-decoration: underline; width: 266px; text-align: justify; margin-left: 564px">Quản Lí Bán Hàng </h1>
        <p style="text-align: center">
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h3><strong>Bảng Khách Hàng </strong></h3>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="BangKhachHang" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="BangKhachHang" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuanLiBanHang_tiemlvph03192ConnectionString2 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [id] = @original_id AND [HoTen] = @original_HoTen AND [email] = @original_email" InsertCommand="INSERT INTO [KhachHang] ([id], [HoTen], [email]) VALUES (@id, @HoTen, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [HoTen], [email] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTen] = @HoTen, [email] = @email WHERE [id] = @original_id AND [HoTen] = @original_HoTen AND [email] = @original_email">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_HoTen" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_HoTen" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>&nbsp;</p>
        <h3><strong>Bảng Hóa Đơn</strong></h3>
        <p>
            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="BangHoaDon" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="SoHoaDon" HeaderText="SoHoaDon" SortExpression="SoHoaDon" />
                    <asp:BoundField DataField="MaKhachHang" HeaderText="MaKhachHang" SortExpression="MaKhachHang" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="BangHoaDon" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuanLiBanHang_tiemlvph03192ConnectionString2 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [id] = @original_id AND [SoHoaDon] = @original_SoHoaDon AND [MaKhachHang] = @original_MaKhachHang" InsertCommand="INSERT INTO [HoaDon] ([id], [SoHoaDon], [MaKhachHang]) VALUES (@id, @SoHoaDon, @MaKhachHang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [SoHoaDon], [MaKhachHang] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [SoHoaDon] = @SoHoaDon, [MaKhachHang] = @MaKhachHang WHERE [id] = @original_id AND [SoHoaDon] = @original_SoHoaDon AND [MaKhachHang] = @original_MaKhachHang">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_SoHoaDon" Type="String" />
                    <asp:Parameter Name="original_MaKhachHang" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="SoHoaDon" Type="String" />
                    <asp:Parameter Name="MaKhachHang" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoHoaDon" Type="String" />
                    <asp:Parameter Name="MaKhachHang" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_SoHoaDon" Type="String" />
                    <asp:Parameter Name="original_MaKhachHang" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <h3><strong>Bảng Loại Sản Phẩm </strong></h3>
        <p>
            <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="BangLoaiSanPham" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="TenLoaiSanPham" HeaderText="TenLoaiSanPham" SortExpression="TenLoaiSanPham" />
                    <asp:BoundField DataField="parent_category_id" HeaderText="parent_category_id" SortExpression="parent_category_id" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="BangLoaiSanPham" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuanLiBanHang_tiemlvph03192ConnectionString2 %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [id] = @original_id AND [TenLoaiSanPham] = @original_TenLoaiSanPham AND (([parent_category_id] = @original_parent_category_id) OR ([parent_category_id] IS NULL AND @original_parent_category_id IS NULL))" InsertCommand="INSERT INTO [LoaiSanPham] ([id], [TenLoaiSanPham], [parent_category_id]) VALUES (@id, @TenLoaiSanPham, @parent_category_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [TenLoaiSanPham], [parent_category_id] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoaiSanPham] = @TenLoaiSanPham, [parent_category_id] = @parent_category_id WHERE [id] = @original_id AND [TenLoaiSanPham] = @original_TenLoaiSanPham AND (([parent_category_id] = @original_parent_category_id) OR ([parent_category_id] IS NULL AND @original_parent_category_id IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_TenLoaiSanPham" Type="String" />
                    <asp:Parameter Name="original_parent_category_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="TenLoaiSanPham" Type="String" />
                    <asp:Parameter Name="parent_category_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLoaiSanPham" Type="String" />
                    <asp:Parameter Name="parent_category_id" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_TenLoaiSanPham" Type="String" />
                    <asp:Parameter Name="original_parent_category_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <h3><strong>Bảng Sản Phẩm</strong></h3>
        <p>
            <asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="BangSanPham" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="MaLoaiSanPham" HeaderText="MaLoaiSanPham" SortExpression="MaLoaiSanPham" />
                    <asp:BoundField DataField="MaSo" HeaderText="MaSo" SortExpression="MaSo" />
                    <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                    <asp:BoundField DataField="GiaSanPham" HeaderText="GiaSanPham" SortExpression="GiaSanPham" />
                    <asp:BoundField DataField="ChiTietSanPham" HeaderText="ChiTietSanPham" SortExpression="ChiTietSanPham" />
                    <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="BangSanPham" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuanLiBanHang_tiemlvph03192ConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [id] = @original_id AND [MaLoaiSanPham] = @original_MaLoaiSanPham AND [MaSo] = @original_MaSo AND [TenSanPham] = @original_TenSanPham AND [GiaSanPham] = @original_GiaSanPham AND [ChiTietSanPham] = @original_ChiTietSanPham AND [HinhAnh] = @original_HinhAnh" InsertCommand="INSERT INTO [SanPham] ([id], [MaLoaiSanPham], [MaSo], [TenSanPham], [GiaSanPham], [ChiTietSanPham], [HinhAnh]) VALUES (@id, @MaLoaiSanPham, @MaSo, @TenSanPham, @GiaSanPham, @ChiTietSanPham, @HinhAnh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [MaLoaiSanPham], [MaSo], [TenSanPham], [GiaSanPham], [ChiTietSanPham], [HinhAnh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaSo] = @MaSo, [TenSanPham] = @TenSanPham, [GiaSanPham] = @GiaSanPham, [ChiTietSanPham] = @ChiTietSanPham, [HinhAnh] = @HinhAnh WHERE [id] = @original_id AND [MaLoaiSanPham] = @original_MaLoaiSanPham AND [MaSo] = @original_MaSo AND [TenSanPham] = @original_TenSanPham AND [GiaSanPham] = @original_GiaSanPham AND [ChiTietSanPham] = @original_ChiTietSanPham AND [HinhAnh] = @original_HinhAnh">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_MaLoaiSanPham" Type="Int32" />
                    <asp:Parameter Name="original_MaSo" Type="String" />
                    <asp:Parameter Name="original_TenSanPham" Type="String" />
                    <asp:Parameter Name="original_GiaSanPham" Type="Decimal" />
                    <asp:Parameter Name="original_ChiTietSanPham" Type="String" />
                    <asp:Parameter Name="original_HinhAnh" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="MaLoaiSanPham" Type="Int32" />
                    <asp:Parameter Name="MaSo" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                    <asp:Parameter Name="ChiTietSanPham" Type="String" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLoaiSanPham" Type="Int32" />
                    <asp:Parameter Name="MaSo" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                    <asp:Parameter Name="ChiTietSanPham" Type="String" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_MaLoaiSanPham" Type="Int32" />
                    <asp:Parameter Name="original_MaSo" Type="String" />
                    <asp:Parameter Name="original_TenSanPham" Type="String" />
                    <asp:Parameter Name="original_GiaSanPham" Type="Decimal" />
                    <asp:Parameter Name="original_ChiTietSanPham" Type="String" />
                    <asp:Parameter Name="original_HinhAnh" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <br />
        <h3><strong>Bảng Chi Tiết Hóa Đơn</strong></h3>
        <p>
            <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="BangChiTietHoaDon" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" SortExpression="MaHoaDon" />
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="SoTien" HeaderText="SoTien" SortExpression="SoTien" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="BangChiTietHoaDon" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuanLiBanHang_tiemlvph03192ConnectionString2 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [id] = @original_id AND [MaHoaDon] = @original_MaHoaDon AND [MaSanPham] = @original_MaSanPham AND [SoTien] = @original_SoTien" InsertCommand="INSERT INTO [ChiTietHoaDon] ([id], [MaHoaDon], [MaSanPham], [SoTien]) VALUES (@id, @MaHoaDon, @MaSanPham, @SoTien)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [MaHoaDon], [MaSanPham], [SoTien] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHoaDon] = @MaHoaDon, [MaSanPham] = @MaSanPham, [SoTien] = @SoTien WHERE [id] = @original_id AND [MaHoaDon] = @original_MaHoaDon AND [MaSanPham] = @original_MaSanPham AND [SoTien] = @original_SoTien">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="original_MaSanPham" Type="Int32" />
                    <asp:Parameter Name="original_SoTien" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                    <asp:Parameter Name="SoTien" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                    <asp:Parameter Name="SoTien" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="original_MaSanPham" Type="Int32" />
                    <asp:Parameter Name="original_SoTien" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
