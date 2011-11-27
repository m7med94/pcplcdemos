/*
 * TubeFill.fx
 *
 * Created on 29-apr-2009, 9:21:03
 */

package skidsim;

/**
 * @author AlexSentcha
 */

// place your code here
//import javafx.animation.Interpolator;
//import javafx.animation.KeyFrame;
//import javafx.animation.Timeline;
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


public class StorTanks extends CustomNode {

    public var fillHeight = 0.0;
    public override function create(): Node {
        return Group {
            content: [
                Group {
                    //Instance of creating the y-axis tick lines and text
                    content: for(i in [0 .. 10]) { [
                            Line {
                                startX: 114 ,
                                startY: 248 - i * 10
                                endX: 117 ,
                                endY: 248 - i * 10
                                strokeWidth: 1
                                stroke: Color.BLACK
                            },
                            Text {
                                font: Font {
                                    name: "Arial Bold"
                                    size: 8
                                    letterSpacing: 0.15
                                }
                                x: 123,
                                y: 252 - i * 10
                                content: "{i * 10}" //20
                            }
                        ]
                    }
                }
                // Instance of creating ellipse for top of tank
                Ellipse {
                    stroke: Color.LIGHTGRAY
                    opacity: 0.5
                    cache: true
                    strokeWidth: 4
                    centerX: 85, centerY: 140
                    radiusX: 34,  radiusY: 7
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0
                        endX: 1.0   endY: 0.0
                        stops: [
                            Stop {color: Color.TRANSPARENT offset: 0.0},
                            Stop {color: Color.LIGHTGRAY offset: 0.5},
                            Stop {color: Color.TRANSPARENT offset: 1.0},
                        ]
                    }
                }
             // Instance of creating ellipse for bodem of tank
                Ellipse {
                    stroke: Color.LIGHTGRAY
                    opacity: 0.5
                    cache: true
                    strokeWidth: 4
                    centerX: 85, centerY: 250
                    radiusX: 34,  radiusY: 7
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0  endX: 1.0   endY: 0.0
                        stops: [
                            Stop {color: Color.TRANSPARENT offset: 0.0},
                            Stop {color: Color.LIGHTGRAY offset: 0.5},
                            Stop {color: Color.TRANSPARENT offset: 1.0},
                        ]
                    }
                }
                  // Instance of creating ellipse for top of liquid
                Ellipse {
                    translateY: bind 110 - fillHeight
                    opacity: 1.0//bind op
                    cache: true
                    stroke: Color.LIGHTGRAY
                    strokeWidth: 2
                    centerX: 85, centerY: 140 radiusX: 28, radiusY: 7
                    fill:
                    LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    stops: [
                        Stop {color: Color.BLACK  offset: 0.0},
                        Stop {color: Color.LIGHTBLUE offset: 0.5},
                        Stop {color: Color.BLACK   offset: 1.0},
                        ]
                    }
                }
                //Instance of liquid column: rectangle with top ellipse cut out
                ShapeSubtract {
                    cache: true
                    translateY: bind 110-fillHeight
                    fill:
                    LinearGradient {
                        startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                        stops: [
                          Stop {color: Color.BLACK  offset: 0.0},
                          Stop {color: Color.LIGHTBLUE  offset: 0.5},
                          Stop {color: Color.BLACK  offset: 1.0},
                        ]
                    }
                    opacity: 1.0
                    a: bind [
                        Rectangle {
                            opacity: 0.2
                            x: 56,  y: 140  width: 60, height: fillHeight
                            fill: Color.BLACK
                        },
                        Ellipse {
                            opacity: 0.2
                            centerX: 86, centerY: 140+fillHeight
                            radiusX: 30,  radiusY: 7
                            fill:Color.BLACK
                        }
                    ]
                    b: Ellipse {
                      stroke: Color.BLACK
                        opacity: 0.2
                        centerX: 86, centerY: 140  radiusX: 30,  radiusY: 7
                        fill: Color.BLACK
                    }
                }
     /*   */       //Instance of tank sides with cutouts for ellipse at top of tank
                ShapeSubtract {
                    cache: true
                    fill: LinearGradient {
                        startX: 0.0
                        startY: 0.0
                        endX: 1.0
                        endY: 0.0
                        stops: [
                            Stop {  color: Color.TRANSPARENT offset: 0.0 },
                            Stop {  color: Color.WHITE offset: 0.3 },
                            Stop {  color: Color.BLACK offset: 1.0 },
                        ]
                    }
                     opacity: 0.4
                    a: bind [
                        Rectangle {
                        x: 50,  y: 140
                        width: 70, height: 110
                        fill: Color.BLACK
                        }
                        Ellipse {
                            opacity: 0.2
                            centerX: 84, centerY: 250
                            radiusX: 34,  radiusY: 7
                            fill:Color.BLACK
                        }
                    ]
                   b: Ellipse {
                        stroke: Color.BLACK
                        opacity: 0.3
                        centerX: 84, centerY: 140
                        radiusX: 34, radiusY: 7
                        fill: Color.BLACK
                    }
                }
           ]
        }
    }
}