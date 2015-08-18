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
            DataSourceID="sds" ForeColor="#333333" GridLines="None" PageSize="30">
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
    <p>
        &nbsp;</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="sds">
            <EditItemTemplate>
                答案ID:
                <asp:TextBox ID="答案IDTextBox" runat="server" Text='<%# Eval("答案ID") %>' />
                <br />
                PDFアドレス:
                <asp:TextBox ID="PDFアドレスTextBox" runat="server" Text='<%# Bind("PDFアドレス") %>' />
                <br />
                生徒ID:
                <asp:TextBox ID="生徒IDTextBox" runat="server" Text='<%# Bind("生徒ID") %>' />
                <br />
                講座ID:
                <asp:TextBox ID="講座IDTextBox" runat="server" Text='<%# Bind("講座ID") %>' />
                <br />
                講数:
                <asp:TextBox ID="講数TextBox" runat="server" Text='<%# Bind("講数") %>' />
                <br />
                受付日:
                <asp:TextBox ID="受付日TextBox" runat="server" Text='<%# Bind("受付日") %>' />
                <br />
                添削者ID:
                <asp:TextBox ID="添削者IDTextBox" runat="server" Text='<%# Bind("添削者ID") %>' />
                <br />
                返却フラグ:
                <asp:CheckBox ID="返却フラグCheckBox" runat="server" 
                    Checked='<%# Bind("返却フラグ") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
            </EditItemTemplate>
            <InsertItemTemplate>
                答案ID:
                <asp:TextBox ID="答案IDTextBox" runat="server" Text='<%# Bind("答案ID") %>' />
                <br />
                PDFアドレス:
                <asp:TextBox ID="PDFアドレスTextBox" runat="server" Text='<%# Bind("PDFアドレス") %>' />
                <br />
                生徒ID:
                <asp:TextBox ID="生徒IDTextBox" runat="server" Text='<%# Bind("生徒ID") %>' />
                <br />
                講座ID:
                <asp:TextBox ID="講座IDTextBox" runat="server" Text='<%# Bind("講座ID") %>' />
                <br />
                講数:
                <asp:TextBox ID="講数TextBox" runat="server" Text='<%# Bind("講数") %>' />
                <br />
                受付日:
                <asp:TextBox ID="受付日TextBox" runat="server" Text='<%# Bind("受付日") %>' />
                <br />
                添削者ID:
                <asp:TextBox ID="添削者IDTextBox" runat="server" Text='<%# Bind("添削者ID") %>' />
                <br />
                返却フラグ:
                <asp:CheckBox ID="返却フラグCheckBox" runat="server" 
                    Checked='<%# Bind("返却フラグ") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="挿入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
            </InsertItemTemplate>
            <ItemTemplate>
                答案ID:
                <asp:Label ID="答案IDLabel" runat="server" Text='<%# Bind("答案ID") %>' />
                <br />
                PDFアドレス:
                <asp:Label ID="PDFアドレスLabel" runat="server" Text='<%# Bind("PDFアドレス") %>' />
                <br />
                生徒ID:
                <asp:Label ID="生徒IDLabel" runat="server" Text='<%# Bind("生徒ID") %>' />
                <br />
                講座ID:
                <asp:Label ID="講座IDLabel" runat="server" Text='<%# Bind("講座ID") %>' />
                <br />
                講数:
                <asp:Label ID="講数Label" runat="server" Text='<%# Bind("講数") %>' />
                <br />
                受付日:
                <asp:Label ID="受付日Label" runat="server" Text='<%# Bind("受付日") %>' />
                <br />
                添削者ID:
                <asp:Label ID="添削者IDLabel" runat="server" Text='<%# Bind("添削者ID") %>' />
                <br />
                返却フラグ:
                <asp:CheckBox ID="返却フラグCheckBox" runat="server" Checked='<%# Bind("返却フラグ") %>' 
                    Enabled="false" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="編集" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="削除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="新規作成" />
            </ItemTemplate>
        </asp:FormView>
    </p>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="sds" 
        InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                </td>
                <td>
                    <asp:Label ID="答案IDLabel" runat="server" Text='<%# Eval("答案ID") %>' />
                </td>
                <td>
                    <asp:Label ID="PDFアドレスLabel" runat="server" Text='<%# Eval("PDFアドレス") %>' />
                </td>
                <td>
                    <asp:Label ID="生徒IDLabel" runat="server" Text='<%# Eval("生徒ID") %>' />
                </td>
                <td>
                    <asp:Label ID="講座IDLabel" runat="server" Text='<%# Eval("講座ID") %>' />
                </td>
                <td>
                    <asp:Label ID="講数Label" runat="server" Text='<%# Eval("講数") %>' />
                </td>
                <td>
                    <asp:Label ID="受付日Label" runat="server" Text='<%# Eval("受付日") %>' />
                </td>
                <td>
                    <asp:Label ID="添削者IDLabel" runat="server" Text='<%# Eval("添削者ID") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="返却フラグCheckBox" runat="server" Checked='<%# Eval("返却フラグ") %>' 
                        Enabled="false" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="キャンセル" />
                </td>
                <td>
                    <asp:TextBox ID="答案IDTextBox" runat="server" Text='<%# Bind("答案ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PDFアドレスTextBox" runat="server" Text='<%# Bind("PDFアドレス") %>' />
                </td>
                <td>
                    <asp:TextBox ID="生徒IDTextBox" runat="server" Text='<%# Bind("生徒ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="講座IDTextBox" runat="server" Text='<%# Bind("講座ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="講数TextBox" runat="server" Text='<%# Bind("講数") %>' />
                </td>
                <td>
                    <asp:TextBox ID="受付日TextBox" runat="server" Text='<%# Bind("受付日") %>' />
                </td>
                <td>
                    <asp:TextBox ID="添削者IDTextBox" runat="server" Text='<%# Bind("添削者ID") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="返却フラグCheckBox" runat="server" 
                        Checked='<%# Bind("返却フラグ") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        データは返されませんでした。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                </td>
                <td>
                    <asp:TextBox ID="答案IDTextBox" runat="server" Text='<%# Bind("答案ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PDFアドレスTextBox" runat="server" Text='<%# Bind("PDFアドレス") %>' />
                </td>
                <td>
                    <asp:TextBox ID="生徒IDTextBox" runat="server" Text='<%# Bind("生徒ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="講座IDTextBox" runat="server" Text='<%# Bind("講座ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="講数TextBox" runat="server" Text='<%# Bind("講数") %>' />
                </td>
                <td>
                    <asp:TextBox ID="受付日TextBox" runat="server" Text='<%# Bind("受付日") %>' />
                </td>
                <td>
                    <asp:TextBox ID="添削者IDTextBox" runat="server" Text='<%# Bind("添削者ID") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="返却フラグCheckBox" runat="server" 
                        Checked='<%# Bind("返却フラグ") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                </td>
                <td>
                    <asp:Label ID="答案IDLabel" runat="server" Text='<%# Eval("答案ID") %>' />
                </td>
                <td>
                    <asp:Label ID="PDFアドレスLabel" runat="server" Text='<%# Eval("PDFアドレス") %>' />
                </td>
                <td>
                    <asp:Label ID="生徒IDLabel" runat="server" Text='<%# Eval("生徒ID") %>' />
                </td>
                <td>
                    <asp:Label ID="講座IDLabel" runat="server" Text='<%# Eval("講座ID") %>' />
                </td>
                <td>
                    <asp:Label ID="講数Label" runat="server" Text='<%# Eval("講数") %>' />
                </td>
                <td>
                    <asp:Label ID="受付日Label" runat="server" Text='<%# Eval("受付日") %>' />
                </td>
                <td>
                    <asp:Label ID="添削者IDLabel" runat="server" Text='<%# Eval("添削者ID") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="返却フラグCheckBox" runat="server" Checked='<%# Eval("返却フラグ") %>' 
                        Enabled="false" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    答案ID</th>
                                <th runat="server">
                                    PDFアドレス</th>
                                <th runat="server">
                                    生徒ID</th>
                                <th runat="server">
                                    講座ID</th>
                                <th runat="server">
                                    講数</th>
                                <th runat="server">
                                    受付日</th>
                                <th runat="server">
                                    添削者ID</th>
                                <th runat="server">
                                    返却フラグ</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                </td>
                <td>
                    <asp:Label ID="答案IDLabel" runat="server" Text='<%# Eval("答案ID") %>' />
                </td>
                <td>
                    <asp:Label ID="PDFアドレスLabel" runat="server" Text='<%# Eval("PDFアドレス") %>' />
                </td>
                <td>
                    <asp:Label ID="生徒IDLabel" runat="server" Text='<%# Eval("生徒ID") %>' />
                </td>
                <td>
                    <asp:Label ID="講座IDLabel" runat="server" Text='<%# Eval("講座ID") %>' />
                </td>
                <td>
                    <asp:Label ID="講数Label" runat="server" Text='<%# Eval("講数") %>' />
                </td>
                <td>
                    <asp:Label ID="受付日Label" runat="server" Text='<%# Eval("受付日") %>' />
                </td>
                <td>
                    <asp:Label ID="添削者IDLabel" runat="server" Text='<%# Eval("添削者ID") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="返却フラグCheckBox" runat="server" Checked='<%# Eval("返却フラグ") %>' 
                        Enabled="false" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    </form>


</body>
</html>
