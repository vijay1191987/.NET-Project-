<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="CitizenPortal.AwazAAwam.controls.header" %>
<header>
    <div class="row tophead_bg">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <ul>
                        <li><a href="#skipnav" title="Skip Navigation" role="link">Skip to Navigation &nbsp;</a> | </li>
                        <li><a href="#content1" title="Skip/Go to Main Content" role="link">Skip to Main Content &nbsp;&nbsp;</a>|</li>
                        <li><a href="/AwazAAwam/ScreenReader.aspx" title="Screen Reader Access Guidelines" role="link">Screen Reader Access</a></li>
                        <li><a href="#" class="dcrsefnt" title="Decrease Font Size" onclick="SmallFont();" role="link">A-</a></li>
                        <li><a href="#" class="nrmlfnt" title="Default Font Size" onclick="ResetFont();" role="link">A</a></li>
                        <li><a href="#" class="incrsefnt" title="Increase Font Size" onclick="BigFont();" role="link">A+</a></li>
                        <li><a href="#" class="bgwhite" title="Change Background Color White" onclick="BgWhite();" role="link">A</a></li>
                        <li><a href="#" class="bgblack" title="Change Background Color Black" onclick="BgBlack();" role="link">A</a></li>
                    </ul>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row header_box">
        <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
            <img src="/AwazAAwam/img/jammu_kashmir_logo.png" class="img-responsive pleft5"  alt="" title=""  />
        </div>
        <div class="col-xs-12 col-sm-7 col-md-8 col-lg-8 text-center ptop10">
            <img src="/AwazAAwam/img/awaz_a_awam_logo.png" class="img-responsive" alt="" title="" style="margin: 0 auto;" />
        </div>
        <div class="col-xs-12 col-sm-3 col-md-2 col-lg-2 toploginbox" runat="server" id="dvLogIn">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <%-- <a href="/AwazAAwam/Account/Login.aspx" class="login_btn">LOGIN/REGISTER</a>--%>
            <asp:Button ID="btnLogIn" runat="server" CssClass="login_btn" Text="DEPARTMENT LOGIN" ToolTip="Go to Department Login" OnClick="btnLogIn_Click" />
            <br />
            <%--<a href="/AwazAAwam/ForgotPassword.aspx/" class="login_btn">Reset Password</a>--%>
            <%--<asp:LinkButton ID="lnkResetPwd" runat="server" Text="Reset Password" Visible="false" OnClick="lnkResetPwd_Click"></asp:LinkButton>--%>
            <br />
            <%--<asp:LinkButton ID="lnkDeptSummary" runat="server" Text="Department Summary" Visible="false" OnClick="lnkDeptSummary_Click"></asp:LinkButton>--%>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-lg-12 topnav_bg">
        <a name="skipnav"></a>
        <div class="container text-center topnavcontainer">
            <nav class="navbar navbar-static-top mbtm0">
                <div class="navbar-header">
                    <span class="menu_txtvsble">MENU</span>
                    <button type="button" name="Menu Bar" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!--<a class="navbar-brand" href="#"></a>-->
                </div>
                <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
                    <ul class="nav navbar-nav">
                        <li><a href="/AwazAAwam/Index.aspx" id="home" class="active" title="Home Page"  role="link">HOME</a>
                        </li>
                        <%--<li><a href="/AwazAAwam/AboutUs.aspx" id="about">ABOUT US </a>
                        </li>--%>

                        <%--<li><a href="/AwazAAwam/Faqs.aspx" id="faq">FAQ’S</a>
                        </li>--%>
                        <li><a href="/AwazAAwam/ImportantLinks.aspx" id="imptlinks" title="Important Links"  role="link">IMPORTANT LINKS</a>
                        </li>
                        <li><a href="/AwazAAwam/ContactUs.aspx" id="contactus" title="Contact Us"  role="link">CONTACT US</a>
                        </li>
                        <%--  <li><a href="/AwazAAwam/ContactUs.aspx" id="contactus">CONTACT US</a>
                        </li>--%>
                    </ul>
                    <%--  <b>Total Applications:</b>
                    <asp:Label ID="lblTotalApplications" runat="server"></asp:Label>
                    <b>Open Applications:</b>
                    <asp:Label ID="lblOpenApplications" runat="server"></asp:Label>
                    <b>Close  Applications:</b>
                    <asp:Label ID="lblCloseApplications" runat="server"></asp:Label>--%>
                </div>
                <!--/.nav-collapse -->
            </nav>
        </div>
    </div>
</header>