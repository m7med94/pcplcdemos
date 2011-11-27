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
import javafx.animation.*;
import javafx.scene.shape.Line;
import plant.elements.RippleAlarmArc;

public class TankC extends CustomNode {

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
            Ripp(40, 10, Color.RED);
            colorHHL = Color.RED;
            present = true;
        } else {
            colorHHL = Color.DARKRED;
        }
        //AlarmHL
        if (value >= levelHL) {
            //Ripp(40, 20, Color.GREEN);
            colorHL = Color.LIME;
            //present = true;
        } else {
            colorHL = Color.DARKGREEN;
        }
        //AlarmLL
        if (value <= levelLL) {
            Ripp(40, 60, Color.RED);
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
                centerX: 40, centerY: 10
                radiusX: 2, radiusY: 4
                fill: bind colorHHL
            };
    var alarmHL: Ellipse = Ellipse {
                centerX: 40, centerY: 20
                radiusX: 2, radiusY: 4
                fill: bind colorHL
            };
    var alarmLL: Ellipse = Ellipse {
                centerX: 40, centerY: 60
                radiusX: 2, radiusY: 4
                fill: bind colorLL
            };
    def frame = ShapeSubtract {
                a: [
                    Rectangle { x: 0, y: 0 width: 40, height: 65
                    },
                    Ellipse { centerX: 20, centerY: 65
                        radiusX: 20, radiusY: 4
                    }
                ]
                b: Ellipse {
                    centerX: 20, centerY: 0
                    radiusX: 20, radiusY: 4
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
                centerX: 20, centerY: 0
                radiusX: 20, radiusY: 4
                fill: Color.GRAY
            };
    def leveltank = Rectangle {
                x: -5, y: bind 60 - value / 2.0
                width: 5, height: 1
                fill: Color.RED
            };
    def ticks = Group {
                //Instance of creating the y-axis tick lines and text
                content: for (i in [0..10]) {
                    [
                        Line {
                            startX: 1,
                            startY: 60 - i * 5
                            endX: 4,
                            endY: 61 - i * 5
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
            }
    //Add text with level value                   
    def textlevel = Text {
                font: Font {
                    name: "Arial Bold"
                    size: 12
                }
                x: 10, y: 40
                content: bind "{value as Integer}%"
            }
    //Add titles below Tank
    def title = Text {
                font: Font {
                    name: "Arial Bold"
                    size: 8
                }
                x: 12, y: 65
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
