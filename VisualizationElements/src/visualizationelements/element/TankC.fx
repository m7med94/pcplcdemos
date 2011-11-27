/*
 * TankC.fx
 *
 * Created on 26-mei-2010, 18:37:23
 */
package visualizationelements.element;

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
import visualizationelements.element.RippleAlarmArc;

public class TankC extends CustomNode {
    public var value = 0.0;
    public var name = "Tank";
    public var color = Color.TOMATO;

    var ripper = RippleAlarmArc {};
    public var colorHHL = Color.DARKRED;
    public var colorHL = Color.DARKGREEN;
    public var colorLL = Color.DARKRED;

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
                        action: function (): Void {
                            tick();
                            }
                    }
                ]
            };

    public function start() {
        t1.play();
    }
    public function stop() {
        t1.stop();
    }
    function tick() {
        var present = false;

        if(value >=90){
            Ripp(40, 10, Color.RED);
            colorHHL = Color.RED;
            present = true;
        }else{
            colorHHL = Color.DARKRED;
        }
        //AlarmHL
        if(value >=80){
            //Ripp(40, 20, Color.GREEN);
            colorHL = Color.GREEN;
            //present = true;
        }else{
             colorHL = Color.DARKGREEN;
        }
        //AlarmLL
        if(value <=10){
            Ripp(40, 60, Color.RED);
            colorLL = Color.RED;
            present = true;
        }else{
            colorLL = Color.DARKRED;
        }
        if (present == false){
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


    public override function create(): Node {
        return Group {
                    content: [
                        //TANK
                        //Add text with level value
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 10, y: 88
                            content: bind "{value as Integer}%"
                        },
                        //Add titles below Tank
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 0, y: -10
                            content: bind "{name}"
                        }
                        ShapeSubtract {
                            a: [
                                Rectangle {x: 0, y: 0 width: 40, height: 65
                                },
                                Ellipse {centerX: 20, centerY: 65
                                    radiusX: 20, radiusY: 6
                                }
                            ]
                            b: Ellipse {
                                centerX: 20, centerY: 0
                                radiusX: 20, radiusY: 6
                            }
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                proportional: true
                                stops: [
                                    Stop {color: Color.TRANSPARENT offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.5},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                            }//Fill
                        },
                        Ellipse {
                            centerX: 20, centerY: 0
                            radiusX: 20, radiusY: 6
                            fill: Color.GRAY
                        },
                        //NIVEAU TANKS
                        Rectangle {
                            x: 10, y: bind 60 - value/2.0
                            width: 5, height: 1
                            fill: Color.RED
                        },
                        Rectangle {
                            x: 5, y: 10
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 15
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 20
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 25
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 30
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 35
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 40
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 45
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 50
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 55
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        Rectangle {
                            x: 5, y: 60
                            width: 5, height: 1
                            fill: Color.GREEN
                        },
                        //Alarm
                        alarmHHL, alarmHL, alarmLL, ripper,

                    ]
                };
    }
}
