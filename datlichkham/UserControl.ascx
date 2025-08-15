<asp:LinkButton ID="btnLogout" runat="server" Text="Đăng xuất"
    OnClientClick="return confirmLogout();" OnClick="btnLogout_Click" />
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl.ascx.cs" Inherits="datlichkham.UserControl" %>
<script type="text/javascript">
    function confirmLogout() {
        return confirm("Bạn có chắc chắn muốn đăng xuất?");
    }
</script>