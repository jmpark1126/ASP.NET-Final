<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 340px;
        }
        .auto-style3 {
            width: 157px;
        }
        .auto-style4 {
            color: #0000FF;
        }
        .auto-style5 {
            width: 61px;
        }
    .auto-style6 {
        width: 69px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>로그인</h2>
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">아이디</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5" rowspan="2">
                    <asp:Button ID="Button1" runat="server" Height="33px" Text="로그인" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">비밀번호</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인  상태 유지" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <br />
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>