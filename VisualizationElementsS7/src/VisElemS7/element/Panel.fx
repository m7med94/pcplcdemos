/*
 * Panel.fx
 *
 * Created on 1-jun-2010, 14:42:08
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
import javafx.scene.paint.RadialGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.Circle;
import javafx.scene.transform.Rotate;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

public class Panel extends CustomNode {

    public var name = "Panel";
    public var OnOff = 30;

    public override function create(): Node {
        return Group {
                    content: [
                        //switch
                        Text {
                            fill: Color.BLACK
                            font: Font {name: "Arial Bold" size: 10}
                            x: 0, y: 0 content: "PROCES"
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font {name: "Arial Bold" size: 10}
                            x: 0, y: 10 content: "OFF - ON"
                        },
                        Circle {
                            centerX: 20, centerY: 25
                            radius: 12
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                                stops: [
                                    Stop {color: Color.SILVER offset: 0.0},
                                    Stop {color: Color.GRAY offset: 1.0},
                                ]
                            }
                        },
                        Circle {
                            centerX: 20, centerY: 25 radius: 8
                            fill: Color.BLACK
                        },
                        Rectangle {
                            x: 17, y: 14
                            width: 6, height: 19
                            fill: Color.WHITE
                            transforms: Rotate {
                                pivotX: 20.0, pivotY: 25.0,
                                angle: bind OnOff
                            }
                        },
                        //led
                        Circle {
                            centerX: 20, centerY: -25
                            radius: 12
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                                stops: [
                                    Stop {color: Color.SILVER offset: 0.0},
                                    Stop {color: Color.GRAY offset: 1.0},
                                ]
                            }
                        },
                        Circle {
                            centerX: 20 centerY: -25 radius: 9
                            stroke: Color.DARKRED
                            fill: bind RadialGradient {
                                centerX: 20, centerY: -25, radius: 9,
                                proportional: false
                                stops: [
                                    Stop {offset: 0.0 color: if (OnOff == 330) then Color.GRAY else Color.WHITE},
                                    Stop {offset: 1.0 color: if (OnOff == 330) then Color.DARKRED else Color.RED}
                                ]
                            }
                        }
                    ]
                }

    }
}
