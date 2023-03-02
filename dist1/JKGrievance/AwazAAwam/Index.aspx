<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CitizenPortal.AwazAAwam.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--<title>Awaz-A-Awam Online Public Grievance System</title>--%>
    <title>Jammu and Kashmir Government Grievance Cell</title>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/AwazAAwam/js/jquery-2.2.3.min.js" type="text/javascript"></script>
    <script src="/AwazAAwam/js/fontResize.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <link href="/AwazAAwam/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/AwazAAwam/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="/AwazAAwam/css/homepage.css" type="text/css" rel="stylesheet" />
    <link href="/AwazAAwam/css/ie10-viewport-bug-workaround.css" type="text/css" rel="stylesheet" />
    <script src="js/highcharts.js"></script>
    <script src="js/exporting.js"></script>
    <script src="js/jqueryDataTableButtons-1.2.4.js"></script>
    <link href="css/HighCharts.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	  <script src="/AwazAAwam/js/html5shiv.min.js" type="text/javascript"></script>
	  <script src="/AwazAAwam/js/respond.min.js" type="text/javascript"></script>
	<![endif]-->
    <%--<style type="text/css">
		marquee ul li {
			list-style: none;
			display: inline-block;
			width: 100%;
		}
	</style>--%>

    <style type="text/css">
        .chartHD { /*text-shadow: 0 2px 2px #ccc, 0 2px 2px #ccc;*/
            font-size: 20px;
        }

        .oisfHD {
            width: 100%;
            background-color: #0D47A1;
            color: #fff;
            font-size: 22px;
            /* margin-bottom: 20px; */
            padding: 10px 10px;
        }

        .chartHoldBox {
            margin: 15px 5px;
            -webkit-box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.2);
            -moz-box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.2);
            box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.2);
            margin: 0 0 15px 0;
        }

        .headingChart {
            background-color: #64B5F6;
            color: #fff;
            font-size: 16px;
            width: 100%;
            padding: 10px;
            margin: 15px 0 0 0;
        }

        /*#DrilDownChart,*/ #BarChart, #BarChartNew, #BarChartOld, #DistrictWiseChart, #DateWiseChart, #CenterWiseChart, #PieChart, #QualifiedTestChart, #SCQWrittenChart,
        #STQWrittenChart, #SEBCQWrittenChart, #URQWrittenChart, #EventReportChart, #CompleteChart, #INCompleteChart, #OUATAppCountChart, #OUATDistAppCountChart,
        #OUATPaymentCountChart, #OUATPaymentCount2Chart, #OUATDateCountChart, #OUATDateCount2Chart, #OUATExamCenter2Chart, #OUATExamCenter2Chart, #DisplayGrid,
        #OUATDistAgroCountChart, #PGApplicationChart, #OUATPGPaidAppChart, #OUATPGTotalPaidAppChart, #OUATPGDateChart {
            border: 1px solid #64B5F6;
            width: 100%;
        }

        #LoadingDiv {
            position: absolute;
            width: 100%;
            height: 100%;
            background-color: #000;
            right: 0;
            z-index: 1000;
        }

        #load {
            width: 100%;
            height: 100%;
            position: fixed;
            font-size: 20px;
            padding-top: 420px;
            top: 5px;
            text-align: center;
            color: #fff;
            z-index: 9999;
            background: url("/g2c/img/loading.gif") no-repeat;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-color: rgba(0,0,0,0.5);
        }

        /*tfoot > button, input, select, textarea {
			height: 25px;
			font-weight: bolder;
			color: #000000;
		}*/

        .service_count label {
            font-size: 35px;
            color: #fff;
        }
    </style>

    <script type="text/javascript">

        //function GetFisheriesDepartment() {
        //    $.ajax({
        //        type: "POST",
        //        contentType: "application/json; charset=utf-8",
        //        url: "/AwazAAwam/Index.aspx/GetChartData",
        //        data: "{}",
        //        dataType: "json",
        //        success: function (Result) {
        //            Result = Result.d;
        //            var data = [];
        //            for (var i in Result) {
        //                var serie = new Array(Result[i].DeptName, Result[i].DeptCount);
        //                data.push(serie);
        //            }
        //            SCQualifiedWrittenChart(data);
        //        },
        //        error: function (xhr, status, error) {
        //            alert(xhr.responseText);
        //        }
        //    });
        //}

        function SCQualifiedWrittenChart(series) {
            $('#SCQWrittenChart').highcharts({
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: 1,
                    plotShadow: false

                },

                title: {
                    text: null,
                },

                tooltip: {
                    pointFormat: 'Count: <b>{point.y:.f}</b>'
                },

                xAxis: {
                    type: 'category',
                    //min: '0.8',
                    //max: '95.9',
                    labels: {
                        style: {
                            fontSize: '10px',
                            fontFamily: 'Verdana, sans-serif',
                        }
                    }
                },
                series: [{
                    // pointPadding: '0.4',
                    // groupPadding: '2.5',
                    type: 'column',
                    colorByPoint: true,
                    name: 'Total Disposed/Pending Grievance Count',
                    data: series,
                    dataLabels: {
                        enabled: true,
                        format: '{point.y:.f}',
                        y: 5,
                        style: {
                            fontSize: '10px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                }]
            });
        }

        $(document).ready(function () {

            $("#txtFeedback").bind("keyup", function () {
                if ($(this).val().length == 0) {
                    $("#lblCount").html("Maximum 2000 words.").attr("style", "color:red;");
                }
                else if (($(this).val().length >= 0) && ($(this).val().length <= 1999)) {
                    $("#lblCount").html("Remaning " + (2000 - parseInt($(this).val().length)) + " words.").attr("style", "color:red;");
                }
                else if ($(this).val().length >= 2000) {
                    $("#lblCount").html("Remaning " + (2000 - parseInt($(this).val().length)) + " words.").attr("style", "color:red;");
                    alert("Max limit(2000) has done.");

                }
            });

            // OpenModal1();
            GetFisheriesDepartment();

            $('#dvTraker').hide();

            $("#decreasetxt").click(function (event) {
                event.preventDefault();
                $("#bodytxt").animate({ "font-size": "11px" });

            });

            $("#normaltxt").click(function (event) {
                event.preventDefault();
                $("#bodytxt").animate({ "font-size": "14px" });

            });

            $("#increasetxt").click(function (event) {
                event.preventDefault();
                $("#bodytxt").animate({ "font-size": "16px" });

            });

            $("a").click(function () {
                $("a").removeClass("selected");
                $(this).addClass("selected");

            });

        });

        function GetData() {
            var Str = "";
            var SrNo = "";

            //var value = '@Request.RequestContext.HttpContext.Session["LoginCaptchaTest"]';

            Str = "<table style='width:100%;background-color:#fff;' class='table table-striped table-bordered' id='tblSuspect' >";
            Str = Str + "<tr >";
            Str = Str + "<th style='text-align: center;'>SNo.</th>";
            Str = Str + "<th style='text-align: center;'>Submitted By</th>";
            //Str = Str + "<th style='text-align: center;'>Recommendation</th>";
            Str = Str + "<th style='text-align: center;'>Remarks</th>";
            Str = Str + "<th style='text-align: center;'>Submitted On</th>";
            Str = Str + "</tr>";

            var GNo = $('#txtGrievanceNo').val();
            var MNo = $('#txtMobileNo').val();
            var Captcha = $('#txtCaptcha').val();

            if (GNo == null || GNo == '') {
                alert('Please Enter Grievance Number.');
                return false;
            }
            if (MNo == null || MNo == '') {
                alert('Please Enter Mobile Number.');
                return false;
            }
            if (Captcha == null || Captcha == '') {
                alert('Please Enter Captcha.')
                return false;
            }

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: '/AwazAAwam/Index.aspx/data',
                data: '{"txtGrievanceNo":"' + $('#txtGrievanceNo').val() + '","txtMobileNo":"' + $('#txtMobileNo').val() + '","txtCaptcha":"' + $('#txtCaptcha').val() + '"}',
                processData: false,
                dataType: "json",
                success: function (response) {
                    var D = JSON.parse(response.d);
                    var CaptchaResult = D["intStatus"];
                    if (CaptchaResult == "3") {
                        alert('Incorrect Captcha Code. Please Re-Enter Captcha Code!');
                        d = new Date();
                        $("#myimg").attr("src", "/Account/GetCaptcha?" + d.getTime());
                        return false;
                    }
                    var Data = D["obj"];
                    var data = D["dtAction"];
                    var Refid = Data[0].ReferenceId;
                    var GrievanceType = Data[0].GrievanceType;
                    var ApplicantName = Data[0].ApplicantName;
                    var ApplicationDate = Data[0].ApplicationDate;
                    var CurrentStatus = Data[0].CurrentStatus;
                    var DeptRemarks = Data[0].DeptRemarks

                    for (var i = 0; i < data.length; i++) {
                        //$("#DivGridView").append(

                        Str = Str + "<tr>";
                        var sno = i + 1;
                        Str = Str + "<td style='' >" + sno.toString() + "." + "</td>";
                        Str = Str + "<td style='' >" + data[i].CreatedBy + "</td>";
                        //Str = Str + "<td style='' >" + data[i].Recommendation + "</td>";
                        Str = Str + "<td style='' >" + data[i].Remarks + "</td>";
                        Str = Str + "<td style='' >" + data[i].CreatedOn + "</td>";
                        Str = Str + "</tr>";//);
                        //
                    }
                    Str = Str + "</table>";

                    document.getElementById('DivActionHistory').innerHTML = Str;

                    d = new Date();
                    $("#myimg").attr("src", "/Account/GetCaptcha?" + d.getTime());

                    if (Refid != null && Refid != '') {
                        if (CurrentStatus == "Grievance Disposed") {
                            //$("#txtGrievanceNo").prop('disabled', true);
                            //$("#txtMobileNo").prop('disabled', false);

                            $("#txtGrievanceNo").prop('disabled', true);
                            $("#txtMobileNo").prop('disabled', true);
                            $("#txtCaptcha").prop('disabled', true);

                            $('#dvFeedback').show();
                            $('#dvText').hide();
                            $("#rdbNo").change(function () {
                                $('#dvText').show();
                                $("#txtFeedback").show();
                            });
                            $("#rdbYes").change(function () {
                                $("#txtFeedback").hide();
                                $('#dvText').hide();
                                $("#txtFeedback").val("");
                            });
                        }
                        else {
                            $('#dvFeedback').hide();
                        }

                        $('#dvTraker').show();
                        $('#lblReferenceID').text(Refid);
                        $('#lblGrievanceType').text(GrievanceType);
                        $('#lblApplicantName').text(ApplicantName);
                        $('#lblApplicationDate').text(ApplicationDate);
                        $('#lblCurrentStatus').text(CurrentStatus);
                        //$('#lblDeptRemarks').text(DeptRemarks);
                        if (Data[0].Path != null && Data[0].Path != '') {
                            var href = ' <a id="link1" target="_blank" class="login_btn" href="' + Data[0].Path + '">View Document</a>';
                            $('#link').html(href);
                            //$('#link').attr('href', Data[0].Path);
                            $('#AttachmentDiv').show();
                        }
                        else {
                            $('#AttachmentDiv').hide();
                        }
                    }
                    else {
                        alert('Invalid Details!');
                        $('#dvTraker').hide();
                    }
                },

                error: function (a, b, c) {
                    $("#progressbar").hide();
                    $("#btnSubmit").prop('disabled', false);
                    result = false;
                    alertPopup("Could Not Save the Application, Please try again.", "5. " + a.responseText);
                }
            });
        }

        function ViewAck() {
            var t_AppID = $('#lblReferenceID').text();
            var t_URL = "/WebApp/Kiosk/Grievance/Acknowledgment.aspx";
            t_URL = t_URL + "?AppID=" + t_AppID + "&SvcID=701&TG=Y";
            window.open(t_URL, 'ViewDoc', 'height=' + screen.height + ',width=' + screen.width + ',titlebar=no,menubar=no,status=yes,toolbar=no,scrollbars=yes,resizable=yes');
            return false;
        }

        function SaveFeedback() {

            //$("[id*=btnSaveFeedback]").bind("click", function () {
            var user = {};
            user.userFeedback = $("[id*=txtFeedback]").val();

            if (user.userFeedback == null || user.userFeedback == '' && $('input[name="Feedback"]:checked').val() == "No") {
                alert('Enter Your Feedback.')
            }
            else {
                $.ajax({
                    type: "POST",
                    url: '/AwazAAwam/Index.aspx/SaveUserFeedback',
                    data: '{"userFeedback":"' + $('#txtFeedback').val() + '","RefID":"' + $('#lblReferenceID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        alert("Thanks for your feedback.");
                        setTimeout(function () { $('#btnSaveFeedback').attr('disabled', 'disabled'); }, 3000);
                        window.location.reload();
                    },
                    error: function (error) {
                        setTimeout(function () { $('#btnSaveFeedback').removeAttr("disabled"); }, 3000);
                        alert(error.responseText);
                    }
                });
            }
            return false;
        }

        function Reset() {

            $('#txtGrievanceNo').val('');
            $('#txtMobileNo').val('');
            $('#txtCaptcha').val('');
            $("#txtGrievanceNo").prop('disabled', false);
            $("#txtMobileNo").prop('disabled', false);
            $("#txtCaptcha").prop('disabled', false);
            $('#dvTraker').hide();

        }
        //$("input[type='radio']").change(function () {
        //    if ($(this).val() == "other") {
        //        $("#otherAnswer").show();
        //    }
        //    else {
        //        $("#otherAnswer").hide();
        //    }

        //});

        function OpenModal1() {
            $('#costumModal41').modal('show');
        }
        function OpenModal() {
            $('#dvTraker').hide();
            $('#costumModal4').modal('show');

            $('#txtGrievanceNo').val('');
            $('#txtMobileNo').val('');
            $('#txtFeedback').val('');
            $("#txtGrievanceNo").prop('disabled', false);
            $("#txtMobileNo").prop('disabled', false);
        }

        function validate(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /[0-9]|\./;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault) theEvent.preventDefault();
            }
        }
    </script>

    <%--<style>
		 .ttle_grevnc {
	  width: 100px;
	  height: 55px;
	  background: red;
	  position: relative;
	}
	.ttle_grevnc:before {
	  content: "";
	  position: absolute;
	  top: -25px;
	  left: 0;
	  width: 0;
	  height: 0;
	  border-left: 50px solid transparent;
	  border-right: 50px solid transparent;
	  border-bottom: 25px solid red;
	}
	.ttle_grevnc:after {
	  content: "";
	  position: absolute;
	  bottom: -25px;
	  left: 0;
	  width: 0;
	  height: 0;
	  border-left: 50px solid transparent;
	  border-right: 50px solid transparent;
	  border-top: 25px solid red;
	}
	</style>--%>

    <style type="text/css">
        html1 {
            font-size: 10px;
        }

        .smaller {
            font-size: 0.5rem;
        }
    </style>
