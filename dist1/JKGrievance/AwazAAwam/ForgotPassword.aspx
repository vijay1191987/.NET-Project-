<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CitizenPortal.AwazAAwam.ForgotPassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .forgot-wrapper {
            background-color: #F0F8FF;
            width: 60%;
            height: 300px;
            border: 1px solid #1D88E8;
            padding-top: 20px;
            margin: 50px auto;
        }

        .forgot_hd {
            position: absolute;
            background-color: #1D88E8;
            color: #fff;
            font-size: 25px;
            padding: 10px;
            z-index: 1000;
            top: 24px;
            margin-left: 200px;
        }

        .box-body .form-control {
            background: none repeat scroll 0 0 #fff;
            border: 1px solid #cdcdcd !important;
            border-radius: 0;
            box-shadow: 0 0 0;
            color: #333;
            padding: 3px 5px !important;
            margin: 0 0 18px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="col-lg-12">

            <div class="forgot-wrapper box-container">
                <div class="forgot_hd">Reset Password</div>
                <div class="box-body box-body-open" style="margin-top: 20px;">
                    <div class="form-group" style="margin-bottom: 0 !important;">
                        <div class="col-md-4 ptop10">Department Login ID</div>
                        <div class="col-md-8">
                            <%--<input id="RegEmailid" class="form-control" placeholder="Type your registered email id" name="RegEmailid" type="text" autofocus="" maxlength="100" />--%>
                            <%--<asp:TextBox ID="txtLoginID" runat="server" CssClass="form-control" placeholder="Type your registered email id"></asp:TextBox>--%>
                            <asp:DropDownList ID="ddlDept" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <%--  <div class="col-md-4 ptop10">New Password</div>
                        <div class="col-md-8">
                            <input id="NewPwd" class="form-control" placeholder="Type your new password" name="NewPwd" type="text" autofocus="" maxlength="100" />
                        </div> --%>

                        <div class="col-md-4 ptop10">
                            <label class="form-label" for=""><b>Captcha Code <span style="color: red">*</span></b></label>
                            <img src="/Account/GetCaptcha" alt="verification code" />
                        </div>
                        <div class="col-xs-4 pright0">
                            <asp:TextBox MaxLength="6" ID="captcha" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-12 pright0 text-right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="SendMail" runat="server" ControlToValidate="captcha" ErrorMessage="Captcha Required" Display="Dynamic" ForeColor="red" SetFocusOnError="True" CssClass="m0 text-right alert2 alert-danger">
                            </asp:RequiredFieldValidator>
                        </div>

                        <%-- <div class="col-md-4 ptop10">Generate OTP</div>
                        <div class="col-md-6">
                            <input id="OTP" class="form-control" placeholder="" name="otpCode" type="text" autofocus="" />
                        </div>
                        <div class="col-md-2 pleft0"><button type="button" class="btn btn-default">Generate OTP</button></div>--%>
                        <div class="clearfix"></div>
                        <div class="col-md-5"></div>
                        <div class="col-md-7">
                            <%--<input type="submit" name="sendMail" value="Send Mail" id="sendMail" class="btn btn-primary" />--%>
                            <asp:Button ID="btnSendMail" runat="server" ValidationGroup="SendMail" Text="Send Mail" class="btn btn-primary" OnClick="btnSendMail_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-primary" OnClick="btnCancel_Click" />
                        </div>
                        <div class="text-center">
                            <asp:Label ID="lblmsg" runat="server" CssClass="alert2 alert-success"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>