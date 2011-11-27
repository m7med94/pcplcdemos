/*
 * Monitor.fx
 *
 * Created on 27-feb-2010, 18:10:48
 */

package skidchart;

import javafx.scene.chart.LineChart;
import javafx.scene.chart.part.NumberAxis;
import javafx.scene.CustomNode;
import javafx.scene.Node;
import javafx.scene.text.Font;
import javafx.scene.Group;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.chart.part.Side;

public class Monitor extends CustomNode{

    public-init var width = 400.0;
    public-init var height = 200.0;

    public-init var interval : String = "1";

    var NivoLineChartSeries : LineChart.Series[] = [
        LineChart.Series { name: "StorageHP" },
        LineChart.Series { name: "StorageFA" },
        LineChart.Series { name: "BufferHP" },
        LineChart.Series { name: "BufferFA" },
        LineChart.Series { name: "Water" },
        LineChart.Series { name: "Reactor" }
    ];

    var NivoLineChart = LineChart {

        translateX: 10
        translateY: 10

        title: "Levels of storage, buffer, water tanks and reactor"
        showSymbols: false
        data: NivoLineChartSeries
        legendSide: Side.RIGHT

        xAxis: TickNumberAxis {
            lowerBound: 0
            upperBound: 60
            tickUnit: 10
            label: "Time"
            labelFont: Font { size: 10 }
            tickLabelTickGap: 10
            tickLabelFont: Font { size: 9 }
            labelTickGap: 10
            tickMarkLength: 10
            showTicks: false
        }

        yAxis: TickNumberAxis {
            lowerBound: 0
            upperBound: 100
            tickUnit: 20
            label: "Level %"
            labelFont: Font { size: 10 }
            tickLabelTickGap: 10
            tickLabelFont: Font { size: 9 }
            labelTickGap: 10
            tickMarkLength: 10
            tickMarkVisible: false
        }
        height: height/2.0 - 20
        width: width - 20
    }

    var RedoxLineChartSeries : LineChart.Series[] = [
            LineChart.Series { name: "Untreated" },
            LineChart.Series { name: "Treated" }
    ];

    var RedoxLineChart = LineChart {

        translateX: 10
        translateY: height/2.0 + 15

        title: "Redox"
        showSymbols: false
        data:  RedoxLineChartSeries
        legendSide: Side.RIGHT

        xAxis: TickNumberAxis {
            lowerBound: 0
            upperBound: 60
            tickUnit: 10
            label: "Time"
            labelFont: Font { size: 10 }
            tickLabelTickGap: 10
            tickLabelFont: Font { size: 9 }
            labelTickGap: 10
            tickMarkLength: 10
            showTicks: false
        }

        yAxis: TickNumberAxis {
            lowerBound: -1500
            upperBound: 1500
            tickUnit: 500
            label: "Redox"
            labelFont: Font { size: 10 }
            tickLabelTickGap: 10
            tickLabelFont: Font { size: 9 }
            labelTickGap: 10
            tickMarkLength: 10
            tickMarkVisible: false
        }
        height: height/2.0 - 20
        width: width - 20
    }

    public override function create() : Node {

        var bgRect = Rectangle {
            width: width
            height: height
            fill: Color.IVORY
            arcWidth: 5
            arcHeight: 5
        }

        var borderNivoRect = Rectangle {
            x: NivoLineChart.translateX - 5
            y: NivoLineChart.translateY - 5
            width: NivoLineChart.width + 10
            height: NivoLineChart.height + 5
            stroke: Color.GRAY
            fill: Color.TRANSPARENT
            arcWidth: 5
            arcHeight: 5
        }

        var borderRedoxRect = Rectangle {
            x:  RedoxLineChart.translateX - 5
            y:  RedoxLineChart.translateY - 5
            width:  RedoxLineChart.width + 10
            height:  RedoxLineChart.height + 5
            stroke: Color.GRAY
            fill: Color.TRANSPARENT
            arcWidth: 5
            arcHeight: 5
        }

        Group {
            translateX: 10
            translateY: 10
            content: [
                bgRect,
                borderNivoRect, NivoLineChart,
                borderRedoxRect, RedoxLineChart
            ]
        }
    }
/*
    public function start() : Void {
             var topMonitor = new TOPMonitor(this, interval);
            topMonitor.start();
    }
*/
    var nivoIndex = 0;

    public function updateNivo(nivo1:String,nivo2:String,nivo3:String,
                               nivo4:String,nivo5:String,nivo6:String) {

        insert LineChart.Data {
            xValue: nivoIndex
            yValue: Number.parseFloat(nivo1)/10.0
        } into NivoLineChartSeries[0].data;

        insert LineChart.Data {
            xValue: nivoIndex
            yValue: Number.parseFloat(nivo2)/10.0
        } into NivoLineChartSeries[1].data;

        insert LineChart.Data {
            xValue: nivoIndex
            yValue: Number.parseFloat(nivo3)
        } into NivoLineChartSeries[2].data;

        insert LineChart.Data {
            xValue: nivoIndex
            yValue: Number.parseFloat(nivo4)
        } into NivoLineChartSeries[3].data;

        insert LineChart.Data {
            xValue: nivoIndex
            yValue: Number.parseFloat(nivo5)
        } into NivoLineChartSeries[4].data;

        insert LineChart.Data {
            xValue: nivoIndex
            yValue: Number.parseFloat(nivo6)/10.0
        } into NivoLineChartSeries[5].data;

        if(nivoIndex < NivoLineChart.xAxis.upperBound) {
            nivoIndex += 1;
        } else {
            NivoLineChart.xAxis.lowerBound += 1;
            NivoLineChart.xAxis.upperBound += 1;
            delete NivoLineChartSeries[0].data[0];
            delete NivoLineChartSeries[1].data[0];
            delete NivoLineChartSeries[2].data[0];
            delete NivoLineChartSeries[3].data[0];
            delete NivoLineChartSeries[4].data[0];
            delete NivoLineChartSeries[5].data[0];
        }
    }

    var redoxIndex = 0;

    public function updateRedox(redoxUnt:String, redoxTr:String) {

    insert LineChart.Data {
    xValue: redoxIndex
    yValue: Number.parseFloat(redoxUnt)/10.0
    } into RedoxLineChartSeries[0].data;

    insert LineChart.Data {
    xValue: redoxIndex
    yValue: Number.parseFloat(redoxTr)/10.0
    } into RedoxLineChartSeries[1].data;

    if(redoxIndex < RedoxLineChart.xAxis.upperBound) {
            redoxIndex += 1;
        } else {
            RedoxLineChart.xAxis.lowerBound += 1;
            RedoxLineChart.xAxis.upperBound += 1;
            delete RedoxLineChartSeries[0].data[0];
            delete RedoxLineChartSeries[1].data[0];
        }
    }
}

class TickNumberAxis extends NumberAxis {

    public-init var showTicks = true;
    var firstTime = true;

    override function updateTickMarks() : Void {
        if(firstTime and showTicks) {
            super.updateTickMarks();
            firstTime = false;
        }
    }
}
