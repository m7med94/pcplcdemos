/*
 * Riool.fx
 *
 * Created on 15-feb-2010, 14:15:58
 */

package skidsim;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.Font;

/**
 * @author AlexSentcha
 */
public var RedUnt: String  = "--";
public var RedT: String  = "--";
public var SewM: String  = "--";
public var SewP: String  = "--";

public class Riool extends CustomNode{
    public override function create(): Node {
        return Group {
            content: [
                // Redox Untread
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: 100,  y: -90 content: "Redox"
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: 100,  y: -80 content: "Untreated"
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 12}
                    x: 150,  y: -80 content: bind RedUnt
                },
                // Redox Tread
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: -10,  y: -90 content: "Redox"
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: -10,  y: -80 content: "Treated"
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 12}
                    x: 30,  y: -80 content: bind RedT
                },
                // Instance of creating ellipse for top of tube
                Ellipse {
                    stroke: Color.LIGHTGRAY
                    opacity: 1.0
                    cache: true
                    strokeWidth: 4
                    centerX: 10, centerY: -55
                    radiusX: 10,  radiusY: 16
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0   endX: 0.0   endY: 1.0
                        stops: [
                            Stop {color: Color.TRANSPARENT offset: 0.0},
                            Stop {color: Color.DARKSEAGREEN offset: 0.5},
                            Stop {color: Color.BLUE offset: 1.0},
                        ]
                    }
                }
                //Instance of tube sides with cutouts for ellipse at top of tube
                ShapeSubtract {
                    cache: true
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0
                        endX: 0.0   endY: 1.0
                        stops: [
                            Stop {  color: Color.BLACK offset: 0.0 },
                            Stop {  color: Color.WHITE offset: 0.3 },
                            Stop {  color: Color.TRANSPARENT offset: 1.0 },
                        ]
                    }
                    opacity: 0.4
                    a:[
                        Rectangle {
                        x: 10,  y: -73
                        width: 150, height: 36
                        fill: Color.BLACK
                        },
           
                        Ellipse {
                            stroke: Color.BLACK
                            opacity: 0.3
                           centerX: 160, centerY: -55
                           radiusX: 10,  radiusY: 18
                           fill: Color.BLACK
                        }
                    ]
                   b: Ellipse {
                        stroke: Color.BLACK
                        opacity: 0.3
                       centerX: 10, centerY: -55
                       radiusX: 10,  radiusY: 16
                       fill: Color.BLACK
                    }
                },
                // sewage flow m3
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: 35,  y: -55 content: "Flow"
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 12}
                    x: 65,  y: -55 content: bind SewM
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: 95,  y: -55 content: "m3/h"
                },
                // sewage flow %
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 12}
                    x: 125,  y: -55 content: bind SewP
                },
                Text {
                    fill: Color.BLACK
                    font: Font { name: "Arial Bold" size: 10}
                    x: 155,  y: -55 content: "%"
                }

             ]

        }
    }

}
