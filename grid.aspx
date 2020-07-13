<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="WebApplication1.grid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1
        {
            width: 75%;
            height: 300px;
        }
        .auto-style13
        {
            width: 45px;
            height: 45px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" BackColor="#009999" Text="Screen this side"></asp:Label>
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
            <tr>
                <td class="auto-style13">
                    A1<asp:ImageButton ID="A1" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A1_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A2<asp:ImageButton ID="A2" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A2_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A3<asp:ImageButton ID="A3" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A3_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A4<asp:ImageButton ID="A4" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A4_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A5<asp:ImageButton ID="A5" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A5_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A6<asp:ImageButton ID="A6" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A6_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A7<asp:ImageButton ID="A7" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A7_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A8<asp:ImageButton ID="A8" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A8_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A9<asp:ImageButton ID="A9" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A9_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    A10<asp:ImageButton ID="A10" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="A10_Click" class="auto-style13"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    B1<asp:ImageButton ID="B1" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B1_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B2<asp:ImageButton ID="B2" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B2_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B3<asp:ImageButton ID="B3" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B3_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B4<asp:ImageButton ID="B4" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B4_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B5<asp:ImageButton ID="B5" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B5_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B6<asp:ImageButton ID="B6" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B6_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B7<asp:ImageButton ID="B7" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B7_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B8<asp:ImageButton ID="B8" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B8_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B9<asp:ImageButton ID="B9" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B9_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    B10<asp:ImageButton ID="B10" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="B10_Click" class="auto-style13"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    C1<asp:ImageButton ID="C1" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C1_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C2<asp:ImageButton ID="C2" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C2_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C3<asp:ImageButton ID="C3" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C3_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C4<asp:ImageButton ID="C4" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C4_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C5<asp:ImageButton ID="C5" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C5_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C6<asp:ImageButton ID="C6" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C6_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C7<asp:ImageButton ID="C7" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C7_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C8<asp:ImageButton ID="C8" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C8_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C9<asp:ImageButton ID="C9" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C9_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    C10<asp:ImageButton ID="C10" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="C10_Click" class="auto-style13"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    D1<asp:ImageButton ID="D1" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D1_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D2<asp:ImageButton ID="D2" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D2_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D3<asp:ImageButton ID="D3" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D3_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D4<asp:ImageButton ID="D4" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D4_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D5<asp:ImageButton ID="D5" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D5_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D6<asp:ImageButton ID="D6" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D6_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D7<asp:ImageButton ID="D7" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D7_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D8<asp:ImageButton ID="D8" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D8_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D9<asp:ImageButton ID="D9" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D9_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    D10<asp:ImageButton ID="D10" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="D10_Click" class="auto-style13"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    E1<asp:ImageButton ID="E1" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E1_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E2<asp:ImageButton ID="E2" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E2_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E3<asp:ImageButton ID="E3" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E3_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E4<asp:ImageButton ID="E4" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E4_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E5<asp:ImageButton ID="E5" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E5_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E6<asp:ImageButton ID="E6" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E6_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E7<asp:ImageButton ID="E7" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E7_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E8<asp:ImageButton ID="E8" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E8_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E9<asp:ImageButton ID="E9" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E9_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    E10<asp:ImageButton ID="E10" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="E10_Click" class="auto-style13"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    F1<asp:ImageButton ID="F1" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F1_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F2<asp:ImageButton ID="F2" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F2_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F3<asp:ImageButton ID="F3" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F3_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F4<asp:ImageButton ID="F4" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F4_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F5<asp:ImageButton ID="F5" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F5_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F6<asp:ImageButton ID="F6" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F6_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F7<asp:ImageButton ID="F7" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F7_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F8<asp:ImageButton ID="F8" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F8_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F9<asp:ImageButton ID="F9" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F9_Click" class="auto-style13"/>
                </td>
                <td class="auto-style13">
                    F10<asp:ImageButton ID="F10" runat="server" ImageUrl="~/Image/available_seat.jpg" OnClick="F10_Click" class="auto-style13"/>
                </td>
            </tr>
        </table>
            </asp:Panel>
        </div>
        <p>
            Movie Id:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            Theatre Name:&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            Selected Seats:&nbsp;
            <asp:TextBox ID="txtseatnumber" runat="server"></asp:TextBox>
        </p>
        <p>
            Date of Movie:&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            Time of Movie:&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Booking" />
        </p>
        <p>
            <asp:Label ID="Label11" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
