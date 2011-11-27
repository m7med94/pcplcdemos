/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package plant;

/**
 * @author Alex Sentcha
 */
import javafx.animation.*;
import javafx.animation.transition.*;
import javafx.scene.*;
import javafx.scene.paint.Color;
import javafx.scene.shape.*;

public class PathAnimation extends CustomNode {

public var vis: Boolean = true;

    def bar = Rectangle {
                visible: bind vis
                width: 5
                height: 5
                fill: Color.WHITE
            };
    def track = Path {
                visible: false
                stroke: Color.BLACK
                strokeWidth: 1
                elements: [
                    MoveTo { x: -10 y: 50 },
                    HLineTo { x: 155.0 },
                    ArcTo { x: 165.0, y: 60.0 radiusX: 10.0, radiusY: 10.0 sweepFlag: true },
                    VLineTo { y: 80.0 },
                    HLineTo { x: 110.0 },
                    ArcTo {x: 100.0, y: 90.0 radiusX: 10.0, radiusY: 10.0 sweepFlag: false},
                    VLineTo { y: 105.0 },
                ]
            };
    def anim = PathTransition {
                node: bar
                path: AnimationPath.createFromPath( track )
                orientation: OrientationType.ORTHOGONAL_TO_TANGENT
                interpolator: Interpolator.LINEAR
                duration: 5s
                repeatCount: Timeline.INDEFINITE
            };

    public override function create(): Node {
        Group {
            content: [
                Group {
                    content: [track, bar]
                    translateX: 0
                    translateY: 0
                }
            ]
        }
    }
    init{
        anim.play();
    }

    public function play() {
        anim.play();
        vis = true;
    }

    public function pause() {
        anim.pause();
    }

}
