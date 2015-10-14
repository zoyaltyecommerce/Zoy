<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WINDERINSERT.aspx.cs" Inherits="Zoyal.WINDERINSERT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>USERNAME</td>
                <td>
                    <asp:TextBox ID="TXTUSERNAME" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTUSERNAME" ErrorMessage="Plz Enter you Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>EMAIL</td>
                <td>
                    <asp:TextBox ID="TXTEMAIL" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTEMAIL" ErrorMessage="Plz Enter Email Address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>PASSWORD</td>
                <td>
                    <asp:TextBox ID="TXTPASSWORD" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXTPASSWORD" ErrorMessage="Plz Enter PassWord"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>MOBILE</td>
                <td>
                    <asp:TextBox ID="TXTMOBILE" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXTMOBILE" ErrorMessage="Enter Mobile Number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>MODIFIEDBY</td>
                <td>
                    <asp:TextBox ID="TXTMODIFIEDP" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXTMODIFIEDP" ErrorMessage="Plz Enter Personid"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ORGANIZATION NAME</td>
                <td class="auto-style3">
                    <asp:TextBox ID="ORGANIZATION" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ORGANIZATION" ErrorMessage="Plz Enter Organization Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ADDRESS</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TXTADDRESS" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TXTADDRESS" ErrorMessage="Plz Enter your Address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SUBMIT" runat="server" OnClick="SUBMIT_Click" Text="SUBMIT" />
&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
