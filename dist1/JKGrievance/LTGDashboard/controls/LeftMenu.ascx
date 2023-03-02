<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenu.ascx.cs" Inherits="CitizenPortal.LTGDashboard.controls.LeftMenu" %>
<!--Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"-->
<div class="sidebar myleft_sidebar" data-color="blue">
    <div class="logo">
        <%--<a href="#" class="simple-text logo-mini">Lt.Governor’s Grievance Cell</a>--%>
        <a href="#" class="simple-text logo-normal"><span class="usericon_holder"><i class="far fa-user pright5 myuser_icon" id="restusericon" runat="server"></i>
            <img src="/LTGDashboard/img/lg_photo.png" id="lgpic" runat="server" /></span>Welcome
             <asp:Label ID="lblUserName" runat="server"></asp:Label>
        </a>
    </div>
    <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
            <li id="menu1" runat="server">
                <a href="/LTGDashboard/Dashboard.aspx">
                    <p>Dashboard</p>
                </a>
            </li>
            <li id="menu3" runat="server">
                <a href="/LTGDashboard/DeptAgePendencyReport.aspx">
                    <p>Department Age Pendency Report</p>
                </a>
            </li>
            <li id="menu5" runat="server">
                <a href="/LTGDashboard/DistrictAgePendencyReport.aspx">
                    <p>District Age Pendency Report</p>
                </a>
            </li>
            <li id="menu2">
                <a href="/LTGDashboard/DeptGrievanceList.aspx">
                    <p>Department Pendency Report</p>
                </a>
            </li>
            <li id="menu4" runat="server">
                <a href="/LTGDashboard/DistrictPendencyReport.aspx">
                    <p>District Pendency Report</p>
                </a>
            </li>

            <li id="menu6" class="active-pro">
                <asp:LinkButton ID="btnLogOut" Text="Logout" runat="server" OnClick="btnLogOut_Click"></asp:LinkButton>
            </li>
        </ul>
    </div>
</div>