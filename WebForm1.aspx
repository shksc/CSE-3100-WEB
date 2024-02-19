<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LogIn.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            width: fit-content;
            display:flex;
justify-content:center;
align-items:center;
        }
        table{
            
           
            
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 97px;
        }
        .auto-style4 {
            width: 97px;
            height: 37px;
        }
        .auto-style5 {
            height: 37px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server" style="border-width: 5px">
        <div>
            <h2>LogIn Form</h2>

        </div>
        <table cellpadding="4" cellspacing="4" class="auto-style1" style="border: 5px solid #000000; font-family: Calibri;">
            <tr>
                <td class="auto-style3">Username</td>
                <td>
                    <asp:TextBox ID="user" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter username" ForeColor="#FF3300" Display="Dynamic" BorderStyle="None" ControlToValidate="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="pass" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ForeColor="Red" Display="Dynamic" ControlToValidate="pass"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="login" runat="server" Text="Log In" OnClick="login_click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
