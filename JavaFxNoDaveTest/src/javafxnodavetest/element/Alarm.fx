/*
 * Alarm.fx
 *
 * Created on 29-mei-2010, 16:30:15
 */
package javafxnodavetest.element;

/**
 * @author Alex Sentcha
 */
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.shape.Ellipse;
import javafxnodavetest.element.RippleAlarm;

public class Alarm extends CustomNode {

    public var colorHL = Color.DARKRED;
    public var name = "Alarm";
    var ripper = RippleAlarm {};

    function Ripp(mX: Integer, mY: Integer) {
        ripper.AlarmCenterX = mX;
        ripper.AlarmCenterY = mY;
        ripper.createRipple();
        ripper.generate.play();
    };

    public function SetAlarm(present: Boolean) {
        if (present == true) {
            Ripp(0, 0);
            colorHL = Color.RED;
        } else {
            ripper.generate.stop();
            colorHL = Color.DARKRED;
        }
    }

    var alarmA: Ellipse = Ellipse {
                centerX: 0, centerY: 0
                radiusX: 4, radiusY: 6
                fill: bind colorHL
            };

    public override function create(): Node {
        return Group {
                    content: [
                        alarmA, ripper
                    ]
                }
    }

}
