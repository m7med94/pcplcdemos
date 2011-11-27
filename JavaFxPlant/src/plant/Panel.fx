/*
 * Panel.fx
 *
 * Created on 15-feb-2010, 23:36:55
 */
/**
 * @author Alex Sentcha
 */
package plant;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.Circle;
import javafx.scene.transform.Rotate;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import plant.control.*;
import javafx.scene.layout.LayoutInfo;

/**
 * @author AlexSentcha
 */
public class Panel extends CustomNode {


    // Instance of creating ...
    def frame = Rectangle {
                x: 0, y: 0
                width: 240, height: 200
                fill: Color.TRANSPARENT
                strokeWidth: 3.0
                stroke: Color.GRAY
            };
    // Start button on-off
    def buttonOn = Group {
                translateX: 50
                translateY: 20
                content: [
                    Text {
                        fill: Color.BLACK
                        font: Font { name: "Arial Bold" size: 8 }
                        x: 5, y: 0 content: "PROCES"
                    },
                    Text {
                        fill: Color.BLACK
                        font: Font { name: "Arial Bold" size: 8 }
                        x: 5, y: 10 content: "OFF - ON"
                    },
                    Circle {
                        centerX: 20, centerY: 25
                        radius: 12
                        fill: LinearGradient {
                            startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                            stops: [
                                Stop { color: Color.SILVER offset: 0.0 },
                                Stop { color: Color.GRAY offset: 1.0 },
                            ]
                        }
                    },
                    Circle {
                        centerX: 20, centerY: 25
                        radius: 8
                        fill: Color.BLACK
                    },
                    Rectangle {
                        x: 17, y: 14
                        width: 6, height: 19
                        fill: Color.WHITE
                        transforms: Rotate {
                            pivotX: 20.0, pivotY: 25.0,
                            angle: 30//bind PanSkidAan
                        }
                    }// end of Start button
                ]
            };
def sliderLayout = LayoutInfo{ width: 100 };
def sliderCV1 =  LabeledSlider {
                translateX: 20
                translateY: 90
                text: "Control valve 1"
                value:   88.0
                minimum: 10.0
                maximum: 90.0
                width: bind sliderLayout.width as Integer
                padding: 75
                layoutInfo: sliderLayout
          };
def dummy1: Number = bind sliderCV1.value on replace {
                Main.setpoint[0] = sliderCV1.value as Integer;
            };
def sliderCV2 =  LabeledSlider {
                translateX: 20
                translateY: 130
                text: "Control valve 2"
                value:   23.0
                minimum: 10.0
                maximum: 90.0
                width: bind sliderLayout.width as Integer
                padding: 75
                layoutInfo: sliderLayout
          };
def dummy2: Number = bind sliderCV2.value on replace {
                Main.setpoint[1] = sliderCV2.value as Integer;
            };
def sliderCV3 =  LabeledSlider {
                translateX: 20
                translateY: 170
                text: "Control valve 3"
                value:   36.0
                minimum: 10.0
                maximum: 90.0
                width: bind sliderLayout.width as Integer
                padding: 75
                layoutInfo: sliderLayout
          };
def dummy3: Number = bind sliderCV3.value on replace {
                Main.setpoint[2] = sliderCV3.value as Integer;
            };

    public override function create(): Node {
        return Group {
                    content: [
                        frame, buttonOn, sliderCV1, sliderCV2, sliderCV3,
                    ]
                }
    }

}

