<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff_activateaccount.aspx.cs" Inherits="LoginRegisterActiveAccount.staff.staff_activeaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/staff/staff_login.aspx">Login</asp:HyperLink> 
      
        </div>
    </form>
</body>
</html>
