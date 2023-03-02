<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="ChangePasswordDept.aspx.cs" Inherits="CitizenPortal.AwazAAwam.ChangePasswordDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <script src="ChangePassword.js"></script>--%>
    <script src="js/SHA256.js"></script>
    <style>
        .changepwdWrapper {
            /*background-color: #F0F8FF;
            border: 1px solid #1D88E8;
            padding-top: 20px;
            margin: 50px auto;*/
            background-color: #E3E6ED;
            /*opacity:0.7;*/
            margin: 20px auto 10px auto;
            width: 400px;
            padding: 1px 0 0 0;
            border-radius: 10px;
        }

        .changepwdinnerHldr {
            margin: 0 auto;
            width: 32%;
            padding: 1px 0 0 0;
            border-radius: 10px;
        }

        .box-container {
            margin-bottom: 15px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .forgot_hd {
            position: absolute;
            background-color: #1D88E8;
            color: #fff;
            font-size: 25px;
            padding: 10px;
            z-index: 1000;
            top: 255px;
            margin-left: 200px;
        }

        .alert2 {
            padding: 5px;
            /*margin-bottom: 20px;*/
            border: 1px solid transparent;
            border-radius: 4px;
            font-size: 12px;
        }

        .m0 {
            margin: 0 !important;
        }

        .changePwd-Hd {
            background-color: #337ab7;
            margin: 0 auto;
            text-align: center;
            width: 610px;
            padding: 5px 35px;
            border-radius: 10px;
        }

            .changePwd-Hd h4 {
                color: #fff;
                font-size: 25px;
            }

        .box-container1 > .box-heading {
            background-color: #37495f;
            border: 1px solid #37495f;
            border-radius: 3px 3px 0 0;
            color: #fff;
            font-size: 1.4em;
            margin: 0;
            padding: 2px 15px;
        }

        .box-container1 > .box-body {
            background-color: rgba(252, 252, 252, 0.89) !important;
        }

        .box-container1 > .box-body-open {
            border: 1px solid #dddddd;
            border-radius: 3px;
        }

        .mbtm20 {
            margin-bottom: 20px !important;
        }

        .mbtm50 {
            margin-bottom: 50px !important;
        }

        .btnChngePwd {
            min-height: 40px !important;
        }

        .z-depth-4 {
            box-shadow: 0 16px 28px 0 rgba(0,0,0,0.22), 0 25px 55px 0 rgba(0,0,0,0.21);
        }
    </style>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#ddlDept").bind("change", function (e) { $("#lblUserID").text($("#ddlDept").val()); });
        });



        function submitForm() {
            //var vsalt = $('#HDNSaltKey').val();
            var strhiden = sha256_digest(salt);
            var pwd1 = $('#txtcurrentpass').val();
            var pwd1 = pwd1;
            pwd1 = sha256_digest(pwd1);

            var newpasspwd = $("#txtnewpass").val();
            var cnfnewpasspwd = $("#txtconfirmpass").val();
            newpasspwd = sha256_digest(newpasspwd);//sha256_digest(newpasspwd + strhiden);
            cnfnewpasspwd = sha256_digest(cnfnewpasspwd);

            var encipt1 = sha256_digest(pwd1.toLowerCase() + strhiden.toLowerCase());
            $('#txtcurrentpass').val(encipt1);
            $("#txtnewpass").val(newpasspwd);
            $("#txtconfirmpass").val(cnfnewpasspwd);
        }
    </script>

    <script type="text/javascript">
        var salt = '<%= Session["SaltKey"] == null ? "" : Session["SaltKey"].ToString() %>';
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ClientIDMode="Static">
    <div class="row">
        <div class="col-lg-12 mtop10">
            <div class="changepwdWrapper box-container1 z-depth-4">
                <div class="box-heading">
                    <h4 class="box-title"><i class="fa fa-keyboard-o"></i>Change Password</h4>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mtop10 ">
                    <div class="form-group mbtm50">
                        <label class="form-label" for=""><b>District<span style="color: red">*</span></b></label>
                        <div class="col-xs-12 pright0 pleft0">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <%-- <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>--%>
                                <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" ></asp:DropDownList>
                            </div>
                            <%--<asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="*Please Enter User Name!" Display="Dynamic" ForeColor="red" SetFocusOnError="True" CssClass="m0 alert2 alert-danger">
                            </asp:RequiredFieldValidator>--%>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Minimum 6 characters, atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" Display="Dynamic" SetFocusOnError="True" ForeColor="#a94442" CssClass="m0 col-xs-12 mtop10 alert2 alert-danger"></asp:RegularExpressionValidator>--%>
                        </div>
                    </div>
                    <div class="form-group mbtm50">
                        <label class="form-label" for=""><b>User Name <span style="color: red">*</span></b></label>
                        <div class="col-xs-12 pright0 pleft0">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <%-- <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>--%>
                                <asp:DropDownList ID="ddlDept" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <%--<asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="*Please Enter User Name!" Display="Dynamic" ForeColor="red" SetFocusOnError="True" CssClass="m0 alert2 alert-danger">
                            </asp:RequiredFieldValidator>--%>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Minimum 6 characters, atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" Display="Dynamic" SetFocusOnError="True" ForeColor="#a94442" CssClass="m0 col-xs-12 mtop10 alert2 alert-danger"></asp:RegularExpressionValidator>--%>
                        </div>
                    </div>
                    <div>                        
                        <label class="form-label" for=""><b>User ID : </b></label>
                        <u><asp:Label ID="lblUserID" runat="server"></asp:Label></u>
                    </div>
                    <div class="form-group mbtm50" style="display: none;">
                        <label class="form-label" for=""><b>Current Password <span style="color: red">*</span></b></label>
                        <div class="col-xs-12 pright0 pleft0">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-eye fa-1x"></i>
                                </div>
                                <asp:TextBox ID="txtcurrentpass" runat="server" TextMode="Password" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="rfvtxtcurrentpass" runat="server" ControlToValidate="txtcurrentpass" ErrorMessage="*Please Enter Your Current Password!" Display="Dynamic" ForeColor="red" SetFocusOnError="True" CssClass="m0 alert2 alert-danger"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group mbtm50">
                        <label class="form-label" for=""><b>New Password <span style="color: red">*</span></b></label>
                        <div class="col-xs-12 pright0 pleft0">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-eye fa-1x"></i>
                                </div>
                                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="rfvtxtnewpass" runat="server" ControlToValidate="txtnewpass" ErrorMessage="*Please Enter New Password!" Display="Dynamic" ForeColor="red" SetFocusOnError="True" CssClass="m0 alert2 alert-danger">
                            </asp:RequiredFieldValidator>
                            <%--<asp:RegularExpressionValidator ID="Regex5" runat="server" ControlToValidate="txtnewpass" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,}" ErrorMessage="Minimum 6 characters, atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" Display="Dynamic" SetFocusOnError="True" ForeColor="#a94442" CssClass="m0 col-xs-12 mtop10 alert2 alert-danger"></asp:RegularExpressionValidator>--%>
                        </div>
                    </div>
                    <div class="form-group mbtm50">
                        <label class="form-label" for=""><b>Confirm Password <span style="color: red">*</span></b></label>
                        <div class="col-xs-12 pright0 pleft0">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-eye fa-1x"></i>
                                </div>
                                <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="rfvtxtconfirmpass" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="*Please Confirm Your Password!" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" CssClass="m0 alert2 alert-danger"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmtxtconfirmpass" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" ErrorMessage="Password Isn't Same." Display="Dynamic" ForeColor="#a94442" CssClass="m0 col-xs-11 mtop10 alert2 alert-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="form-group mbtm50">
                        <div class="col-xs-12 pleft0 pright0 ptop10">
                            <div class="col-xs-8 pleft0">
                                <label class="form-label" for=""><b>Captcha Code <span style="color: red">*</span></b></label>
                                <img src="/Account/GetCaptcha" alt="verification code" />
                            </div>
                            <div class="col-xs-4 pright0">
                                <asp:TextBox MaxLength="6" ID="captcha" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-xs-12 pright0 text-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="captcha" ErrorMessage="Captcha Required" Display="Dynamic" ForeColor="red" SetFocusOnError="True" CssClass="m0 text-right alert2 alert-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 pright0 pleft0 mtop15 mbtm20">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Button ID="btnchangepass" runat="server" Text="Change Password" OnClick="btnchangepass_Click" CssClass="btn btn-primary col-md-12 pright0 btnChngePwd" OnClientClick="javascript: return submitForm()" />
                            </div>
                            <div class="col-sm-6">
                                <asp:Button ID="btnBack" CausesValidation="false" runat="server" Text="Back" OnClick="btnBack_Click" CssClass="btn btn-primary col-md-12 pright0 btnChngePwd" />
                            </div>
                        </div>

                        <div class="text-center">
                            <asp:Label ID="lblmsg" runat="server" CssClass="alert2 alert-success"></asp:Label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix">
                    <asp:HiddenField ID="HdnField" runat="server" />
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
