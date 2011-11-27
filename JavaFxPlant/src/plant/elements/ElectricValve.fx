/*
 * ElectricValve.fx
 *
 * Created on 28-mei-2010, 21:42:00
 */
package plant.elements;

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
    public var openclose: Boolean = false;
    //frame
    def frame1: Rectangle = Rectangle {
                x: -7, y: 20
                width: 14, height: 9
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    def frame2: Rectangle = Rectangle {
                x: -10, y: 19
                width: 3, height: 11
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    def frame3: Rectangle = Rectangle {
                x: 7, y: 19
                width: 3, height: 11
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    def frame4: ShapeSubtract = ShapeSubtract {
                a: [
                    Rectangle { x: -4, y: 10
                        width: 8, height: 10
                    },
                    Ellipse { centerX: 0, centerY: 20
                        radiusX: 4, radiusY: 2
                    }
                ]
                b: Ellipse {
                    centerX: 0, centerY: 5
                    radiusX: 4, radiusY: 2
                }
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.TRANSPARENT offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.5 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }
            };
    def frame5: Ellipse = Ellipse {
                cache: true
                centerX: 0, centerY: 10
                radiusX: 4, radiusY: 2.0
                fill: Color.GRAY
            };
    var close = Group {
                visible: bind not openclose
                content: [
                    Circle {
                        stroke: Color.RED
                        strokeWidth: 1
                        centerX: 0, centerY: 25
                        radius: 4
                        fill: Color.WHITE
                    },
                    Line {
                        startX: -3, startY: 22
                        endX: 3, endY: 28
                        strokeWidth: 1
                        stroke: Color.RED
                    },
                    Line {
                        startX: 3, startY: 22
                        endX: -3, endY: 28
                        strokeWidth: 1
                        stroke: Color.RED
                    }
                ]
            };
    var open = Circle {
                visible: bind openclose
                stroke: Color.GREEN
                strokeWidth: 1
                centerX: 0, centerY: 25
                radius: 4
                fill: Color.LIME
            };

    public override function create(): Node {
        return Group {
                    content: [
                        frame1, frame2, frame3, frame4, frame5, open, close
                    ]
                }
    }

}
