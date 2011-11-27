/*
 * DosingPompen.fx
 *
 * Created on 4-mei-2009, 13:52:52
 */
package skidsim;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.shape.Polygon;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.effect.Reflection;
import javafx.scene.shape.Circle;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Rotate;
import javafx.scene.text.Text;
import javafx.scene.text.Font;

/**
 * @author AlexSentcha
 */
// Dosing pompen code
public class DosingPompen extends CustomNode {

    public var Flow: String = "--";
    public var DosP: String = "--";
    public var DosRot: Integer = 10;
    public var DosColor = Color.GREY;
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
        DosColor = Color.GREEN
    }

    public function stop() {
        this.timeline.stop();
        DosColor = Color.RED
    }

    function tick() {
        this.rotation += DosRot;
        if (this.rotation == 360) {
            this.rotation = 0;
        }
    }
    public var PompAAN: Integer = 2;

    public override function create(): Node {
        return Group {
                    content: [
                        // HP flow
                        Text {
                            fill: Color.BLACK
                            font: Font {name: "Arial Bold" size: 10}
                            x: 275, y: 45 content: "Flow"
                        },
                        Text {
                            fill: Color.BLUE
                            font: Font {name: "Arial Bold" size: 12}
                            x: 275, y: 60 content: bind Flow
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font {name: "Arial Bold" size: 10}
                            x: 302, y: 60 content: "mL"
                        },
                        //Dossing pomp
                        Text {
                            fill: Color.BLUE
                            font: Font {name: "Arial Bold" size: 12}
                            x: 275, y: 75 content: bind DosP
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font {name: "Arial Bold" size: 10}
                            x: 302, y: 75 content: "%"
                        },
                        Group {
                            //Instance of creating the pumps
                            content: [
                                Circle {
                                    centerX: 300
                                    centerY: 100
                                    radius: 16
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                        proportional: true
                                        stops: [
                                            Stop {offset: 0.0 color: Color.WHITE},
                                            Stop {offset: 1.0 color: Color.GRAY}
                                        ]//Stops
                                    }//Fill
                                    stroke: Color.BLACK
                                }
                                Polygon {
                                    transforms: Rotate {
                                        pivotX: 300, pivotY: 100, angle: bind rotation}
                                    points: [292, 86, 316, 100, 292, 114]
                                    fill: bind DosColor
                                }
                            ]
                            effect: Reflection {fraction: 0.9 topOpacity: 0.5 topOffset: 2.5}
                        }
                    ]
                };
    }
}
