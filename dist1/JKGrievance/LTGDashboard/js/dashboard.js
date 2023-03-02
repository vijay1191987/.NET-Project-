//(function () {
//    isWindows = navigator.platform.indexOf('Win') > -1 ? true : false;

//    if (isWindows) {
//        // if we are on windows OS we activate the perfectScrollbar function
//        var ps = new PerfectScrollbar('.sidebar-wrapper');
//        var ps2 = new PerfectScrollbar('.main-panel');

//        $('html').addClass('perfect-scrollbar-on');
//    } else {
//        $('html').addClass('perfect-scrollbar-off');
//    }
//});

transparent = true;
transparentDemo = true;
fixedTop = false;

navbar_initialized = false;
backgroundOrange = false;
sidebar_mini_active = false;
toggle_initialized = false;

var is_iPad = navigator.userAgent.match(/iPad/i) != null;
var scrollElement = navigator.platform.indexOf('Win') > -1 ? $(".main-panel") : $(window);

seq = 0, delays = 80, durations = 500;
seq2 = 0, delays2 = 80, durations2 = 500;

$(document).ready(function () {
    if ($('.full-screen-map').length == 0 && $('.bd-docs').length == 0) {
        // On click navbar-collapse the menu will be white not transparent
        $('.collapse').on('show.bs.collapse', function () {
            $(this).closest('.navbar').removeClass('navbar-transparent').addClass('bg-white');
        }).on('hide.bs.collapse', function () {
            $(this).closest('.navbar').addClass('navbar-transparent').removeClass('bg-white');
        });
    }

    $navbar = $('.navbar[color-on-scroll]');
    scroll_distance = $navbar.attr('color-on-scroll') || 500;

    // Check if we have the class "navbar-color-on-scroll" then add the function to remove the class "navbar-transparent" so it will transform to a plain color.
    if ($('.navbar[color-on-scroll]').length != 0) {
        nowuiDashboard.checkScrollForTransparentNavbar();
        $(window).on('scroll', nowuiDashboard.checkScrollForTransparentNavbar)
    }

    $('.form-control').on("focus", function () {
        $(this).parent('.input-group').addClass("input-group-focus");
    }).on("blur", function () {
        $(this).parent(".input-group").removeClass("input-group-focus");
    });

    // Activate bootstrapSwitch
    $('.bootstrap-switch').each(function () {
        $this = $(this);
        data_on_label = $this.data('on-label') || '';
        data_off_label = $this.data('off-label') || '';

        $this.bootstrapSwitch({
            onText: data_on_label,
            offText: data_off_label
        });
    });
});

$(document).on('click', '.navbar-toggle', function () {
    $toggle = $(this);

    if (nowuiDashboard.misc.navbar_menu_visible == 1) {
        $('html').removeClass('nav-open');
        nowuiDashboard.misc.navbar_menu_visible = 0;
        setTimeout(function () {
            $toggle.removeClass('toggled');
            $('#bodyClick').remove();
        }, 550);
    } else {
        setTimeout(function () {
            $toggle.addClass('toggled');
        }, 580);

        div = '<div id="bodyClick"></div>';
        $(div).appendTo('body').click(function () {
            $('html').removeClass('nav-open');
            nowuiDashboard.misc.navbar_menu_visible = 0;
            setTimeout(function () {
                $toggle.removeClass('toggled');
                $('#bodyClick').remove();
            }, 550);
        });

        $('html').addClass('nav-open');
        nowuiDashboard.misc.navbar_menu_visible = 1;
    }
});

$(window).resize(function () {
    // reset the seq for charts drawing animations
    seq = seq2 = 0;

    if ($('.full-screen-map').length == 0 && $('.bd-docs').length == 0) {
        $navbar = $('.navbar');
        isExpanded = $('.navbar').find('[data-toggle="collapse"]').attr("aria-expanded");
        if ($navbar.hasClass('bg-white') && $(window).width() > 991) {
            if (scrollElement.scrollTop() == 0) {
                $navbar.removeClass('bg-white').addClass('navbar-transparent');
            }
        } else if ($navbar.hasClass('navbar-transparent') && $(window).width() < 991 && isExpanded != "false") {
            $navbar.addClass('bg-white').removeClass('navbar-transparent');
        }
    }
    if (is_iPad) {
        $('body').removeClass('sidebar-mini');
    }
});

