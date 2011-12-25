/*
 * Tank.fx
 *
 * Created on 24-mei-2010, 15:10:28
 */
package javafxnodavetest.element;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Line;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

/**
 * @author Alex Sentcha
 */
public class TankA extends CustomNode {

    public var value = 0.0;
    public var name = "Tank";
    public var color = Color.TOMATO;

    public override function create(): Node {
        return Group {
                    content: [
                        //---------------  Tanks  --------------------------------
                        Group {
                            //Instance of creating the y-axis tick lines and text
                            content: for (i in [0..10]) {
                                [
                                    Line {
                                        startX: 64,
                                        startY: 138 - i * 10
                                        endX: 67,
                                        endY: 138 - i * 10
                                        strokeWidth: 1
                                        stroke: Color.BLACK
                                    },
                                    Text {
                                        font: Font {
                                            name: "Arial Bold"
                                            size: 8
                                            letterSpacing: 0.15
                                        }
                                        x: 73,
                                        y: 142 - i * 10
                                        content: "{i * 10}" //20
                                    }
                                ]
                            }
                        }
                        //Add titles below Tank
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 20, y: 18
                            content: bind "{name}"
                        }
                        // Instance of creating ellipse for top of tank
                        Ellipse {
                            stroke: Color.LIGHTGRAY
                            opacity: 0.5
                            cache: true
                            strokeWidth: 4
                            centerX: 35, centerY: 30
                            radiusX: 34, radiusY: 7
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0
                                endX: 1.0 endY: 0.0
                                stops: [
                                    Stop { color: Color.TRANSPARENT offset: 0.0 },
                                    Stop { color: Color.LIGHTGRAY offset: 0.5 },
                                    Stop { color: Color.TRANSPARENT offset: 1.0 },
                                ]
                            }
                        }
                        // Instance of creating ellipse for bodem of tank
                        Ellipse {
                            stroke: Color.LIGHTGRAY
                            opacity: 0.5
                            cache: true
                            strokeWidth: 4
                            centerX: 35, centerY: 140
                            radiusX: 34, radiusY: 7
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                stops: [
                                    Stop { color: Color.TRANSPARENT offset: 0.0 },
                                    Stop { color: Color.LIGHTGRAY offset: 0.5 },
                                    Stop { color: Color.TRANSPARENT offset: 1.0 },
                                ]
                            }
                        }
                        // Instance of creating ellipse for top of liquid
                        Ellipse {
                            translateY: bind 40 - value
                            opacity: 1.0//bind op
                            cache: true
                            stroke: Color.LIGHTGRAY
                            strokeWidth: 2
                            centerX: 35, centerY: 100 radiusX: 28, radiusY: 7
                            fill: bind color
                        }
                        //Instance of liquid column: rectangle with top ellipse cut out
                        ShapeSubtract {
                            cache: true
                            translateY: bind 40 - value
                            fill: bind color
                            opacity: 1.0
                            a: bind [
                                Rectangle {
                                    opacity: 0.2
                                    x: 6, y: 100 width: 60, height: value
                                    fill: bind color
                                },
                                Ellipse {
                                    opacity: 0.2
                                    centerX: 36, centerY: 100 + value
                                    radiusX: 30, radiusY: 7
                                    fill: bind color
                                }
                            ]
                            b: Ellipse {
                                stroke: Color.BLACK
                                opacity: 0.2
                                centerX: 36, centerY: 100 radiusX: 30, radiusY: 7
                                fill: Color.BLACK
                            }
                        }
                        //Instance of tank sides with cutouts for ellipse at top of tank
                        ShapeSubtract {
                            cache: true
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0
                                endX: 1.0 endY: 0.0
                                stops: [
                                    Stop { color: Color.TRANSPARENT offset: 0.0 },
                                    Stop { color: Color.WHITE offset: 0.3 },
                                    Stop { color: Color.BLACK offset: 1.0 },
                                ]
                            }
                            opacity: 0.4
                            a: bind [
                                Rectangle {
                                    x: 0, y: 30
                                    width: 70, height: 110
                                    fill: Color.BLACK
                                }
                                Ellipse {
                                    opacity: 0.2
                                    centerX: 34, centerY: 140
                                    radiusX: 34, radiusY: 7
                                    fill: Color.BLACK
                                }
                            ]
                            b: Ellipse {
                                stroke: Color.BLACK
                                opacity: 0.3
                                centerX: 34, centerY: 30
                                radiusX: 34, radiusY: 7
                                fill: Color.BLACK
                            }
                        }
                        //Add text with level value
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 30, y: 88
                            content: bind "{value as Integer}%"
                        }
                    ]
                }
    }

}
