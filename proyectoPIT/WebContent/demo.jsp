<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Google Chart - Struts 2</title>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load('visualization', '1.0', {
        'packages' : [ 'corechart' ]
    });

    google.setOnLoadCallback(drawChart);

     function drawChart() {
        var data = google.visualization.arrayToDataTable([
                [ 'Country', 'Area(square km)' ],
                <s:bean name="action.PieChartAction" var="pieData" />
                <s:property value="#pieData.pieChartData" />
                ]);
        var options = {
            'title' : 'Area-wise Top Seven Countries in the World',
            is3D : true,
            pieSliceText : 'label',
            tooltip : {
                showColorCode : true
            },
            'width' : 900,
            'height' : 500
        };

        var chart = new google.visualization.PieChart(document
                .getElementById('chart_div'));
        chart.draw(data, options);
        var chart1 = new google.visualization.PieChart(document
                .getElementById('chart_div1'));
        chart1.draw(data, options);
    }
</script>
</head>
<body>
    <div style="width: 40%">
        <div id="chart_div"></div>
    </div>
    <div style="width: 20%; float: left">
        <div id="chart_div1"></div>
    </div>
</body>
</html>