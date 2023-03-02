<%@ Page Title="" Language="C#" MasterPageFile="~/LTGDashboard/master/Default.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CitizenPortal.LTGDashboard.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/LTGDashboard/js/highcharts.js"></script>
    <script src="/LTGDashboard/js/exporting.js"></script>
    <script src="/LTGDashboard/js/export-data.js"></script>
    <script src="/LTGDashboard/js/accessibility.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#menu1").addClass("active");
        });
    </script>

    <link href="/LTGDashboard/css/highcharts.css" rel="stylesheet" />
    <style type="text/css">
        #TP6PD th {
            background-color: #f9f9f9;
            text-align: center !important;
            border: 1px solid #ddd;
        }

        #TP6PD td {
            text-align: center !important;
        }

            #TP6PD td:nth-of-type(2) {
                text-align: left !important;
            }

        #BT6PD th {
            background-color: #f9f9f9;
            text-align: center !important;
            border: 1px solid #ddd;
        }

        #BT6PD td {
            text-align: center !important;
        }

            #BT6PD td:nth-of-type(2) {
                text-align: left !important;
            }

        #TP5PD th {
            background-color: #f9f9f9;
            text-align: center !important;
            border: 1px solid #ddd;
        }

        #TP5PD td {
            text-align: center !important;
        }

            #TP5PD td:nth-of-type(2) {
                text-align: left !important;
            }

        #BT5PD th {
            background-color: #f9f9f9;
            text-align: center !important;
            border: 1px solid #ddd;
        }

        #BT5PD td {
            text-align: center !important;
        }

            #BT5PD td:nth-of-type(2) {
                text-align: left !important;
            }

        .highcharts-contextmenu ul li:last-child {
            display: none;
        }
        .highcharts-figure, .highcharts-data-table table {
    min-width: 320px; 
    max-width: 660px;
    margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
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
                <a class="navbar-brand" href="#">WELCOME TO DASHBOARD</a>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->

    <div class="panel-header panel-header-lg">
        <div class="container-fluid">
            <div class="content">
                <div class="row">
                    <div class="col-12 col-sm">
                        <div class="service_countholder ttle_grevnc">
                            <span class="service_nme">Total<br />
                                Grievances</span><span class="service_count">
                                    <label id="lblTotalGrievance" runat="server"></label>
                                </span>
                        </div>
                    </div>
                    <div class="col-12 col-sm">
                        <div class="service_countholder grevnc_dspsd">
                            <span class="service_nme">Grievances<br />
                                Disposed</span><span class="service_count">
                                    <label id="lblGrievanceDisposed" runat="server"></label>
                                </span>
                        </div>
                    </div>
                    <div class="col-12 col-sm">
                        <div class="service_countholder grevnc_rjctd">
                            <span class="service_nme">Grievances<br />
                                Reverted</span><span class="service_count">
                                    <label id="lblGrievanceRejected" runat="server"></label>
                                </span>
                        </div>
                    </div>
                    <div class="col-12 col-sm">
                        <div class="service_countholder grevnc_impsed">
                            <span class="service_nme">Grievances Inprocess<br />
                                with Departments</span><span class="service_count">
                                    <label id="lblGrievanceInProcess" runat="server"></label>
                                </span>
                        </div>
                    </div>
                    <div class="col-12 col-sm">
                        <div class="service_countholder dspsd_prntge">
                            <span class="service_nme">Disposal<br />
                                Percentage</span><span class="service_count">
                                    <label id="lblGrievancePercentage" runat="server"></label>
                                </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="content">
            <div class="row ptop20">
                <div class="col-12 col-sm-12">
                    <h3>Top/Bottom Performers (Departments)</h3>
                </div>
                <div class="col-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title high_performerhd">Top 6 Performing Departments
                                <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on
                                    <label id="TP6PDDate"></label>
                                    )</span>
                            </h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:GridView ID="TP6PD" runat="server" CssClass="table table-bordered" OnPreRender="TP6PD_PreRender" ShowFooter="true"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div id="T6PDPieChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title low_performerhd">Bottom 6 Performing Departments
                                 <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on
                                     <label id="BT6PDDate"></label>
                                     )</span>
                            </h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:GridView ID="BT6PD" runat="server" CssClass="table table-bordered" OnPreRender="BT6PD_PreRender" ShowFooter="true"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div id="B6PDPieChart"></div>
                        </div>
                    </div>
                </div>
                <div id="Not4As" runat="server" class="col-12 col-sm-12">
                    <div class="col-12 col-sm-12">
                        <div class="card" style="background-color: #797f84 !important; color: #fff !important; border: 2px dotted;">
                            <div class="card-header">
                                <h5 class="mbtm5 mtop5">Note:</h5>
                                <p>a) The performances stands evaluated only in respect of the departments with total grievances >100.</p>
                                <p>b) Percentage pendency has been fixed as the criteria for the purpose.</p>
                                <p>c) The Department includes Administrative and Line Departments as well.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <h3>Top/Bottom Performers (Districts)</h3>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title high_performerhd">Top 6 Performing Districts
                                 <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on
                                     <label id="TP5PDDate"></label>
                                     )</span>
                                </h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="TP5PD" runat="server" CssClass="table table-bordered" OnPreRender="TP5PD_PreRender" ShowFooter="true"></asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-122">
                        <div class="card">
                            <div class="card-body">
                                <div id="T5PDPieChart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title low_performerhd">Bottom 6 Performing Districts
                                 <span class="pull-right datewise_data"><i class="far fa-calendar-alt pright10"></i>(As on
                                     <label id="BT5PDDate"></label>
                                     )</span>
                                </h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="BT5PD" runat="server" CssClass="table table-bordered" OnPreRender="BT5PD_PreRender" ShowFooter="true"></asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div id="B5PDPieChart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title high_performerhd">Month Wise Grievances Received</h5>
                            </div>
                            <div class="card-body" id="ChartYearReport"></div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title high_performerhd">Year Wise Grievances </h5>
                            </div>
                            <div class="card-body" id="ChartReport"></div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div id="OGRPieChart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title high_performerhd">Overall Grievances Received</h5>
                            </div>
                            <div class="card-body" id="OverAllChartReport"></div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div id="OGRDPieChart" style="height: 550px !important"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>