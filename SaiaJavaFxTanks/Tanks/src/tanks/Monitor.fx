/*
 * Monitor.fx
 *
 * Created on 27-feb-2010, 18:10:48
 */

package tanks;

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

    public-init var width = 300.0;
    public-init var height = 200.0;

    public-init var interval : String = "1";

    var LineChartSeries : LineChart.Series[] = [
        LineChart.Series { name: "tank 1" },
        LineChart.Series { name: "tank 2" },
        LineChart.Series { name: "tank 3" },
        LineChart.Series { name: "tank 4" },
     ];

    var LineChart = LineChart {

        translateX: 10
        translateY: 10

        title: "Flow tanks"
        showSymbols: false
        data: LineChartSeries
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
            upperBound: 250
            tickUnit: 50//20
            label: "Flow litre/min"
            labelFont: Font { size: 10 }
            tickLabelTickGap: 10
            tickLabelFont: Font { size: 9 }
            labelTickGap: 10
            tickMarkLength: 10
            tickMarkVisible: false
        }
        height: height - 20
        width: width - 20
    }

    public override function create() : Node {

        var bgRect = Rectangle {
            width: width
            height: height
            fill: Color.WHITE
            arcWidth: 5
            arcHeight: 5
        }
        var borderRect = Rectangle {
            x: LineChart.translateX - 5
            y: LineChart.translateY - 5
            width: LineChart.width + 10
            height: LineChart.height + 5
            stroke: Color.GRAY
            fill: Color.TRANSPARENT
            arcWidth: 5
            arcHeight: 5
        }
        Group {
            translateX: 30
            translateY: 220
            content: [
                bgRect, borderRect, LineChart
            ]
        }
    }
    var SPIndex = 0;

    public function updatePar(par1:String,par2:String,par3:String,par4:String) {

        insert LineChart.Data {
            xValue: SPIndex
            yValue: Number.parseFloat(par1)
        } into LineChartSeries[0].data;

        insert LineChart.Data {
            xValue: SPIndex
            yValue: Number.parseFloat(par2)
        } into LineChartSeries[1].data;

        insert LineChart.Data {
            xValue: SPIndex
            yValue: Number.parseFloat(par3)
        } into LineChartSeries[2].data;

        insert LineChart.Data {
            xValue: SPIndex
            yValue: Number.parseFloat(par4)
        } into LineChartSeries[3].data;



        if(SPIndex < LineChart.xAxis.upperBound) {
            SPIndex += 1;
        } else {
            LineChart.xAxis.lowerBound += 1;
            LineChart.xAxis.upperBound += 1;
            delete LineChartSeries[0].data[0];
            delete LineChartSeries[1].data[0];
            delete LineChartSeries[2].data[0];
            delete LineChartSeries[3].data[0];
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
