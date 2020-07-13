<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 200px;
            background-color: #0000FF;
        }
        .auto-style2 {
            width: 79%;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 140px;
        }
        .auto-style5 {
            height: 23px;
            width: 140px;
        }
        .auto-style6 {
            width: 457px;
        }
        .auto-style7 {
            width: 140px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            height: 23px;
            width: 39px;
        }
        .auto-style10 {
            width: 39px;
            height: 26px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

    <table class="auto-style1">
        <tr>
            <td><h1 align="center">Register</h1></td>
        </tr>
    </table>
    
    <table align="center" class="auto-style2">
        
        <tr>
            <td class="auto-style5">Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" Width="309px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableTheming="True" ErrorMessage="null values not accepted"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Email:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="304px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="invalid emailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox3" runat="server" Width="306px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Null values not accepted"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Re-Enter Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="303px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox6" ErrorMessage="password mismatch"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Phone:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox5" runat="server" Width="303px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
               <center class="auto-style6"> <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="#0066FF" OnClick="Button1_Click" Text="Register" Width="96px" /></center>
            </td>
     
            <td class="auto-style4">
                &nbsp;</td>
     
        </tr>
    </table>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:regConnectionString %>" SelectCommand="SELECT * FROM [userdet]"></asp:SqlDataSource>
    
    </form>
    
</body>
</html>
