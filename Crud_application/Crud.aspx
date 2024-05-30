<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crud.aspx.cs" Inherits="Crud_application.Crud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            width: 170px;
        }
        .auto-style4 {
            height: 36px;
            width: 170px;
        }
    </style>
</head>
<body>
    <div style="text-align:center" > Student Info Register</div>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Student ID</td>
            <td>
                <asp:TextBox ID="id" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Student Name</td>
            <td>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Student Age</td>
            <td class="auto-style2">
                <asp:TextBox ID="age" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">Student Rollno</td>
            <td>
                <asp:TextBox ID="rollno" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Address</td>
            <td>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Student Email</td>
            <td>
                <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td>
                <asp:RadioButtonList ID="gender" runat="server">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Country</td>
            <td>
                <asp:DropDownList ID="country" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True"></asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td>
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
