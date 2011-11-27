/*
 * BucketElevator.fx
 *
 * Created on 1-jun-2010, 0:23:04
 */
package VisElemS7.element;
/**
 * @author Alex Sentcha
 */
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.animation.*;
import javafx.animation.transition.*;
import javafx.scene.shape.*;
import javafx.scene.paint.Color;

public class BucketElevator extends CustomNode {

    public var name = "Conveyor";
    public var distance: Number = 100;
    public var TrColor = Color.GREY;

    public function Play() {
        anim.play();
    }
    def bar = ShapeSubtract {
                stroke: Color.BLACK
                strokeWidth: 1
                fill: Color.DARKGRAY
                a: [Rectangle {
                        width: 10
                        height: 20
                    }
                    Circle {
                        centerX: 0, centerY: 10
                        radius: 10
                    }
                ]
            };
    def track = Path {
                //visible: false
                stroke: Color.BLACK
                strokeWidth: 1
                elements: [
                    MoveTo {x: 0 y: 0},
                    VLineTo {y: -100.0},
                    ArcTo {x: 50.0, y: -100.0 radiusX: 25.0, radiusY: 25.0 sweepFlag: true},
                    VLineTo {y: 0.0},
                    ArcTo {x: 0.0, y: 0.0 radiusX: 25.0, radiusY: 25.0 sweepFlag: true},
                ]
            };
    def anim = PathTransition {
                node: bar
                path: AnimationPath.createFromPath(track)
                orientation: OrientationType.ORTHOGONAL_TO_TANGENT
                interpolator: Interpolator.LINEAR
                duration: 5s
                repeatCount: Timeline.INDEFINITE
            };

    public override function create(): Node {
        return Group {
                    content: [track, bar]
                }

    }
}
