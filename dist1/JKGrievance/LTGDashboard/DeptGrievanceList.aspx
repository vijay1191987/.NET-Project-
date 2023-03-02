<%@ Page Title="" Language="C#" MasterPageFile="~/LTGDashboard/master/Default.Master" AutoEventWireup="true" CodeBehind="DeptGrievanceList.aspx.cs" Inherits="CitizenPortal.LTGDashboard.DeptGrievanceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/Scripts/jquery.msgBox.js" type="text/javascript"></script>
    <link href="/PortalStyles/msgBoxLight.css" type="text/css" rel="stylesheet" />
    <link href="/PortalStyles/jquery-ui.min.css" type="text/css" rel="stylesheet" />
    <script src="/Scripts/jquery-ui-1.11.4.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#menu1").removeClass("active");
            $("#menu2").addClass("active");

            $('#txtFromDate').datepicker({
                dateFormat: "dd/mm/yy",
                changeMonth: true,
                changeYear: true,
                yearRange: "-150:+0",
                maxDate: '0',

            });

            $('#txtToDate').datepicker({
                dateFormat: "dd/mm/yy",
                changeMonth: true,
                changeYear: true,
                yearRange: "-150:+0",
                maxDate: '0',
            });

        });
    </script>
    <style type="text/css">
        #DWGL th {
            text-align: center !important;
        }

        #DWGL td {
            text-align: center !important;
        }

            #DWGL td:nth-of-type(2) {
                text-align: left !important;
            }

            #DWGL td:nth-of-type(3) {
                text-align: left !important;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ClientIDMode="Static">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
            <div class="navbar-wrapper">
                <div class="navbar-toggle">
                    <button type="button" class="navbar-toggler">
                        <span class="navbar-toggler-bar bar1"></span>
                        <span class="navbar-toggler-bar bar2"></span>
                        <span class="navbar-toggler-bar bar3"></span>
                    </button>
                </div>
                <%--<a class="navbar-brand" href="#">WELCOME TO DASHBOARD</a>--%>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->

    <div class="container-fluid">
        <div class="content">
            <div class="row ptop30">

                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title high_performerhd">Department User Wise Grievance Report
                                <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on
                                    <label id="DWGLDate"></label>
                                    )</span>
                            </h5>
                        </div>
                        <div class="col-12">
                        <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                            <div class="form-group">
                                <label class="manadatory" for="txtFromDate">From Date</label>
                                <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY" ToolTip="Choose From Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                            <div class="form-group">
                                <label class="manadatory" for="txtToDate">To Date</label>
                                <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY" ToolTip="Choose To Date"></asp:TextBox>
                            </div>
                        </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-2">
                <div class="form-group">
                    <label class="" for="">
                    </label>
                    <asp:Button ID="btnSubmit" runat="server" CausesValidation="False" CssClass="btn btn-success mtop23 mt-4" Text="Submit" OnClick="btnSubmit_Click"  ToolTip="Submit" />                    
                </div>
            </div>
                            </div>
                            </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:GridView ID="DWGL" runat="server" CssClass="table table-bordered" OnPreRender="DWGL_PreRender" ShowFooter="true"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
