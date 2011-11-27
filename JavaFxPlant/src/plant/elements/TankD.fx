/*
 * TankC.fx
 *
 * Created on 26-mei-2010, 18:37:23
 */
package plant.elements;

/**
 * @author Alex Senthca
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
import javafx.scene.shape.Line;
import javafx.animation.*;
import plant.elements.RippleAlarmArc;

public class TankD extends CustomNode {

    public var value = 0.0;
    public var name = "Tank";
    public var color = Color.TOMATO;
    var ripper = RippleAlarmArc {};
    public var levelHHL: Number = 95;
    public var levelHL: Number = 90;
    public var levelLL: Number = 5;

    function Ripp(mX: Integer, mY: Integer, color: Color) {
        ripper.AlarmCenterX = mX;
        ripper.AlarmCenterY = mY;
        ripper.ColorRipp = color;
        ripper.createRippleArc();
        ripper.generate.play();
    };

    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 1500ms
                        action: function(): Void {
                            tick();
                        }
                    }
                ]
            };
    init{  t1.play(); }

    public function start() {
        t1.play();
    }

    public function stop() {
        t1.stop();
    }

    var colorHHL = Color.DARKRED;
    var colorHL = Color.DARKGREEN;
    var colorLL = Color.DARKRED;

    function tick() {
        var present = false;

        if (value >= levelHHL) {
            Ripp(60, 15, Color.RED);
            colorHHL = Color.RED;
            present = true;
        } else {
            colorHHL = Color.DARKRED;
        }
        //AlarmHL
        if (value >= levelHL) {
            //Ripp(60, 25, Color.GREEN);
            colorHL = Color.LIME;
            //present = true;
        } else {
            colorHL = Color.DARKGREEN;
        }
        //AlarmLL
        if (value <= levelLL) {
            Ripp(60, 160, Color.RED);
            colorLL = Color.RED;
            present = true;
        } else {
            colorLL = Color.DARKRED;
        }
        if (present == false) {
            ripper.generate.stop();
        }

    }

    var alarmHHL: Ellipse = Ellipse {
                centerX: 60, centerY: 15
                radiusX: 2, radiusY: 4
                fill: bind colorHHL
            };
    var alarmHL: Ellipse = Ellipse {
                centerX: 60, centerY: 25
                radiusX: 2, radiusY: 4
                fill: bind colorHL
            };
    var alarmLL: Ellipse = Ellipse {
                centerX: 60, centerY: 160
                radiusX: 2, radiusY: 4
                fill: bind colorLL
            };
    def frame = ShapeSubtract {
                stroke: Color.GRAY
                strokeWidth: 1
                a: [
                    Rectangle { x: 0, y: 0 width: 60, height: 165
                    },
                    Ellipse { centerX: 30, centerY: 165
                        radiusX: 30, radiusY: 5
                    }
                ]
                b: Ellipse {
                    centerX: 30, centerY: 0
                    radiusX: 30, radiusY: 5
                }
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    def lid = Ellipse {
                centerX: 30, centerY: 0
                radiusX: 30, radiusY: 5
                fill: Color.GRAY
            };
    //Level TANK
    def leveltank = Rectangle {
                x: -5, y: bind 160 - value * 1.5
                width: 5, height: 2
                fill: Color.RED
            };
    //Instance of creating the y-axis tick lines and text
    def ticks = Group {
                content: for (i in [0..10]) {
                    [
                        Line {
                            startX: 1,
                            startY: 160 - i * 15
                            endX: 4,
                            endY: 161 - i * 15
                            strokeWidth: 1
                            stroke: Color.BLACK
                        },
                    /*
                    Text {
                    font: Font {
                    name: "Arial Bold"
                    size: 8
                    letterSpacing: 0.15
                    }
                    textAlignment: TextAlignment.LEFT
                    x: -15,
                    y: 162 - i * 15
                    content: "{i * 10}"
                    }
                     */
                    ]
                }
            };
    //Add text with level value
    def textlevel = Text {
                font: Font {
                    name: "Arial Bold"
                    size: 12
                }
                x: 15, y: 88
                content: bind "{value as Integer}%"
            };
    //Add titles below Tank
    def title = Text {
                font: Font {
                    name: "Arial Bold"
                    size: 8
                }
                x: 15, y: 165
                content: bind "{name}"
            }

    public override function create(): Node {
        return Group {
                    content: [
                        //TANK
                        frame, lid, leveltank, ticks, textlevel,
                        title,
                        //Alarm
                        alarmHHL, alarmHL, alarmLL, ripper,
                    ]
                };
    }

}
