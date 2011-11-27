/*
 * Panel.fx
 *
 * Created on 15-feb-2010, 23:36:55
 */
package skidnb;

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


/**
 * @author Alex
 */

public class Panel extends CustomNode{

    public var PanSkidAan = 30;
    public var PanPompTAan = 30;
    public var PanPompDosAuto = 30;

    public override function create(): Node {
        return Group {
            content: [
                // Instance of creating ...
                Rectangle {
                    x: 0, y: 5
                    width: 270, height: 80
                        fill: Color.TRANSPARENT
                        strokeWidth: 3.0
                        stroke: Color.GRAY
           /*             fill: LinearGradient {
                            startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                            proportional: true
                            stops: [
                                Stop {offset: 0.0 color: Color.ALICEBLUE},
                                Stop {offset: 1.0 color: Color.TRANSPARENT}
                            ]//Stops
                        }//Fill
            */
                },
                Text {
                    fill: Color.BLACK
                    font : Font { name: "Arial Bold"   size: 12    }
                         x: 20,  y: 20 content: "Control Switches PLC"
                },

                // Start button 1------------------------------------
                Group {
                    translateX: 20
                    translateY: 40
                    content: [
                        Text {
                            fill: Color.BLACK
                            font : Font { name: "Arial Bold"   size: 10    }
                            x: 0,  y: 0 content: "PROCES"
                        },
                        Text {
                            fill: Color.BLACK
                            font : Font { name: "Arial Bold"   size: 10    }
                            x: 0,  y: 10 content: "OFF - ON"
                        },
                        Circle {
                            centerX: 20, centerY: 25
                            radius: 12
                            fill: LinearGradient {
                                startX: 0.0  startY: 0.0 endX: 0.0 endY: 1.0
                                stops: [
                                    Stop {  color: Color.SILVER  offset: 0.0 },
                                    Stop {  color: Color.GRAY    offset: 1.0 },
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
                            width: 6,  height: 19
                            fill: Color.WHITE
                            transforms: Rotate  {
                                pivotX : 20.0, pivotY : 25.0, 
                                angle: bind PanSkidAan
                            }
                        }// end of Start button
                    ]
                },
                // Start button 2------------------------------------
                Group {
                    translateX: 100
                    translateY: 40
                    content: [
                        Text {
                            fill: Color.BLACK
                            font : Font { name: "Arial Bold"   size: 10    }
                            x:-15,  y: 0 content: "Transfer pumps"
                        },
                        Text {
                            fill: Color.BLACK
                            font : Font { name: "Arial Bold"   size: 10    }
                            x: 0,  y: 10 content: "OFF - ON"
                        },
                        Circle {
                            centerX: 20, centerY: 25
                            radius: 12
                            fill: LinearGradient {
                                startX: 0.0  startY: 0.0 endX: 0.0 endY: 1.0
                                stops: [
                                    Stop {  color: Color.SILVER  offset: 0.0 },
                                    Stop {  color: Color.GRAY    offset: 1.0 },
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
                            width: 6,  height: 19
                            fill: Color.WHITE
                            transforms: Rotate  {
                                pivotX : 20.0, pivotY : 25.0,
                                angle: bind PanPompTAan
                            }
                        }// end of Start button
                    ]
                }
                // Start button 3------------------------------------
                Group {
                    translateX: 180
                    translateY: 40
                    content: [
                        Text {
                            fill: Color.BLACK
                            font : Font { name: "Arial Bold"   size: 10    }
                            x: -10,  y: 0 content: "Dosing pumps"
                        },
                        Text {
                            fill: Color.BLACK
                            font : Font { name: "Arial Bold"   size: 10    }
                            x: -20,  y: 10 content: " Manual - Automatic"
                        },
                        Circle {
                            centerX: 20, centerY: 25
                            radius: 12
                            fill: LinearGradient {
                                startX: 0.0  startY: 0.0 endX: 0.0 endY: 1.0
                                stops: [
                                    Stop {  color: Color.SILVER  offset: 0.0 },
                                    Stop {  color: Color.GRAY    offset: 1.0 },
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
                            width: 6,  height: 19
                            fill: Color.WHITE
                            transforms: Rotate  {
                                pivotX : 20.0, pivotY : 25.0, 
                                angle: bind PanPompDosAuto
                            }
                        }// end of Start button
                    ]
                }
           ]
       }
  }
}

