/*
 * Reactor.fx
 *
 * Created on 4-mei-2009, 19:02:06
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
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Rotate;
import javafx.scene.transform.Scale;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.shape.*;
import plant.elements.RippleAlarmArc;

/**
 * @author AlexSentcha
 */
// place your code here
public class Reactor extends CustomNode {

    public var value = 0.0;
    public var name = "Tank";
    public var color = Color.TAN;
    public var move: Number = 0;
    var ripper = RippleAlarmArc {};
    public var levelHHL: Number = 95;
    public var levelHL: Number = 90;
    public var levelLL: Number = 5;
    var AgitRotation: Number = 0;
    var AgitWork: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 50ms
                        action: tick
                    }
                ]
            };
    init{AgitWork.play();}
    public function startAgitator() {
        this.AgitWork.play();
    }
    public function stopAgitator() {
        this.AgitWork.stop();
    }
    function tick() {
        this.AgitRotation += move;
        if (this.AgitRotation == 360) {
            this.AgitRotation = 0;
        }
    }
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
                            tickA();
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

    function tickA() {
        var present = false;

        if (value >= levelHHL) {
            Ripp(120, 15, Color.RED);
            colorHHL = Color.RED;
            present = true;
        } else {
            colorHHL = Color.DARKRED;
        }
        //AlarmHL
        if (value >= levelHL) {
            //Ripp(115, 25, Color.GREEN);
            colorHL = Color.LIME;
        //present = true;
        } else {
            colorHL = Color.DARKGREEN;
        }
        //AlarmLL
        if (value <= levelLL) {
            Ripp(115, 140, Color.RED);
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
                centerX: 115, centerY: 15
                radiusX: 2, radiusY: 4
                fill: bind colorHHL
            };
    var alarmHL: Ellipse = Ellipse {
                centerX: 115, centerY: 25
                radiusX: 2, radiusY: 4
                fill: bind colorHL
            };
    var alarmLL: Ellipse = Ellipse {
                centerX: 115, centerY: 140
                radiusX: 2, radiusY: 4
                fill: bind colorLL
            };
    //reactor
    def reactor = ShapeSubtract {
                stroke: Color.GRAY
                strokeWidth: 1
                a: [
                    Rectangle { x: 0, y: 0
                        width: 120, height: 150
                    },
                    Ellipse { centerX: 60, centerY: 150
                        radiusX: 60, radiusY: 10
                    }
                ]
                b: Ellipse {
                    centerX: 60, centerY: 0
                    radiusX: 60, radiusY: 10
                }
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
    def reactorlid = Ellipse {
                centerX: 60, centerY: 0
                radiusX: 60, radiusY: 10
                fill: Color.BLACK
            };
    def agitator = Group {
                content: [
                    //Agitator motor
                    ShapeSubtract {
                        a: [
                            Rectangle { x: 50 y: -20 width: 20 height: 20
                            },
                            Ellipse { centerX: 60 centerY: 0
                                radiusX: 10 radiusY: 3
                            }
                        ]
                        b: Ellipse {
                            centerX: 60 centerY: -20
                            radiusX: 10 radiusY: 3
                        }
                        fill: LinearGradient {
                            startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                            proportional: true
                            stops: [
                                Stop { color: Color.GRAY offset: 0.0 },
                                Stop { color: Color.WHITE offset: 0.3 },
                                Stop { color: Color.BLACK offset: 1.0 },
                            ]
                        }
                    },
                    Ellipse {
                        centerX: 60, centerY: -20
                        radiusX: 10, radiusY: 3
                        fill: Color.DARKGRAY
                    },
                    Ellipse {
                        centerX: 60, centerY: -20
                        radiusX: 2, radiusY: 1
                        fill: Color.BLACK
                    }
                    //Agitator rotation
                    Ellipse {
                        fill: Color.BLACK
                        centerX: 60 centerY: 340
                        radiusX: 25 radiusY: 5
                        transforms: [
                            Scale { x: 1.0, y: 0.4 }
                            Rotate { pivotX: 60, pivotY: 340,
                                angle: bind AgitRotation }
                        ]
                    },
                    Ellipse {
                        fill: Color.BLACK
                        centerX: 60 centerY: 340
                        radiusX: 5 radiusY: 25
                        transforms: [
                            Scale { x: 1.0, y: 0.4 }
                            Rotate { pivotX: 60, pivotY: 340,
                                angle: bind AgitRotation }
                        ]
                    },
                    Ellipse {
                        centerX: 60, centerY: 136
                        radiusX: 3, radiusY: 1
                        fill: Color.GRAY
                    },
                    //staff
                    Rectangle { x: 59 y: 3 width: 2
                        height: 135
                        fill: Color.BLACK
                    },
                ]
            };
    //liquid
    def liquid = ShapeSubtract {
                cache: true
                translateY: bind 150 - value * 1.5
                fill: bind color
                opacity: 0.5
                a: bind [
                    Rectangle {
                        //     opacity: 0.2
                        x: 0, y: 0
                        width: 120, height: value * 1.5
                        fill: Color.BLACK
                    },
                    Ellipse {
                        //stroke: Color.BLACK
                        //        opacity: 0.2
                        centerX: 60, centerY: value * 1.5
                        radiusX: 60, radiusY: 10
                        fill: Color.BLACK
                    }
                ]
                b: Ellipse {
                    stroke: Color.BLACK
                    //  opacity: 0.2
                    centerX: 60, centerY: 0
                    radiusX: 60, radiusY: 10
                    fill: Color.BLACK
                }
            };
    //liquid mirror
    def liquidmirror = Ellipse {
                stroke: Color.LIGHTGRAY
                opacity: 0.3
                centerX: 60, centerY: bind 150 - value * 1.5
                radiusX: 60, radiusY: 10
                fill: bind color
            };
    //Add titles below Tank
    def title = Text {
                font: Font {
                    name: "Arial Bold"
                    size: 8
                }
                x: 43, y: 155
                content: bind "{name}"
            };
    //Add text with level value
    def valuetext =
            Text {
                font: Font {
                    name: "Arial Bold"
                    size: 12
                }
                x: 26, y: 42
                content: bind "{%3.1f value}%"
            };

    public override function create(): Node {
        return Group {
                    content: [
                        reactor, reactorlid, agitator, liquid, liquidmirror,
                        title, valuetext,
                        //Alarm
                        alarmHHL, alarmHL, alarmLL, ripper,
                    ]
                }
    }
}
