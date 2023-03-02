<%@ Page Title="" Language="C#" MasterPageFile="~/LTGDashboard/master/Default.Master" AutoEventWireup="true" CodeBehind="DeptPendencyReport.aspx.cs" Inherits="CitizenPortal.LTGDashboard.DeptPendencyReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #DWPR th {
            text-align: center !important;
        }

        #DWPR td {
            text-align: center !important;
        }

            #DWPR td:nth-of-type(2) {
                text-align: left !important;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                            <h5 class="card-title high_performerhd">Department Age Wise Pendency Report
                     <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on
                                            <label id="DWPRDate"></label>
                         )
                     </span>
                            </h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:GridView ID="DWPR" runat="server" CssClass="table table-bordered" OnPreRender="DWPR_PreRender" ShowFooter="true"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>