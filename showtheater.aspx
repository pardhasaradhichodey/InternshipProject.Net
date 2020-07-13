<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showtheater.aspx.cs" Inherits="WebApplication1.showtheater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="10:30AM" />
&nbsp;
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="2:30PM" Width="78px" />
&nbsp;
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="6:00PM" Width="78px" />
&nbsp;
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="9:30PM" Width="78px" />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <h2>Theatre Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address</h2>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" Height="300px" Width="100%"  OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate >
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TheatreName") %>' Font-Bold="True" Font-Size="20pt" ForeColor="#336699" Width="300px"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Address") %>' Font-Bold="true" Font-Size="15pt" ForeColor="#336699" Width="300px"></asp:Label>
                <asp:LinkButton ID="Button1" runat="server" Text="Book Now" commandName="Select1" />
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
