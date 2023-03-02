<%@ Page Title="" Language="C#" MasterPageFile="~/LTGDashboard/master/Default.Master" AutoEventWireup="true" CodeBehind="DeptAgePendencyReport.aspx.cs" Inherits="CitizenPortal.LTGDashboard.DeptAgePendencyReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#menu1").removeClass("active");
            $("#menu2").removeClass("active");
            $("#menu3").addClass("active");
        });
    </script>
    <style type="text/css">
        #DAPR th {
            text-align: center !important;
        }

        #DAPR td {
            text-align: center !important;
        }

            #DAPR td:nth-of-type(2) {
                text-align: left !important;
            }

            #DAPR td:nth-of-type(3) {
                text-align: left !important;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <h5 class="card-title high_performerhd">Department Wise Grievance Pendency List<br />
                                (Based on Age of the Grievance)
                            <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on <label id="DAPRDate"></label>)</span>
                            </h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:GridView ID="DAPR" runat="server" CssClass="table table-bordered" OnPreRender="DAPR_PreRender" OnRowDataBound="DAPR_RowDataBound" ShowFooter="true"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>