nowuiDashboard = {
    misc: {
        navbar_menu_visible: 0
    },

    showNotification: function (from, align) {
        color = 'primary';

        $.notify({
            icon: "now-ui-icons ui-1_bell-53",
            message: "Welcome to <b>Now Ui Dashboard</b> - a beautiful freebie for every web developer."
        }, {
            type: color,
            timer: 8000,
            placement: {
                from: from,
                align: align
            }
        });
    }
};

function hexToRGB(hex, alpha) {
    var r = parseInt(hex.slice(1, 3), 16),
        g = parseInt(hex.slice(3, 5), 16),
        b = parseInt(hex.slice(5, 7), 16);

    if (alpha) {
        return "rgba(" + r + ", " + g + ", " + b + ", " + alpha + ")";
    } else {
        return "rgb(" + r + ", " + g + ", " + b + ")";
    }
}

/***** (-:-) MOHAN WORK (-:-) *****/

$(document).ready(function () {
    if (location.pathname.match('Dashboard.aspx')) {
        PieChart1();
        YearReport();
        ServiceName();
        PieChart2();
        PieChart3();
        PieChart4();
        BCGOPieChart();
        OverAllReport();
    }
});

function GetData(ID) {
    var table = $("table[id$='" + ID + "']").DataTable
        ({
            dom: 'Bfrtip',
            buttons: ['excel', 'print', 'pdf'],
            "searching": false,
            "paging": false,
            "info": false,
            "pageLength": 10,
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
            "order": [[6, "asc"]],

            "footerCallback": function (row, data, start, end, display) {
                var api = this.api(), data;

                // Remove the formatting to get integer data for summation
                var intVal = function (i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                            i : 0;
                };

                // Total over all pages
                total = api
                    .column([2, 3, 4, 5, 6])
                    .data()
                    .reduce(function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);

                // Total over this page
                //TG = api
                //    .column(2, { page: 'current' })
                //    .data()
                //    .reduce(function (a, b) {
                //        return intVal(a) + intVal(b);
                //    }, 0);
                //DP = api
                //    .column(3, { page: 'current' })
                //    .data()
                //    .reduce(function (a, b) {
                //        return intVal(a) + intVal(b);
                //    }, 0);
                //GR = api
                //    .column(4, { page: 'current' })
                //    .data()
                //    .reduce(function (a, b) {
                //        return intVal(a) + intVal(b);
                //    }, 0);
                //PD = api
                //    .column(5, { page: 'current' })
                //    .data()
                //    .reduce(function (a, b) {
                //        return intVal(a) + intVal(b);
                //    }, 0);
                //PP = api
                //    .column(6, { page: 'current' })
                //    .data()
                //    .reduce(function (a, b) {
                //        return intVal(a) + intVal(b);
                //    }, 0);

                var ColCount = api.columns().count();
                for (i = 2; i < api.columns().count(); i++) {
                    ColTotal = api
                        .column(i, { page: 'current' })
                        .data()
                        .reduce(function (a, b) {
                            return intVal(a) + intVal(b);
                        }, 0);
                    if (api.context[0].aoColumns[i].sTitle.match("Pendency ")) {
                        $(api.column(i).footer()).html("");
                    }
                    else if (api.context[0].aoColumns[i].sTitle.match("Disposal ")) {
                        $(api.column(i).footer()).html("");
                    }
                    else {
                        $(api.column(i).footer()).html(ColTotal);
                    }
                }

                // Update footer
                //$(api.column([2, 3, 4, 5, 6]).footer()).html(
                //     pageTotal //+ ' (' + total + ' total)'
                //);
                $(api.column(1).footer()).html('<i class="fas fa-calculator"></i>&nbsp;&nbsp;&nbsp;Total :-');
                //$(api.column(2).footer()).html(TG);
                //$(api.column(3).footer()).html(DP);
                //$(api.column(4).footer()).html(GR);
                //$(api.column(5).footer()).html(PD);
                //$(api.column(6).footer()).html(PP);
            }
        });
    GetDate();
    $('#' + ID + 'Date').text(output);
}

