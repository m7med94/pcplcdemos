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
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Scale;
import javafx.scene.transform.Rotate;
import javafx.scene.shape.Polygon;

public class Gutter extends CustomNode {

    public var wideu = 20;
    public var wideb = 10;

    public override function create(): Node {
        return Group {
                    content: [
                        ShapeSubtract {
                            a: [Polygon {
                                    points: [
                                        0, 0, wideu, 0,
                                        wideu-((wideu-wideb)/2), 20, (wideu-wideb)/2, 20
                                    ]
                                },
                                Ellipse { centerX: wideu/2, centerY: 20
                                    radiusX: wideb/2, radiusY: wideb/8
                                }
                            ]
                            b: Ellipse {
                                centerX: wideu/2, centerY: 0
                                radiusX: wideu/2, radiusY: wideu/6
                            }
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                proportional: true
                                stops: [
                                    Stop { color: Color.GRAY offset: 0.0 },
                                    Stop { color: Color.WHITE offset: 0.4 },
                                    Stop { color: Color.BLACK offset: 1.0 },
                                ]
                            }
                        },
                        Ellipse {
                            strokeWidth:1;
                            stroke: Color.DARKGRAY
                            centerX: wideu/2, centerY: 0
                            radiusX: wideu/2, radiusY: wideu/6
                           fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                proportional: true
                                stops: [
                                    Stop { color: Color.GRAY offset: 0.0 },
                                    Stop { color: Color.WHITE offset: 0.6 },
                                    Stop { color: Color.BLACK offset: 1.0 },
                                ]
                            }
                        }
                    ]
                }
    }

}