</head>
<body id="bodytxt">
    <form id="form1" runat="server">

        <div id="costumModal41" class="modal" data-easein="flipBounceXIn" tabindex="-1" role="dialog" aria-labelledby="costumModalLabel" aria-hidden="true">
            <div class="col-lg-12 chartHoldBox">
                <div class="headingChart">
                    <i class="fa fa-bar-chart "></i>Total Disposed/Pending Grievance Count(Upper Count is for Disposed and Lower Count is for Pending.)<span class="pull-right" style="padding-right: 10px;"><a href="#" class="closepopup" title="Close Modal Alert" data-dismiss="modal" aria-hidden="true">X</a></span>
                </div>
                <div id="SCQWrittenChart"></div>
            </div>
        </div>

        <div id="costumModal4" class="modal" data-easein="flipBounceXIn" tabindex="-1" role="dialog" aria-labelledby="costumModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content modal-lg">
                    <div class="modal-header modal-title">
                        <h4 style="font-size: 1.8em;">TRACK GRIEVANCE<span class="pull-right" style="padding-right: 10px;">
                            <a href="#" class="closepopup2" title="Close Modal Button Alert" data-dismiss="modal" aria-hidden="true">X </a></span>
                        </h4>
                    </div>
                    <div class="modal-body">
                        
                        <div class="box-body box-body-open">

                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3 pleft0">
                                <div class="form-group">
                                    <label class="manadatory" for="Grievance">
                                        Grievance No.</label>
                                    <input type="text" id="txtGrievanceNo" class="form-control" name="Grievance No." title="Enter Grievance No." onkeypress='validate(event)' placeholder="Grievance No" maxlength="12" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3 pleft0">
                                <div class="form-group">
                                    <label class="manadatory" for="Mobile">
                                        Mobile No.</label>
                                    <input type="text" id="txtMobileNo" onkeypress='validate(event)' name="Mobile" title="Enter Mobile No." class="form-control" placeholder="Mobile No" maxlength="13" autocomplete="off" />
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 pleft0">
                                <div class="form-group">
                                    <label class="manadatory" for="Captcha">
                                        Captcha</label>
                                    <input type="text" id="txtCaptcha" class="form-control" name="Captcha" title="Enter Captcha Code Here" placeholder="Captcha" maxlength="6" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 text-center">
                                <div style="margin-top: 25px;">
                                    <label for="Verification Code">
                                        <img id="myimg" src="/Account/GetCaptcha" alt="verification code" title="Verification Code" class=".gov.inform-control" /></label>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2">
                                <div class="form-group">
                                    <input type="button" class="btn btn-primary mtop25" value="View Status" name="View Status" title="View Status Button" onclick="GetData();" />
                                    <%--<asp:Button runat="server" ID="btnViewStatus" class="btn btn-primary mtop25" Text="View Status" OnClick="btnViewStatus_Click" />--%>
                                </div>
                            </div>
                            
                            <div class="clearfix"></div>
                            <div id="dvTraker">
                                <div class="row">
                                    <div class="col-md-4">
                                        <b>Reference ID: </b>
                                    </div>
                                    <div class="col-md-8">
                                        <label id="lblReferenceID" for="Reference ID" title="Reference ID"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <b>Grievance Type:  </b>
                                    </div>
                                    <div class="col-md-8">
                                        <label id="lblGrievanceType" for="Grievance Type" title="Grievance Type"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <b>Applicant Name: </b>
                                    </div>
                                    <div class="col-md-8">
                                        <label id="lblApplicantName" for="Applicant" title="Applicant Name"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <b>Application Date: </b>
                                    </div>
                                    <div class="col-md-8">
                                        <label id="lblApplicationDate" for="Application" title="Application Date"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <b>Department Remarks: </b>
                                    </div>
                                </div>
                                <div class="row text-right">
                                    <div class="pull-right" style="margin-right: 15px;">
                                        <b><a href="#" onclick="javascript:return ViewAck();" class="login_btn" title="View Acknowledgement" role="link">View Acknowledgement</a></b>
                                    </div>
