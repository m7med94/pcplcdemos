/*
 * Conveyor.fx
 *
 * Created on 29-mei-2010, 20:48:23
 */
package javafxnodavetest.element;

/**
 * @author Alex Sentcha
 */
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Rotate;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Polygon;
import javafx.scene.effect.Reflection;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Line;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.Font;

public class Conveyor extends CustomNode {

    public var name = "Conveyor";
    public var distance: Number = 100;
    public var TrColor = Color.GREY;
    public var move: Number = 10;
    var rotation: Number = 0;
    var timeline: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 50ms
                        action: tick
                    }
                ]
            };

    public function start() {
        this.timeline.play();
        TrColor = Color.GREEN;
    }

    public function stop() {
        this.timeline.stop();
        TrColor = Color.RED;
    }

    function tick() {
        this.rotation += move;
        if (this.rotation == 360) {
            this.rotation = 0;
        }
    }

    public override function create(): Node {
        return Group {
                    content: [
                        Group {
                            translateX: bind (-1 * distance)
                            translateY: 0
                            content: [ //whiel 1
                                Circle {
                                    centerX: 0 centerY: 0
                                    radius: 12
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                        proportional: true
                                        stops: [
                                            Stop { offset: 0.0 color: Color.WHITE },
                                            Stop { offset: 1.0 color: Color.GRAY }
                                        ]//Stops
                                    }//Fill
                                    stroke: Color.BLACK
                                }
                                Polygon {
                                    transforms: Rotate {
                                        pivotX: 0, pivotY: 0, angle: bind rotation }
                                    points: [-6, -6, 6, -6, 6, 6, -6, 6,]
                                    fill: bind TrColor
                                }
                                Circle {
                                    centerX: 0 centerY: 0
                                    radius: 2
                                    fill: Color.BLACK
                                }
                            ]
                        },
                        Line {
                            startX: bind (-1 * distance), startY: -12
                            endX: bind distance, endY: -12
                            strokeWidth: 1
                            stroke: Color.BLACK
                        },
                        Line {
                            startX: bind (-1 * distance), startY: 12
                            endX: bind distance, endY: 12
                            strokeWidth: 1
                            stroke: Color.BLACK
                        },
                        ShapeSubtract {
                            cache: true
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                    Stop { offset: 0.0 color: Color.WHITE },
                                    Stop { offset: 1.0 color: Color.GRAY }
                                ]//Stops
                            }//Fill
                            opacity: 1.0
                            a: Rectangle {
                                opacity: 0.2
                                x: (-1 * (distance - 5)), y: -10,
                                width: ((distance - 5) * 2), height: 20
                                fill: Color.BLACK
                            },
                            b: [Ellipse {
                                    stroke: Color.BLACK
                                    centerX: (-1 * (distance - 5)), centerY: 0
                                    radiusX: 12, radiusY: 12
                                    fill: Color.BLACK
                                },
                                Ellipse {
                                    stroke: Color.BLACK
                                    centerX: (distance - 5), centerY: 0
                                    radiusX: 12, radiusY: 12
                                    fill: Color.BLACK
                                }]
                        }
                        //Add text with level value
                        Text {
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: (-1 * (distance - 55)), y: 4
                            content: bind name
                        }
                        //whiel 2
                        Group {
                            translateX: bind distance
                            translateY: 0
                            content: [
                                Circle {
                                    centerX: 0 centerY: 0
                                    radius: 12
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                        proportional: true
                                        stops: [
                                            Stop { offset: 0.0 color: Color.WHITE },
                                            Stop { offset: 1.0 color: Color.GRAY }
                                        ]//Stops
                                    }//Fill
                                    stroke: Color.BLACK
                                }
                                Polygon {
                                    transforms: Rotate {
                                        pivotX: 0, pivotY: 0, angle: bind rotation }
                                    points: [-6, -6, 6, -6, 6, 6, -6, 6,]
                                    fill: bind TrColor
                                }
                                Circle {
                                    centerX: 0 centerY: 0
                                    radius: 2
                                    fill: Color.BLACK
                                }
                            ]
                        }
                    ]
                    effect: Reflection { fraction: 0.9 topOpacity: 0.5 topOffset: 2.5 }
                }
    }

}
