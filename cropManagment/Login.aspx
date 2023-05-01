<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cropManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 239px;
        }
        .auto-style3 {
            width: 239px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            font-family: Bahnschrift;
            font-size: medium;
            color: #99FF66;
        }
    </style>
</head>
<body style="width: 474px">
    
    <form id="form1" runat="server">
        <center>
        <table class="auto-style1">
            <tr>
                <td id="email" colspan="2" style="font-family: Bahnschrift; font-size: large; color: #000000; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER LOGIN&nbsp;</td>
            </tr>
            <tr>
                <td id="email" colspan="2" style="font-family: Bahnschrift; font-size: large; color: #000000; font-weight: bold">
                    <asp:RadioButtonList ID="catagory" runat="server" OnSelectedIndexChanged="catagory_SelectedIndexChanged" Width="132px">
                        <asp:ListItem>Buyer</asp:ListItem>
                        <asp:ListItem>Seller</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td id="email" class="auto-style2">Email :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="password" class="auto-style3">Password :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="password" class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="logbtn" runat="server" OnClick="logbtn_Click" Text="Login" Width="169px" />
                </td>
            </tr>
            <tr>
                <td id="fpass" colspan="2" style="font-size: medium; font-family: Bahnschrift; color: #99FF66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td id="nry" colspan="2" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperRegi" runat="server" NavigateUrl="~/Registration.aspx">Not Register Yet? Sign Up</asp:HyperLink>
                </td>
            </tr>
        </table>
        <div>
            <asp:Label ID="lblmessage" runat="server" Text="Please Select Catagory."></asp:Label>
        </div>
        <asp:Label ID="wrongCred" runat="server" Text="Invalid Credentials."></asp:Label>
            </center>
    </form>
    
</body>
</html>
