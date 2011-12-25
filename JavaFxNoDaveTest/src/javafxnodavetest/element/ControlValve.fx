/*
 * ControlValve.fx
 *
 * Created on 24-mei-2010, 20:17:30
 */
package javafxnodavetest.element;

/**
 * @author Alex Sentcha
 */
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
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import java.lang.Math.*;
import javafx.scene.shape.Polygon;

public class ControlValve extends CustomNode {

    public var value: Number = 0;
    public var colorC = Color.BLACK;
    public var name = "Control valve";
    public var move: Number = -2;
    public var flow: Number = 0;
    public var openclose: Number = 0;
    public var colorOC = Color.BLACK;
    var angle: Number = 0;
    var rotationwork: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 20ms
                        action: tick
                    }
                ]
            };

    init {
        rotationwork.play();
    }

    public var RoerAAN: Integer = 2;

    public function startRoer() {
        this.rotationwork.play();
    }

    public function stopRoer() {
        this.rotationwork.stop();
    }

    var X1: Double;
    var X2: Double;
    var X3: Double;
    var Y1: Double;
    var Y2: Double;
    var Y3: Double;
    var t: Double;
    var radiusX: Number = 11; //imgWidth;
    var radiusY: Number = 4;  //imgHeight;

    function tick() {
        this.angle += move;
        t = toRadians(angle);
        X1 = sin(t) * radiusX;
        Y1 = cos(t) * radiusY;
        t = toRadians(angle + 120);
        X2 = sin(t) * radiusX;
        Y2 = cos(t) * radiusY;
        t = toRadians(angle + 240);
        X3 = sin(t) * radiusX;
        Y3 = cos(t) * radiusY;
        if (this.angle == 360) {
            this.angle = 0;
        }
    }
    //frame

    def frame1: Rectangle = Rectangle {
                x: -10, y: 20
                width: 21, height: 16
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.5 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }
            };
    def frame2: Rectangle = Rectangle {
                x: -14, y: 18
                width: 4, height: 20
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.5 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }
            }
    def frame3: Rectangle = Rectangle {
                x: 11, y: 18
                width: 4, height: 20
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.5 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }
            };
    def frame4: ShapeSubtract = ShapeSubtract {
                cache: true
                a: [
                    Rectangle { x: -7, y: 5
                        width: 15, height: 15
                    },
                    Ellipse { centerX: 0 centerY: 20
                        radiusX: 7.5 radiusY: 4
                    }
                ]
                b: Ellipse {
                    centerX: 0, centerY: 5
                    radiusX: 7.5, radiusY: 4
                }
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.5 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }
            };
    def frame5: Ellipse = Ellipse {
                cache: true
                centerX: 0, centerY: 6
                radiusX: 7, radiusY: 3
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.2 },
                        Stop { color: Color.GRAY offset: 1.0 },
                    ]
                }
            };
    //staff
    var staff: Line = Line {
                startX: 0, startY: 1
                endX: 0, endY: 5
                strokeWidth: 4
                stroke: bind colorC
            };

    public override function create(): Node {
        return Group {
                    translateX: 0
                    translateY: 0
                    content: [
                        //set point
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 8
                            }
                            x: -23, y: 15
                            content: bind "{value as Integer}%"
                        },
                        frame1, frame2, frame3, frame4, frame5,
                        Group {
                            //Instance of creating the y-axis tick lines
                            content: for (i in [0..5]) {
                                [
                                    Line {
                                        startX: 0, startY: 21 - i * 2
                                        endX: 1, endY: 21 - i * 2
                                        strokeWidth: 1
                                        stroke: Color.BLACK
                                    }
                                ]
                            }
                        }, staff,
                        //level pointer
                        Polygon {
                            translateX: 0
                            translateY: bind 21 - (value / 10.0)
                            points: [0, 0, -5, 3, -5, -3]
                            fill: Color.RED
                        }
                        //wheel
                        ShapeSubtract {
                            cache: true
                            a: Ellipse {
                                stroke: bind colorC
                                centerX: 0, centerY: 0
                                radiusX: 16, radiusY: 5
                                fill: bind colorC
                            }
                            b: Ellipse {
                                stroke: bind colorC
                                centerX: 0, centerY: 0
                                radiusX: 12, radiusY: 3
                                fill: bind colorC
                            }
                        }
                        Line {
                            startX: 0, startY: 0
                            endX: bind X1, endY: bind Y1
                            strokeWidth: 2
                            stroke: bind colorC
                        }
                        Line {
                            startX: 0, startY: 0
                            endX: bind X2, endY: bind Y2
                            strokeWidth: 2
                            stroke: bind colorC
                        }
                        Line {
                            startX: 0, startY: 0
                            endX: bind X3, endY: bind Y3
                            strokeWidth: 2
                            stroke: bind colorC
                        }
                    ]
                }
    }

}
