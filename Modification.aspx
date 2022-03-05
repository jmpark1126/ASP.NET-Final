<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Modification.aspx.cs" Inherits="Final.Modification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <h2>내 정보 변경</h2>
         <table border="1" style="border-collapse: collapse" >
         <tr>
             <td style="padding: 3px" class="auto-style2">사용할 아이디</td>
             <td style="padding: 3px">
                 <strong>
                 <asp:Label ID="Label3" runat="server"></asp:Label>
                 </strong>&nbsp; 
             </td>
         </tr>
         <tr>
             <td style="padding: 3px" class="auto-style2">비밀번호</td>
             <td style="padding: 3px">
             <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
            Display="None" ErrorMessage="[비밀번호] 필수입력"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td style="padding: 3px" class="auto-style2">비밀번호 재확인</td>
             <td style="padding: 3px">
             <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" 
            Display="None" ErrorMessage="[비밀번호 확인] 필수입력"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" 
            ControlToValidate="TextBox3" Display="None" ErrorMessage="비밀번호가 일치하지 않습니다">
            </asp:CompareValidator></td>
         </tr>
         <tr>
             <td style="padding: 3px" class="auto-style2">이름</td>
             <td style="padding: 3px">
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" 
            Display="None" ErrorMessage="[이름] 필수입력"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td style="padding: 3px" class="auto-style2">전화번호</td>
             <td style="padding: 3px">
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </td>
         </tr>
         </table><br />
         <asp:Button ID="Button6" runat="server" Text="정보 변경" OnClick="Button6_Click" />&nbsp; <asp:Button ID="Button7" runat="server" CausesValidation="False" Text="메인화면으로" OnClick="Button7_Click" />
         <br />
         <br />
         <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #CC0066"></asp:Label><br />
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        DisplayMode="List" ShowMessageBox="True" 
        ShowSummary="False" />
         <br />
    </div>
</asp:Content>