function GetData2(ID) {
    var table = $("table[id$='" + ID + "']").DataTable
        ({
            dom: 'Bfrtip',
            buttons: ['excel', 'print', 'pdf'],
            "searching": false,
            "paging": false,
            "info": false,
            "pageLength": 10,
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
            "order": [[6, "desc"]],
            //columnDefs: [
            //    { width: 10, targets: 1 },
            //    { width: 1, targets: 4 }
            //],

            "footerCallback": function (row, data, start, end, display) {
                var api = this.api(), data;

                // Remove the formatting to get integer data for summation
                var intVal = function (i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                            i : 0;
                };

                $(api.column(1).footer()).html('<i class="fas fa-calculator"></i>&nbsp;&nbsp;&nbsp;Total :-');
                var ColCount = api.columns().count();
                for (i = 2; i < api.columns().count(); i++) {
                    ColTotal = api
                        .column(i, { page: 'current' })
                        .data()
                        .reduce(function (a, b) {
                            return intVal(a) + intVal(b);
                        }, 0);
                    if (api.context[0].aoColumns[i].sTitle.match("Pendency ")) {
                        $(api.column(i).footer()).html("");
                    }
                    else if (api.context[0].aoColumns[i].sTitle.match("Disposal ")) {
                        $(api.column(i).footer()).html("");
                    }
                    else {
                        $(api.column(i).footer()).html(ColTotal);
                    }
                }
            }

            //footerCallback: function (tfoot, data, start, end, display) {
            //    
            //    var api = this.api();
            //    var lastRow = api.rows().count();
            //    console.log("XX " + lastRow + ": " + api.row(0).data()[0]);
            //    for (i = 0; i < api.columns().count(); i++) {
            //        $(tfoot).find('th').eq(i).html(api.row(lastRow - 1).data()[i]);
            //        console.log(api.row(lastRow - 1).data()[i]);
            //    }
            //},

            //"footerCallback": function (row, data, start, end, display) {
            //    var api = this.api();

            //    api.columns('.sum', {
            //        page: 'current'
            //    }).every(function () {
            //        var sum = this
            //            .data()
            //            .reduce(function (a, b) {
            //                var x = parseFloat(a) || 0;
            //                var y = parseFloat(b) || 0;
            //                return x + y;
            //            }, 0);
            //        console.log(sum); //alert(sum);
            //        $(this.footer()).html(sum);
            //    });
            //}
        });
    GetDate();
    $('#' + ID + 'Date').text(output);
}

function GetDAPR(ID) {
    var table = $("table[id$='" + ID + "']").DataTable
        ({
            dom: 'Bfrtip',
            buttons: ['excel', 'print', 'pdf'],
            "searching": false,
            "paging": false,
            "info": false,
            "pageLength": 10,
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
            "order": [[0, "asc"]],

            "footerCallback": function (row, data, start, end, display) {
                var api = this.api(), data;

                // Remove the formatting to get integer data for summation
                var intVal = function (i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                            i : 0;
                };

                $(api.column(1).footer()).html('<i class="fas fa-calculator"></i>&nbsp;&nbsp;&nbsp;Total :-');
                var ColCount = api.columns().count();
                for (i = 2; i < api.columns().count(); i++) {
                    ColTotal = api
                        .column(i, { page: 'current' })
                        .data()
                        .reduce(function (a, b) {
                            return intVal(a) + intVal(b);
                        }, 0);
                    if (api.context[0].aoColumns[i].sTitle.match("Pendency ")) {
                        $(api.column(i).footer()).html("");
                    }
                    else if (api.context[0].aoColumns[i].sTitle.match("Disposal ")) {
                        $(api.column(i).footer()).html("");
                    }
                    else {
                        $(api.column(i).footer()).html(ColTotal);
                    }
                }
            }
        });
    GetDate();
    $('#' + ID + 'Date').text(output);
}

var output = "";
function GetDate() {
    var d = new Date();
    var month = d.getMonth() + 1;
    var day = d.getDate();
    output = ((' ' + day).length < 2 ? '0' : '') + day + '/' + (('' + month).length < 2 ? '0' : '') + month + '/' + d.getFullYear();
}

