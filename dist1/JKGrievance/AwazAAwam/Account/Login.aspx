<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CitizenPortal.AwazAAwam.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".help").addClass("dsplynone");
            $("#username").focus(function () {
                $(".help").addClass("dsplyblk");
            });
            $("#username").focusout(function () {
                $(".help").addClass("dsplynone");
                $(".help").removeClass("dsplyblk");
            });
            $("#userpwd").focus(function () {
                $(".help").addClass("dsplyblk");
            });
            $("#userpwd").focusout(function () {
                $(".help").addClass("dsplynone");
                $(".help").removeClass("dsplyblk");
            });
        });
    </script>
    <style type="text/css">
        .dsplynone {
            display: none;
        }

        .dsplyblk {
            display: block;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main_content" style="padding: 6em 0;">
        <div class="col-lg-10 col-lg-push-1">
            <div style="box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3); display: inline-block;">
                <div class="col-lg-6 pleft0 pright0">
                    <img src="/AwazAAwam/img/login_bg.jpg" class="img-responsive" />
                </div>
                <div class="col-lg-6 pleft0 pright0">
                    <div class="login_box">
                        <header>Department Login</header>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ptop20">
                            <div class="form-group">
                                <label class="mandatory">Username</label>
                                <%--<input type="text" class="form-control" placeholder="" id="username" />--%>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                <div class="help">At least 6 character</div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="form-group">
                                <label>Password <span>*</span></label>
                                <%--<input type="text" class="form-control" placeholder="" id="userpwd" />--%>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <div class="help">Use upper and lowercase lettes as well</div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center ptop15">
                            <div class="form-group">
                                <%--<a href="#" class="login_btn">Login</a>--%>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login_btn" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 ptop15"><a href="#" style="text-decoration: underline;">Forgot Password?</a></div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 ptop15"></div>
                        <div class="mtop20"></div>
                    </div>
                    <asp:HiddenField ID="hdnsaltkey" runat="server" />
                    <asp:HiddenField ID="hdrandomSeed" runat="server" />
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </section>
</asp:Content>