/*
 * ElectricValve.fx
 *
 * Created on 28-mei-2010, 21:42:00
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
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Line;
import javafx.scene.shape.Polygon;

public class ElectricValve extends CustomNode {

    public var color = Color.BLACK;
    public var name = "Electric valve";
    public var openclose: Boolean = true;
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
                centerX: 0, centerY: 5
                radiusX: 7.5, radiusY: 3
                fill: Color.GRAY
            };
    var close = Group {
                visible: bind not openclose
                content: [
                    Circle {
                        centerX: 0, centerY: 27
                        radius: 7
                        fill: Color.RED
                    },
                    Circle {
                        centerX: 0, centerY: 27
                        radius: 6
                        fill: Color.WHITE
                    },
                    Line {
                        startX: -4, startY: 23
                        endX: 4, endY: 31
                        strokeWidth: 1
                        stroke: Color.RED
                    },
                    Line {
                        startX: 4, startY: 23
                        endX: -4, endY: 31
                        strokeWidth: 1
                        stroke: Color.RED
                    }
                ]
            };
    var open = Group {
                visible: bind openclose
                content: [
                    Line {
                        startX: -5, startY: 28
                        endX: 5, endY: 28
                        strokeWidth: 3
                        stroke: Color.GREEN
                    },
                    Polygon {
                        points: [3, 23, 8, 28, 3, 33,]
                        fill: Color.GREEN
                    }
                ]
            };

    public override function create(): Node {
        return Group {
                    content: [
                        frame1, frame2, frame3, frame4, frame5, open, close
                    ]
                }
    }

}
