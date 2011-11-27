/*
 * Aгитатор.fx
 *
 * Created on 25-mei-2010, 22:21:25
 * @author Alex Sentcha
 */
package VisElemS7.element;

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
import javafx.scene.transform.Scale;
import javafx.scene.transform.Rotate;

public class Agitator extends CustomNode {

    public var name = "Tank";
    public var move = 5;
    public var color = Color.GREEN;
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

    public override function create(): Node {
        return Group {
                    content: [
                        //Agitator rotation
                        Ellipse {
                            fill: Color.BLACK
                            centerX: 30 centerY: 160
                            radiusX: 15 radiusY: 3
                            transforms: [
                                Scale {x: 1.0, y: 0.5}
                                Rotate {pivotX: 30, pivotY: 160,
                                    angle: bind AgitRotation}
                            ]
                        },
                        Ellipse {
                            fill: Color.BLACK
                            centerX: 30 centerY: 160
                            radiusX: 3 radiusY: 15
                            transforms: [
                                Scale {x: 1.0, y: 0.5}
                                Rotate {pivotX: 30, pivotY: 160,
                                    angle: bind AgitRotation}
                            ]
                        },
                        Ellipse {
                            centerX: 30, centerY: 80
                            radiusX: 3, radiusY: 1
                            fill: Color.GRAY
                        },
                        //staff
                        Rectangle {x: 29 y: 20 width: 2
                            height: 60
                            fill: Color.BLACK
           /*                 fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                                proportional: true
                                stops: [
                                    Stop {color: Color.TRANSPARENT offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.5},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                           }
            */
                        },
                        //Agitator motor
                        ShapeSubtract {
                            a: [
                                Rectangle {x: 20 y: 0 width: 20
                                    height: 20
                                },
                                Ellipse {centerX: 30 centerY: 20
                                    radiusX: 10 radiusY: 3
                                }
                            ]
                            b: Ellipse {
                                centerX: 30 centerY: 0
                                radiusX: 10 radiusY: 3
                            }
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                                proportional: true
                                stops: [
                                    Stop {color: Color.TRANSPARENT offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.5},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                            }
                        },
                        Ellipse {
                            centerX: 30, centerY: 0
                            radiusX: 10, radiusY: 3
                            fill: Color.DARKGRAY
                        },
                        Ellipse {
                            centerX: 30, centerY: 0
                            radiusX: 2, radiusY: 1
                            fill: Color.BLACK
                        }
                    ]
                }
    }
}
