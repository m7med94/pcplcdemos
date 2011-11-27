/*
 * TankZ.fx
 *
 * Created on 26-mei-2010, 20:52:56
 */
package VisElemS7.element;

/**
 * @author Alex Senthca
 */
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.scene.text.Font;

public class TankZ extends CustomNode {

    public var value = 0.0;
    public var name = "Tank";
    public var color = Color.LIGHTSKYBLUE;

    public override function create(): Node {
        return Group {
                    content: [
                        //TANK
                        //reactor
                        ShapeSubtract {
                            a: [
                                Rectangle {x: 0, y: 0
                                    width: 60, height: 100
                                },
                                Ellipse {centerX: 30, centerY: 100
                                    radiusX: 30, radiusY: 5
                                }
                            ]
                            b: [Ellipse {
                                    centerX: 30, centerY: 0
                                    radiusX: 30, radiusY: 5
                                }
                            ]
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                proportional: true
                                stops: [
                                    Stop {color: Color.TRANSPARENT offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.3},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                            }//Fill
                        },
                        Ellipse {
                            centerX: 30, centerY: 0
                            radiusX: 30, radiusY: 5
                            fill: Color.GRAY
                        },
                        //liquid
                        ShapeSubtract {
                            cache: true
                            translateY: bind value
                            fill: bind color
                            opacity: 0.5
                            a: bind [
                                Rectangle {
                                    //     opacity: 0.2
                                    x: 0, y: 0
                                    width: 60, height: 100 - value
                                    fill: Color.BLACK
                                },
                                Ellipse {
                                    //stroke: Color.BLACK
                                    //        opacity: 0.2
                                    centerX: 30, centerY: 100 - value
                                    radiusX: 30, radiusY: 5
                                    fill: Color.BLACK
                                }
                            ]
                            b: Ellipse {
                                stroke: Color.BLACK
                                //  opacity: 0.2
                                centerX: 30, centerY: 50 - value
                                radiusX: 30, radiusY: 5
                                fill: Color.BLACK
                            }
                        },
                        //liquid mirror
                        Ellipse {
                            stroke: Color.LIGHTGRAY
                            opacity: 0.3
                            centerX: 30, centerY: bind value
                            radiusX: 30, radiusY: 5
                            fill: bind color
                        },
                        //Add text with level value
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 15, y: 58
                            content: bind "{100-value as Integer}%"
                        },
                        //Add titles below Tank
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 10, y: -10
                            content: bind "{name}"
                        }
                    ]
                };
    }
}