function YearReport() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/YearReport",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            //Result = Result.d;
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            YearChart(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function YearChart(series) {
    $('#ChartYearReport').highcharts({
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
            labels: {
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        series: [{
            type: 'column',
            colorByPoint: true,
            name: 'Average Grievance Received Per Month',
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

function ServiceName() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/YearWiseGrievances",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            BindBarChart(Result.d.series, Result.d.xAxis);
        },
        error: function (xhr, status, error) {
            alert(xhr.responseText);
        }
    });
};

function BindBarChart(Series, XAxis) {
    $('#ChartReport').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: null
        },
        //xAxis: {
        //    categories: [
        //        '2018',
        //        '2019'
        //    ],
        //    crosshair: true
        //},
        xAxis: XAxis,
        yAxis: {
            min: 0,
            title: {
                text: 'Category (Count)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.f}</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        //series: [
        //    {
        //        name: 'Total Grievances',
        //        data: [21361, 21386]
        //    },
        //    {
        //        name: 'Grievances Disposed',
        //        data: [14281, 10353]
        //    },
        //    {
        //        name: 'Grievances Rejected',
        //        data: [5474, 4452]
        //    },
        //    {
        //        name: 'Grievances Under Process',
        //        data: [1601, 6581]
        //    }]
        series: Series
    });
}

function PieChart1() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/PieChart1",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            //Result = Result.d;
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            DrawPieChart1(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function DrawPieChart1(series) {
    $('#T6PDPieChart').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        //title: {
        //    text: 'Browser<br>shares<br>2017',
        //    align: 'center',
        //    verticalAlign: 'middle',
        //    y: 60
        //},
        title: {
            text: 'Top 6 Performing Departments'
        },

        tooltip: {
            pointFormat: '{series.name}: <b>{point.y:.f}</b>'
        },

        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },

        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white'
                    }
                },
                showInLegend: true,
                //center: ['50%', '75%'],
                size: '100%'
            }
        },

        series: [{
            type: 'pie',
            name: 'Pendency',
            //innerSize: '100%',
            colorByPoint: true,
            data: series,
            dataLabels: {
                enabled: true,
                format: '{point.y:.f}',
                y: 10,
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
}

function PieChart2() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/PieChart2",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            //Result = Result.d;
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            DrawPieChart2(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function DrawPieChart2(series) {
    $('#B6PDPieChart').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        //title: {
        //    text: 'Browser<br>shares<br>2017',
        //    align: 'center',
        //    verticalAlign: 'middle',
        //    y: 60
        //},
        title: {
            text: 'Bottom 6 Performing Departments'
        },

        tooltip: {
            pointFormat: '{series.name}: <b>{point.y:.f}</b>'
        },

        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },

        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white'
                    }
                },
                showInLegend: true,
                //center: ['50%', '75%'],
                size: '100%'
            }
        },

        series: [{
            type: 'pie',
            name: 'Pendency',
            //innerSize: '100%',
            colorByPoint: true,
            data: series,
            dataLabels: {
                enabled: true,
                format: '{point.y:.f}',
                y: 10,
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
}

function PieChart3() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/PieChart3",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            //Result = Result.d;
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            DrawPieChart3(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function DrawPieChart3(series) {
    $('#T5PDPieChart').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        //title: {
        //    text: 'Browser<br>shares<br>2017',
        //    align: 'center',
        //    verticalAlign: 'middle',
        //    y: 60
        //},
        title: {
            text: 'Top 6 Performing Districts'
        },

        tooltip: {
            pointFormat: '{series.name}: <b>{point.y:.f}</b>'
        },

        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },

        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white'
                    }
                },
                showInLegend: true,
                //center: ['50%', '75%'],
                size: '100%'
            }
        },

        series: [{
            type: 'pie',
            name: 'Pendency',
            //innerSize: '100%',
            colorByPoint: true,
            data: series,
            dataLabels: {
                enabled: true,
                format: '{point.y:.f}',
                y: 10,
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
}

function PieChart4() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/PieChart4",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            //Result = Result.d;
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            DrawPieChart4(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function DrawPieChart4(series) {
    $('#B5PDPieChart').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        //title: {
        //    text: 'Browser<br>shares<br>2017',
        //    align: 'center',
        //    verticalAlign: 'middle',
        //    y: 60
        //},
        title: {
            text: 'Bottom 6 Performing Districts'
        },

        tooltip: {
            pointFormat: '{series.name}: <b>{point.y:.f}</b>'
        },

        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },

        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white'
                    }
                },
                showInLegend: true,
                //center: ['50%', '75%'],
                size: '100%'
            }
        },

        series: [{
            type: 'pie',
            name: 'Pendency',
            //innerSize: '100%',
            colorByPoint: true,
            data: series,
            dataLabels: {
                enabled: true,
                format: '{point.y:.f}',
                y: 10,
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
}

//$('#PieChart').highcharts({
//    chart: {
//        type: 'pie',
//        options3d: {
//            enabled: true,
//            alpha: 45
//        }
//    },
//    title: {
//        style: {
//            display: 'none'
//        }
//    },
//    tooltip: {
//        pointFormat: '{series.name}: <b>{point.y:.f}</b>'
//    },
//    plotOptions: {
//        pie: {
//            innerSize: 100,
//            depth: 45,
//            allowPointSelect: true,
//            //cursor: 'pointer',
//            dataLabels: {
//                enabled: true,
//                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
//                style: {
//                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
//                }
//            }
//        }
//    },
//    series: [{
//        name: 'Total',
//        data: series
//    }]
//});
//}

function BCGOPieChart() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/BCGOPieChart",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            //Result = Result.d;
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            OGRPieChart(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function OGRPieChart(series) {
    Highcharts.setOptions({
        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
            return {
                radialGradient: {
                    cx: 0.5,
                    cy: 0.3,
                    r: 0.7
                },
                stops: [
                    [0, color],
                    [1, Highcharts.color(color).brighten(-0.3).get('rgb')] // darken
                ]
            };
        })
    });

    $('#OGRPieChart').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        //title: {
        //    text: 'Browser<br>shares<br>2017',
        //    align: 'center',
        //    verticalAlign: 'middle',
        //    y: 60
        //},
        title: {
            text: 'Broad Categorisation of Grievances (Overall)'
        },

        tooltip: {
            pointFormat: '{series.name}: <b>{point.y:.f} %</b>'
        },

        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },

        //plotOptions: {
        //    pie: {
        //        allowPointSelect: true,
        //        cursor: 'pointer',
        //        dataLabels: {
        //            enabled: false,
        //            distance: -50,
        //            style: {
        //                fontWeight: 'bold',
        //                color: 'white'
        //            }
        //        },
        //        showInLegend: true,
        //        //center: ['50%', '75%'],
        //        size: '100%'
        //    }
        //},
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                showInLegend: true,
                connectorColor: 'red',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },

        series: [{
            type: 'pie',
            name: 'Total',
            //innerSize: '100%',
            colorByPoint: true,
            data: series
            //dataLabels: {
            //    enabled: true,
            //    format: '{point.y:.f} %',
            //    y: 10,
            //    style: {
            //        fontSize: '10px',
            //        fontFamily: 'Verdana, sans-serif'
            //    }
            //}
        }]
    });
}

function OverAllReport() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/LTGDashboard/Dashboard.aspx/OverAllGrievances",
        data: "{}",
        dataType: "json",
        success: function (Result) {
            Result = JSON.parse(Result.d);
            var data = [];
            for (var i in Result) {
                var serie = new Array(Result[i].Name, Result[i].Value);
                data.push(serie);
            }
            OverAllGrievancesChart(data);
            OGRDPieChart(data);
        },
        error: function (Result) {
            alert(Result);
        }
    });
};

function OverAllGrievancesChart(series) {
    $('#OverAllChartReport').highcharts({
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
            labels: {
                style: {
                    fontSize: '10px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        series: [{
            type: 'bar',
            colorByPoint: true,
            name: 'Type of Grievances Received (Overall)',
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

function OGRDPieChart(series) {
    Highcharts.chart('OGRDPieChart',
        {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Type of Grievances Received'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    showInLegend: true,
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                        connectorColor: 'silver'
                    }
                }
            },
            series: [{
                name: 'Percentage',
                data: series
            }]
        });
}