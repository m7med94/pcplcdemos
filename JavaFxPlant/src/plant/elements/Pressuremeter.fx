/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
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
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.scene.image.ImageView;
import javafx.scene.image.Image;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;

public class Pressuremeter extends CustomNode {

    public var value = 0.0;
    public var name = "Tank";
    public var colorf = Color.GREEN;
    /*
    fill: LinearGradient {
    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
    proportional: true
    stops: [
    Stop { color: Color.GRAY offset: 0.0 },
    Stop { color: Color.WHITE offset: 0.3 },
    Stop { color: Color.BLACK offset: 1.0 },
    ]
    }//Fill
     */

    public override function create(): Node {
        //frame

        def frame1: Rectangle = Rectangle {
                    x: -4.5, y: 0
                    width: 9, height: 14
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                        proportional: true
                        stops: [
                            Stop { color: Color.GRAY offset: 0.0 },
                            Stop { color: Color.WHITE offset: 0.3 },
                            Stop { color: Color.BLACK offset: 1.0 },
                        ]
                    }
                };
        def frame2: Rectangle = Rectangle {
                    x: -5.5, y: -3
                    width: 11, height: 3
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                        proportional: true
                        stops: [
                            Stop { color: Color.GRAY offset: 0.0 },
                            Stop { color: Color.WHITE offset: 0.3 },
                            Stop { color: Color.BLACK offset: 1.0 },
                        ]
                    }
                };
        def frame3: Rectangle = Rectangle {
                    x: -5.5, y: 14
                    width: 11, height: 3
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                        proportional: true
                        stops: [
                            Stop { color: Color.GRAY offset: 0.0 },
                            Stop { color: Color.WHITE offset: 0.3 },
                            Stop { color: Color.BLACK offset: 1.0 },
                        ]
                    }
                };
        def frame4: ShapeSubtract = ShapeSubtract {
                    a: [
                        Rectangle { x: 4.5, y: 3
                            width: 10, height: 8
                        },
                        Ellipse { centerX: 4.5, centerY: 7
                            radiusX: 2, radiusY: 4
                        }
                    ]
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                        proportional: true
                        stops: [
                            Stop { color: Color.GRAY offset: 0.0 },
                            Stop { color: Color.WHITE offset: 0.3 },
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
        return Group {
                    content: [
                        frame1, frame2, frame3, frame4,
                        ImageView {
                            x: 12, y: -6
                            image: Image {
                                url: "{__DIR__}pressure.png"
                            }
                        },
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 8
                            }
                            x: 18, y: 9
                            content: bind "{%1.2f value}"
                        },
                    ]
                }
    }

}
