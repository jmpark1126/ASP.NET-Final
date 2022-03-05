<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="administer.aspx.cs" Inherits="Final.administer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 300px;
            height: 155px;
        }
        .auto-style3 {
            color: #0066FF;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>상품 관리하기(수정, 삭제, 등록 가능)</h2><strong>상품 선택 :</strong>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnDataBound="DropDownList1_DataBound" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;
            <asp:Button ID="Button1" runat="server" Text="상품 수정" OnClick="Button1_Click" />
        &nbsp;
            <asp:Button ID="Button2" runat="server" Text="상품  삭제" OnClick="Button2_Click" 
                OnClientClick="return confirm('정말 삭제하시겠습니까?');" />
        &nbsp;
            <asp:Button ID="Button3" runat="server" Text="화면 초기화" OnClick="Button3_Click" />
        &nbsp;
            <asp:Button ID="Button4" runat="server" Text="상품 등록" OnClick="Button4_Click" />
            &nbsp;
            <br />
            &nbsp;
        <hr />
        <br />
        <table class="auto-style2">
        <tr>
            <td class="auto-style4">상품ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">식물명</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">카테고리</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">국가</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">가격</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <br />
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
        <br />
        <br />
        </strong>
    </div>
    
</asp:Content>
