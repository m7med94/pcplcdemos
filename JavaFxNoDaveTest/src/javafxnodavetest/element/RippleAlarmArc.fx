/*
 * RippleAlarmArc.fx
 *
 */
package javafxnodavetest.element;

import javafx.scene.shape.*;
import javafx.animation.*;
import javafx.scene.paint.*;
import javafx.scene.*;

class RippleArc extends Arc {

    override var stroke = Color.RED;
    override var fill = null;
    override var centerX = 20;
    override var centerY = 20;
    override var startAngle = -60;
    override var length = 120;
    var anim = Timeline {
                keyFrames: [
                    at (0s) {radiusX => 0 tween Interpolator.LINEAR},
                    at (0s) {radiusY => 0 tween Interpolator.LINEAR},
                    at (1s) {opacity => 1.0 tween Interpolator.LINEAR},
                    at (3s) {radiusX => 30 tween Interpolator.LINEAR}
                    at (3s) {radiusY => 30 tween Interpolator.LINEAR}
                    at (3s) {opacity => 0.0 tween Interpolator.LINEAR}
                ]
            }
}

public class RippleAlarmArc extends CustomNode {

    var ripples: Node[];
    public var AlarmCenterX = 20.0;
    public var AlarmCenterY = 20.0;
    public var ColorRipp = Color.RED;

    override public function create(): Node {
        return Group {
                    content: bind ripples;
                }
    }

    public function createRippleArc(): Void {
        var rip = RippleArc {
                    centerX: AlarmCenterX
                    centerY: AlarmCenterY
                    stroke: ColorRipp
                };
        insert rip into ripples;
        rip.anim.play();
        var remover = Timeline {
                    keyFrames: [
                        KeyFrame {
                            time: 3s
                            action: function() {
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
                    time: 0.5s
                    action: createRippleArc
                }
                repeatCount: Timeline.INDEFINITE
            }
}
