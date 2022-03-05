<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerManagement.aspx.cs" Inherits="Final.CustomerManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
        width: 398px;
        height: 91px;
    }
    .auto-style3 {
        height: 18px;
        background-color: #99CCFF;
    }
    .auto-style4 {
        text-align: center;
        height: 18px;
        background-color: #99CCFF;
    }
    .auto-style5 {
        text-align: center;
        height: 19px;
        background-color: #99CCFF;
    }
    .auto-style6 {
        height: 19px;
    }
    .auto-style7 {
        height: 19px;
        background-color: #99CCFF;
    }
    .auto-style8 {
        width: 128px;
        height: 18px;
    }
    .auto-style9 {
        height: 19px;
        width: 128px;
    }
    .auto-style10 {
        height: 18px;
    }
    .auto-style11 {
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>회원 가입 정보 확인</h2><strong>회원 선택 :</strong>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="UserID" OnDataBound="DropDownList1_DataBound">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT [UserID], [Name] FROM [People]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="424px">
            <EditItemTemplate>
                UserID:
                <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                선택한 회원과 일치하는 데이터가 없습니다...
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <FooterTemplate>
                <span class="auto-style11">개인정보를 다른 곳으로 유출하거나 도용시 처벌 받을 수 있습니다.</span>
            </FooterTemplate>
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                선택된 회원의 가입정보
            </HeaderTemplate>
            <InsertItemTemplate>
                UserID:
                <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table class="auto-style2" style="border-collapse: collapse">
                    <tr>
                        <td class="auto-style4" style="border: 1px solid #008000">아이디</td>
                        <td class="auto-style10" style="border: 1px solid #008000">
                            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                        </td>
                        <td class="auto-style3" style="border: 1px solid #008000">암호</td>
                        <td class="auto-style8" style="border: 1px solid #008000">
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="border: 1px solid #008000">이름</td>
                        <td class="auto-style6" style="border: 1px solid #008000">
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td class="auto-style7" style="border: 1px solid #008000">연락처</td>
                        <td class="auto-style9" style="border: 1px solid #008000">
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="White" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [People] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="UserID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