<%--                                    <div class="col-md-4 pull-right" >
                                        <b><a href="#" onclick="javascript:return ViewDoc();" class="login_btn" title="View Document" role="link">View Document</a></b>
                                    </div>--%>
                                </div>
                                <br />
                                <div class="row">
                                    <div id="DivActionHistory" class=" table-responsive col-md-12">
                                        <label id="lblDeptRemarks" title="Department Remarks"></label>
                                    </div>
                                </div>
                                <div class="row" id="AttachmentDiv">
                                    <div class="col-md-4">
                                        <b>Attachment: </b>
                                    </div>
                                    <div class="col-md-8">
                                        <div id="link"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <b>Current Status: </b>
                                    </div>
                                    <div class="col-md-8">
                                        <label id="lblCurrentStatus" for="Current Status" title="Current Status"></label>
                                    </div>
                                </div>
                                <div class="row" id="dvFeedback">
                                    <div class="col-md-6">
                                        <b>Are you satisfied with the response from the department?</b>
                                    </div>
                                    <div class="col-md-6">
                                        <%-- <asp:RadioButtonList ID="rdbSatisfy" runat="server" AutoPostBack="true" RepeatDirection="Horizontal">
											<asp:ListItem Text="Yes" Value="Yes" Selected="True"></asp:ListItem>
											<asp:ListItem Text="No" Value="No"></asp:ListItem>
										</asp:RadioButtonList>--%>
                                        <%--<asp:RadioButtonList ID="rdbSatisfy" runat="server" RepeatDirection="Horizontal">
											<asp:ListItem Text="Yes" Value="Yes" Selected="True"></asp:ListItem>
											<asp:ListItem Text="No" Value="No"></asp:ListItem>
										</asp:RadioButtonList>--%>
                                        <input type="radio" id="rdbYes" checked="checked" name="Feedback" title="Choose 'Yes' if satisfied" value="Yes" />
                                        <label for="rdbYes" title="Choose Yes">Yes</label>
                                        <input type="radio" id="rdbNo" name="Feedback" value="No" title="Choose 'No' if satisfied" />
                                        <label for="rdbNo" title="Choose No">No</label>
                                    </div>
                                    <div id="dvText">
                                        <div class="col-md-12">
                                            <%--<input type="text" aria-multiline="true"  name="txtFeedback" id="txtFeedback" hidden="hidden" />--%>
                                            <textarea style="height: 120px; resize: none;" name="textarea" class="manadatory form-control" id="txtFeedback" hidden="hidden" maxlength="2000" title="Enter Description Max.2000 words"></textarea>
                                            <label id="lblCount"><strong style="color: red">Maximum 2000 Words</strong></label>
                                            <%-- <input type="text" name="txtFeedback" id="txtFeedback" />--%>

                                            <%--<asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Visible="false"></asp:TextBox>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary mtop25" id="btnSaveFeedback" name="Feedback" title="Feedback Button" value="Feedback" onclick="SaveFeedback();" />

                                        <%--<asp:Button ID="btnSubmitFeedback" runat="server" Text="Submit" CssClass="btn-primary" />--%>
                                    </div>
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-primary mtop25" id="btnReset" name="Reset" title="Reset Button" value="Reset" onclick="Reset();" />
                                    </div>
                                </div>
                            </div>
                            
                            <div>
                                <%--  <asp:GridView ID="gvShow" runat="server" AutoGenerateColumns="false">
									<Columns>
										<asp:BoundField HeaderText="Reference ID" DataField="Reference ID" />
										<asp:BoundField HeaderText="Grievance Type" DataField="Grievance Type" />
										<asp:BoundField HeaderText="Application Date" DataField="Application Date" />
										<asp:BoundField HeaderText="Applicant Name" DataField="Applicant Name" />
										<asp:BoundField HeaderText="Pending At" DataField="Pending At" />
										 <asp:BoundField HeaderText="Current Status" DataField="Current Status" />
									</Columns>
								</asp:GridView>--%>
                            </div>
                            <%--  <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
								<div class="form-group">
									<label class="manadatory" for="txtAppName">
										Verify OTP</label>
									<input type="text" id="txtVerifyOTP" class="form-control" placeholder="Verify OTP" maxlength="6" disabled="disabled" autocomplete="off" />
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-2 col-lg-2">
								<div class="form-group">
									<input type="button" class="btn btn-primary mtop25 btn_disable" value="Verify" />
								</div>
							</div>--%>
                            <div class="clearfix"></div>
                        </div>
                        <%--<div class="alert alert-success">
							<b>An OTP Send on your registered mobile no 9811xxxx69.</b>
						</div>--%>
                        <div class="alert alert-danger" style="display: none">
                            <b>Please enter a valid Grievance No.</b>
                        </div>
                    </div>
                    <%-- <div class="modal-footer" style="text-align: center !important;">
						<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">
							Close
						</button>
					</div>--%>
                </div>
            </div>
        </div>

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
                    <img src="/AwazAAwam/img/jammu_kashmir_logo.png" class="img-responsive pleft5" alt="" title="" />
                </div>
                <div class="col-xs-12 col-sm-7 col-md-8 col-lg-8 text-center ptop10">
                    <img src="/AwazAAwam/img/awaz_a_awam_logo.png" class="img-responsive" alt="" title="" style="margin: 0 auto;" />
                </div>
                <div class="col-xs-12 col-sm-3 col-md-2 col-lg-2 toploginbox">
                    <a href="/Account/Login#" class="login_btn" title="Go to Department Login" role="link">DEPARTMENT LOGIN</a>
                    <%--<a href="/AwazAAwam/Account/Login.aspx" class="login_btn">LOGIN/REGISTER</a>--%>
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
                                <li>
                                    <a href="/AwazAAwam/Index.aspx" id="home" class="active" title="Home Page" role="link">HOME</a>
                                </li>
                                <%--<li><a href="/AwazAAwam/AboutUs.aspx" id="about">ABOUT US </a>
								</li>--%>
                                <%--<li><a href="#" id="manual">USER MANUAL </a>
								</li>--%>
                                <%--<li><a href="/AwazAAwam/Faqs.aspx" id="faq">FAQ’S        </a>
								</li>--%>
                                <li>
                                    <a href="/AwazAAwam/ImportantLinks.aspx" id="imptlinks" title="Important Links" role="link">IMPORTANT LINKS</a>
                                </li>
                                <%--<li><a href="#" id="dashboard">DASHBOARD</a>
								</li>--%>
                                <li>
                                    <a href="/AwazAAwam/ContactUs.aspx" id="contactus" title="Contact Us" role="link">CONTACT US</a>
                                </li>
                            </ul>
                        </div>
                        <%--<div style="width:100%; height:100%;">
							<asp:Chart ID="Chart1" runat="server">
								<Titles>
									<asp:Title ShadowOffset="3" Name="Items" />
								</Titles>
								<Legends>
									<asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
										LegendStyle="Row" />
								</Legends>
								<ChartAreas>
									<asp:ChartArea Name="ChartArea1" BorderWidth="0" />
								</ChartAreas>
							</asp:Chart>
						</div>--%>
                        <!--/.nav-collapse -->
                    </nav>
                </div>
            </div>
        </header>

        <div class="clearfix"></div>

        <div id="child1" class="smaller">

            <section>
                <div class="slider_img">
                    <div style="">
                        <div class="col-lg-9 text-center grievance_btnbox">
                            <div style="display: none;">
                                <div class="row">

                                    <div class="col-lg-4">
                                        <div class="service_countholder ttle_grevnc">
                                            <span class="service_nme">Total Grievances</span>
                                            <span class="service_count">
                                                <label id="lblTotalGrievance" runat="server" title="Total Grievances Count"></label>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="service_countholder grevnc_dspsd">
                                            <span class="service_nme">Grievances Disposed</span>
                                            <span class="service_count">
                                                <label id="lblGrievanceDisposed" runat="server" title="Grievances Disposed Count"></label>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="service_countholder grevnc_rjctd">
                                            <span class="service_nme">Grievances Rejected</span>
                                            <span class="service_count">
                                                <label id="lblGrievanceRejected" runat="server" title="Grievances Rejected Count"></label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="service_countholder grevnc_impsed">
                                            <span class="service_nme">Grievances Inprocess
											<br />
                                                with Departments</span>
                                            <span class="service_count">
                                                <label id="lblGrievanceInProcess" runat="server" title="Grievances Inprocess with Department Count"></label>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="service_countholder dspsd_prntge">
                                            <span class="service_nme">Disposal Percentage</span>
                                            <span class="service_count">
                                                <label id="lblGrievancePercentage" runat="server" title="Grievances Disposal Percentage"></label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a href="../WebApp/Kiosk/Grievance/GrievanceForm.aspx?SvcID=701" class="postgrvnce_btn" title="Post Grievances Link" role="link">
                                <i class="fa visible-lg fa-fw"></i>POST GRIEVANCE</a>
                            <%-- <a href="#" data-toggle="modal" data6-target="#costumModal4" class="trackgrvnce_btn">TRACK GRIEVANCE</a>--%>
                            <input style="border: none;" type="button" class="trackgrvnce_btn" name="Track Grievanc" title="Track Grievance Link" value="TRACK GRIEVANCE" onclick="OpenModal();" role="button" />
                            <%--<input style="border: none; background-color: #243f60 !important;" type="button" class="trackgrvnce_btn" value="SHOW DATA IN GRAPH" onclick="OpenModal1();" />--%>
                        </div>
                    </div>
                    <div class="col-xs-12 col-lg-3">
                        <div class="cm_msg">
                            <span>
                                <img src="img/cm_photo.png" alt="" title="" /></span>
                            <h5>Shri Manoj Sinha</h5>
                            <h4>Lieutenant Governor<br />
                                Jammu and Kashmir
						</h4>
                            <p>Welcome to "Jammu and Kashmir Integrated Grievance Redress and Monitoring System" (JK-IGRAMS). This portal has been developed to enable citizens to register their grievances and seek redress/ answers from the concerned departments. Though it has existed for past few years, an attempt has now been made to provide a single window for lodging; channelising and tracking the grievances by integrating it with Govt. of India's CPGRAMS on top and District Grievance Cells of all 20 districts at bottom. Further, toll-free Call Centers have been set up for providing an alternate medium to the citizens to register their grievance at district level.</p>
                        </div>
                    </div>
                </div>
                <div class="content_txt">
                    <a name="content1"></a>
                    <div class="container">
                        <div class="col-lg-12">
                            <h3><span>Welcome</span></h3>
                            <p class="clearfix"></p>
                            <p>Welcome to the Jammu & Kashmir – Integrated Grievance Redress and Monitoring System (JK-IGRAMS).</p>
                            <p>Following are the key features of the system: </p>
                            <h4>Easy to use:</h4>
                            <ul>
                                <li>Allows registration of grievance 24 x 7.</li>
                                <li>Portal is integrated vertically above with GoI (CPGRAMS) and below with the districts and its subordinate Officers</li>
                                <li>Provision to submit the grievance in English.</li>
                            </ul>
                            <h4>Other Modes of Registration:</h4>
                            <ul>
                                <li>Any Postal/ Registered Complaint addressed to the Grievance Cell also gets fed into the System.</li>
                                <li>Grievances pertaining to the districts can also be registered by calling on the Toll free District Call Centers (18005722327 for Jammu Division and 18005722328 for Kashmir Division).</li>
                            </ul>
                            <h4>Transparency/Accountability:</h4>
                            <ul>
                                <li>Grievances cannot be deleted/tampered by anyone including the admin.</li>
                                <li>Fortnightly reports of all Departments/Officers are submitted to the Lieutenant Governor.</li>
                                <li>Unique Grievance Number available for tracking.</li>
                                <li>Facility to submit clarification related to the grievance.</li>
                            </ul>
                            <h4>Issues which are not taken up for redress :</h4>
                            <ul>
                                <li>Subjudice cases or any matter concerning judgment given by any court.</li>
                                <li>Personal and family disputes.</li>
                                <li>Service matters.</li>
                                <li>RTI matters.</li>
                                <li>Anything that impacts upon territorial integrity of the country or friendly relations with other countries.</li>
                                <li>Suggestions.</li>
                            </ul>
                            <h4>For Grievances pertaining to Ministry/Department of GoI/Other State Governments :</h4>
                            <p>To register your Grievance pertaining to Ministry/ Department of Government of India/Other State Governments, please visit <a href="https://pgportal.gov.in/" style="color:firebrick;" target="_blank"> CPGRAMS (Central Public Grievance Redressal and Monitoring System)</a></p>
                            <p>
                                <a href="https://pgportal.gov.in/" target="_blank">
                                <img src="img/cpgrams.png" alt="" title="" /></a>
                            </p>
                            <%--<p class="text-center ptop20"><a href="#" class="viewall_btn">VIEW ALL</a></p>--%>
                        </div>
                    </div>
                </div>
            </section>
            <div class="clearfix"></div>
            <footer>
                <div class="row bottom_bg">
                    <div class="col-lg-12"></div>
                    <div class="col-lg-12">
                        <ul>
                            <li><a href="#" title="Disclaimer and Policies">Disclaimer and Policies</a></li>
                            <li><a href="#" title="Accessibility Statement">Accessibility Statement</a></li>
                            <li><a href="#" title="Help">Help</a></li>
                            <li class="pull-right">
                                <img src="/AwazAAwam/img/csc_logo.png" alt="CSC Logo" title="CSC Logo e-Governance Services India Ltd." /></li>
                        </ul>
                        <p><%--An initiative by Chief Minister’s Office  --%>© Content Owned by Government of J&K </p>
                    </div>
                </div>
            </footer>
        </div>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/AwazAAwam/js/bootstrap.min.js" type="text/javascript"></script>
        <%--Modal JS START HERE--%>
        <script src="/AwazAAwam/js/velocity.min.js" type="text/javascript"></script>
        <script src="/AwazAAwam/js/velocity.ui.min.js" type="text/javascript"></script>
        <script src="/AwazAAwam/js/modaleffect.js" type="text/javascript"></script>
        <%--Modal JS ENd HERE--%>
        <%--Temporary Comment No Use--%>
        <asp:HiddenField ID="hdfurl" runat="server" ClientIDMode="Static" />
    </form>
</body>
</html>
