/*
 * RippleAlarm.fx
 *
 * Created on 17-mei-2009, 17:52:53
 */

package skidsim;
import javafx.scene.shape.*;
import javafx.animation.*;
import javafx.scene.paint.*;
import javafx.scene.*;

/**
 * @author AlexSentcha
 */
class Ripple extends Circle {
    override var stroke = Color.RED;
    override var fill = null;
    override var centerX = 20;
    override var centerY = 20;
    var anim = Timeline {
        keyFrames: [
            at(0s) { radius => 0 tween Interpolator.LINEAR },
            at(1s) { opacity => 1.0 tween Interpolator.LINEAR },
            at(3s) { radius => 30 tween Interpolator.LINEAR }
            at(3s) { opacity => 0.0 tween Interpolator.LINEAR }
        ]
    }
}

public class RippleAlarm extends CustomNode{
    var ripples:Node[];
    public var AlarmCenterX = 20.0;
    public var AlarmCenterY = 20.0;

    override public function create():Node {
        return Group{
            content: bind ripples;
        }
    }

    public function createRipple():Void {
        var rip = Ripple {
            centerX: AlarmCenterX
            centerY: AlarmCenterY
        };
        insert rip into ripples;
        rip.anim.play();
        var remover = Timeline {
            keyFrames: [
                KeyFrame {
                    time: 3s
                    action:function() {
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
            action: createRipple
        }
        repeatCount: Timeline.INDEFINITE
    }
}
