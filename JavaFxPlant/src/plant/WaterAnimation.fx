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
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;

public class WaterAnimation extends CustomNode {

    public var vis: Boolean = true;
    def drop = Circle {
                visible: bind vis
                radius: 1
                fill: Color.BLUE
            }
    def track = Path {
                visible: false
                stroke: Color.BLACK
                strokeWidth: 1
                elements: [
                    MoveTo { x: 588 y: 273 },
                    VLineTo { y: 570.0 },
                ]
            };
    def anim = PathTransition {
                node: drop
                path: AnimationPath.createFromPath(track)
                orientation: OrientationType.ORTHOGONAL_TO_TANGENT
                interpolator: Interpolator.LINEAR
                duration: 6s
                repeatCount: Timeline.INDEFINITE
            };
    def lake = Path {
                translateX: 540
                translateY: 530
                stroke: Color.DODGERBLUE
                opacity: 0.2
                fill: LinearGradient {
                    startX: 60, startY: 10, endX: 10 endY: 80,
                    proportional: false
                    stops: [
                        Stop { offset: 0.0 color: Color.DODGERBLUE },
                        Stop { offset: 0.5 color: Color.BLUE },
                        Stop { offset: 1.0 color: Color.LIGHTSKYBLUE }
                    ]
                }//LinearGradient
                elements: [
                    MoveTo { x: 15 y: 15 },
                    ArcTo { x: 50 y: 10 radiusX: 20 radiusY: 20 sweepFlag: true },
                    ArcTo { x: 70 y: 20 radiusX: 20 radiusY: 20 sweepFlag: true },
                    ArcTo { x: 50 y: 60 radiusX: 20 radiusY: 20 sweepFlag: true },
                    ArcTo { x: 20 y: 50 radiusX: 10 radiusY: 5 sweepFlag: true },
                    ArcTo { x: 15 y: 15 radiusX: 10 radiusY: 10 sweepFlag: true },
                ]
            }//Path

    public override function create(): Node {
        Group {
            content: [
                Group {
                    content: [ lake, track, drop, ripper]
                    translateX: 0
                    translateY: 0
                }
            ]
        }
    }
    init {
        anim.play();
        this.DropWork.play();
    }

    public function play() {
        anim.play();
        this.DropWork.play();
    }

    public function pause() {
        anim.pause();
        this.DropWork.stop();
    }
    var ripper = DropRipple {};
    function Ripp(mX: Integer, mY: Integer) {
        ripper.DropCenterX = mX;
        ripper.DropCenterY = mY;
        ripper.createRipple();
        ripper.generate.play();
    };
    var DropWork: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 6.0s
                        action: tick
                    }
                ]
            };
    function tick() {
        Ripp(588, 570);
    }

}
class Ripple extends Ellipse {

    override var stroke = Color.LIGHTBLUE;
    override var fill = null;
    override var centerX = 20;
    override var centerY = 20;
    var anim = Timeline {
                keyFrames: [
                    at(0s) { radiusX => 0 tween Interpolator.LINEAR },
                    at(0s) { radiusY => 0 tween Interpolator.LINEAR },
                    at(1s) { opacity => 1.0 tween Interpolator.LINEAR },
                    at(3s) { radiusX=> 30 tween Interpolator.LINEAR }
                    at(3s) { radiusY => 15 tween Interpolator.LINEAR }
                    at(3s) { opacity => 0.0 tween Interpolator.LINEAR }
                ]
            }
}
public class DropRipple extends CustomNode {

    var ripples: Node[];
    public var DropCenterX = 20.0;
    public var DropCenterY = 20.0;

    override public function create(): Node {
        return Group {
                    content: bind ripples;
                }
    }

    public function createRipple(): Void {
        var rip = Ripple {
                    centerX: DropCenterX
                    centerY: DropCenterY
                };
        insert rip into ripples;
        rip.anim.play();
        var remover = Timeline {
                    keyFrames: [
                        KeyFrame {
                            time: 3s
                            action: function () {
                                delete rip from ripples;
                                rip.anim.stop();
                            }
                        },
                    ]
                };
        remover.play();
    }
    public var generate = Timeline {
                keyFrames: KeyFrame {
                    time: 6.0s
                    action: createRipple
                }
                repeatCount: Timeline.INDEFINITE
            }
}
