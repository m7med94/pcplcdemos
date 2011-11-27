/**
 * @author Alex Senthca
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
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Scale;
import javafx.scene.transform.Rotate;

public class TankF extends CustomNode {

    public var value = 0.0;
    public var name = "Tank";
    public var color = Color.LIGHTSKYBLUE;

    public var move = 5;

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
    var colorHHL = Color.DARKRED;
    var colorHL = Color.DARKGREEN;
    var colorLL = Color.DARKRED;
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
                        //tank
                         ShapeSubtract {
                            a: [
                                Rectangle {x: 0, y: 0
                                    width: 60, height: 100
                                },
                                Ellipse {centerX: 30, centerY: 100
                                    radiusX: 30, radiusY: 5
                                }
                            ]
                            b: [Ellipse {
                                    centerX: 30, centerY: 0
                                    radiusX: 30, radiusY: 5
                                }
                            ]
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                proportional: true
                                stops: [
                                    Stop {color: Color.GRAY offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.3},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                            }
                        },
                        Ellipse {
                            centerX: 30, centerY: 0
                            radiusX: 30, radiusY: 5
                            fill: Color.GRAY
                        },
                        //Agitator motor
                        ShapeSubtract {
                            a: [
                                Rectangle {x: 20 y: -20 width: 20 height: 20
                                },
                                Ellipse {centerX: 30 centerY: 0
                                    radiusX: 10 radiusY: 3
                                }
                            ]
                            b: Ellipse {
                                centerX: 30 centerY: -20
                                radiusX: 10 radiusY: 3
                            }
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                                proportional: true
                                stops: [
                                    Stop {color: Color.GRAY offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.3},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                            }
                        },
                        Ellipse {
                            centerX: 30, centerY: -20
                            radiusX: 10, radiusY: 3
                            fill: Color.DARKGRAY
                        },
                        Ellipse {
                            centerX: 30, centerY: -20
                            radiusX: 2, radiusY: 1
                            fill: Color.BLACK
                        }
                        //Agitator rotation
                        Ellipse {
                            fill: Color.BLACK
                            centerX: 30 centerY: 200
                            radiusX: 15 radiusY: 3
                            transforms: [
                                Scale {x: 1.0, y: 0.4}
                                Rotate {pivotX: 30, pivotY: 200,
                                    angle: bind AgitRotation}
                            ]
                        },
                        Ellipse {
                            fill: Color.BLACK
                            centerX: 30 centerY: 200
                            radiusX: 3 radiusY: 15
                            transforms: [
                                Scale {x: 1.0, y: 0.4}
                                Rotate {pivotX: 30, pivotY: 200,
                                    angle: bind AgitRotation}
                            ]
                        },
                        Ellipse {
                            centerX: 30, centerY: 80
                            radiusX: 3, radiusY: 1
                            fill: Color.GRAY
                        },
                        //staff
                        Rectangle {x: 29 y: 3 width: 2
                            height: 77
                            fill: Color.BLACK
                        },

                        //liquid
                        ShapeSubtract {
                            cache: true
                            translateY: bind 100 - value
                            fill: bind color
                            opacity: 0.5
                            a: bind [
                                Rectangle {
                                    //     opacity: 0.2
                                    x: 0, y: 0
                                    width: 60, height: value
                                    fill: Color.BLACK
                                },
                                Ellipse {
                                    //stroke: Color.BLACK
                                    //        opacity: 0.2
                                    centerX: 30, centerY: value
                                    radiusX: 30, radiusY: 5
                                    fill: Color.BLACK
                                }
                            ]
                            b: Ellipse {
                                stroke: Color.BLACK
                                //  opacity: 0.2
                                centerX: 30, centerY:  0
                                radiusX: 30, radiusY: 5
                                fill: Color.BLACK
                            }
                            
                        },
                        //liquid mirror
                       Ellipse {
                            stroke: Color.LIGHTGRAY
                            opacity: 0.3
                            centerX: 30, centerY: bind 100-value
                            radiusX: 30, radiusY: 5
                            fill: bind color
                        },
                        //Add text with level value
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 6, y: 52
                            content: bind "{value as Integer}%"
                        },
                        //Add titles below Tank
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 8
                            }
                            x: 20, y: 100
                            content: bind "{name}"
                        }
                    ]
                }
    }
}
