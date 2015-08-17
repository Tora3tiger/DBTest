<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="sds" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="答案ID" HeaderText="答案ID" SortExpression="答案ID" />
                <asp:BoundField DataField="PDFアドレス" HeaderText="PDFアドレス" 
                    SortExpression="PDFアドレス" />
                <asp:BoundField DataField="生徒ID" HeaderText="生徒ID" SortExpression="生徒ID" />
                <asp:BoundField DataField="講座ID" HeaderText="講座ID" SortExpression="講座ID" />
                <asp:BoundField DataField="講数" HeaderText="講数" SortExpression="講数" />
                <asp:BoundField DataField="受付日" HeaderText="受付日" SortExpression="受付日" />
                <asp:BoundField DataField="添削者ID" HeaderText="添削者ID" SortExpression="添削者ID" />
                <asp:CheckBoxField DataField="返却フラグ" HeaderText="返却フラグ" 
                    SortExpression="返却フラグ" />
                <asp:ButtonField CommandName="Update" HeaderText="ぼたん１" ShowHeader="True" 
                    Text="うｐだて" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="せれくと" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="えぢｔ" />
                <asp:ButtonField CommandName="Delete" Text="消す" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="sds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sampleDBConnectionStringTEST %>" 
            SelectCommand="SELECT [答案ID], [PDFアドレス], [生徒ID], [講座ID], [講数], [受付日], [添削者ID], [返却フラグ] FROM [答案データ]"
            UpdateCommand="UPDATE [答案データ] SET [PDFアドレス] = @PDFアドレス, [生徒ID] = @生徒ID, [講座ID] = @講座ID, [講数] = @講数, [受付日] = @受付日, [添削者ID] = @添削者ID, [返却フラグ] = @返却フラグ WHERE [答案ID] = @答案ID"
            InsertCommand="INSERT INTO [答案データ] ([答案ID], [PDFアドレス], [生徒ID], [講座ID], [講数], [受付日], [添削者ID], [返却フラグ]) VALUES (@答案ID, @PDFアドレス, @生徒ID, @講座ID, @講数, @受付日, @添削者ID, @返却フラグ)" 
            DeleteCommand="DELETE FROM [答案データ] WHERE [答案ID] = @答案ID" >
        </asp:SqlDataSource>





    </div>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="isbn" DataSourceID="sds2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="isbn" HeaderText="isbn" ReadOnly="True" 
                SortExpression="isbn" />
            <asp:BoundField DataField="title" HeaderText="タイトル" SortExpression="title" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="publish" HeaderText="publish" 
                SortExpression="publish" />
            <asp:BoundField DataField="published" HeaderText="published" 
                SortExpression="published" />
            <asp:CheckBoxField DataField="cdrom" HeaderText="cdrom" 
                SortExpression="cdrom" />
            <asp:ButtonField CommandName="Update" Text="うｐ" />
            <asp:ButtonField CommandName="Edit" Text="えぢｔ" />
            <asp:ButtonField CommandName="Insert" Text="ボタン" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="sds2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringTEST %>" 
        DeleteCommand="DELETE FROM [Book] WHERE [isbn] = @isbn" 
        InsertCommand="INSERT INTO [Book] ([isbn], [title], [price], [publish], [published], [cdrom]) VALUES (1, @title, @price, @publish, @published, @cdrom)" 
        SelectCommand="SELECT [isbn], [title], [price], [publish], [published], [cdrom] FROM [Book]" 
        UpdateCommand="UPDATE [Book] SET [title] = @title, [price] = @price, [publish] = @publish, [published] = @published, [cdrom] = @cdrom WHERE [isbn] = @isbn">
        <DeleteParameters>
            <asp:Parameter Name="isbn" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="isbn" Type="String"/>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="publish" Type="String" />
            <asp:Parameter DbType="Date" Name="published" />
            <asp:Parameter Name="cdrom" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="publish" Type="String" />
            <asp:Parameter DbType="Date" Name="published" />
            <asp:Parameter Name="cdrom" Type="Boolean" />
            <asp:Parameter Name="isbn" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <p>
    <asp:TextBox runat="server" id="TextBox1"/> 
    <asp:Button runat="server" id="button1" Text="かく" /><%-- OnClick="Button1_OnClick"/> --%>
    <asp:Button runat="server" id="button2" Text="けす" />
    <asp:Label runat="server" id="Label3"/> 
    </p>

    </form>


</body>
</html>
