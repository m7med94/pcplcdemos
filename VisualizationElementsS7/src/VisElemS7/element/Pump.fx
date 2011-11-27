/*
 * Pump.fx
 *
 * Created on 29-mei-2010, 0:41:33
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
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Rotate;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Polygon;
import javafx.scene.effect.Reflection;

public class Pump extends CustomNode {

    public var name = "Pump";
    public var move = 10;
    public var TrColor = Color.GREY;
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
                        Circle {
                            centerX: 0 centerY: 0
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
                                pivotX: 0, pivotY: 0, angle: bind rotation}
                            points: [-8, -14, 16, 0, -8, 14]
                            fill: bind TrColor
                        }
                    ]
                    effect: Reflection {fraction: 0.9 topOpacity: 0.5 topOffset: 2.5}
                }
    }
}
