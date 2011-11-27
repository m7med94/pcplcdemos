/*
 * StorTanks.fx
 *
 * Created on 27-apr-2010, 9:21:03
 */

package tanks;

/**
 * @author Alex Sentcha
 */

// place your code here
//import javafx.animation.Interpolator;
//import javafx.animation.KeyFrame;
//import javafx.animation.Timeline;
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Line;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import java.lang.Math.*;
import javafx.scene.shape.Polygon;
import javafx.scene.shape.Circle;
import javafx.scene.image.ImageView;
import javafx.scene.image.Image;


public class TankStation extends CustomNode {

    public var move: Number = 0;
    public var sp: Number = 0;
    public var flow: Number = 0;
    public var openclose: Number = 0;
    public var colorOC = Color.BLACK;

    var angle: Number = 0;
    var rotationwork: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 20ms
                        action: tick
                    }
                ]
            };init { rotationwork.play(); }

    public var RoerAAN: Integer = 2;
    public function startRoer() {
        this.rotationwork.play();
    }

    public function stopRoer() {
        this.rotationwork.stop();
    }
    var X1 : Double ;
    var X2 : Double ;
    var X3 : Double ;
    var Y1 : Double ;
    var Y2 : Double ;
    var Y3 : Double ;
    var t    : Double ;
    var radiusX : Number   = 12; //imgWidth;
    var radiusY : Number   = 4;  //imgHeight;

    function tick() {
        this.angle += move;
        t  = toRadians(angle);
        X1 = sin(t) * radiusX;
        Y1 = cos(t) * radiusY;
        t  = toRadians(angle+120);
        X2 = sin(t) * radiusX;
        Y2 = cos(t) * radiusY;
        t  = toRadians(angle+240);
        X3 = sin(t) * radiusX;
        Y3 = cos(t) * radiusY;
        if (this.angle == 360) {
            this.angle = 0;
        }
    }

    public var colorklep = Color.BLACK;
    public var fillLevel = 0.0;
    public var name;
    public var colortank = Color.BLUE;
    public override function create(): Node {
        return Group {
            content: [
                //---------------  Tanks  --------------------------------
                Group {
                    //Instance of creating the y-axis tick lines and text
                    content: for(i in [0 .. 10]) { [
                            Line {
                                startX: 114 ,
                                startY: 248 - i * 10
                                endX: 117 ,
                                endY: 248 - i * 10
                                strokeWidth: 1
                                stroke: Color.BLACK
                            },
                            Text {
                                font: Font {
                                    name: "Arial Bold"
                                    size: 8
                                    letterSpacing: 0.15
                                }
                                x: 123,
                                y: 252 - i * 10
                                content: "{i * 10}" //20
                            }
                        ]
                    }
                }
                //Add titles below each Tank
                Text {
                        font : Font {
                                name: "Arial Bold"
                                size: 12
                        }
                        x: 70, y: 128
                        content:   "Tank {name}"
                }
                // Instance of creating ellipse for top of tank
                Ellipse {
                    stroke: Color.LIGHTGRAY
                    opacity: 0.5
                    cache: true
                    strokeWidth: 4
                    centerX: 85, centerY: 140
                    radiusX: 34,  radiusY: 7
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0
                        endX: 1.0   endY: 0.0
                        stops: [
                            Stop {color: Color.TRANSPARENT offset: 0.0},
                            Stop {color: Color.LIGHTGRAY offset: 0.5},
                            Stop {color: Color.TRANSPARENT offset: 1.0},
                        ]
                    }
                }
             // Instance of creating ellipse for bodem of tank
                Ellipse {
                    stroke: Color.LIGHTGRAY
                    opacity: 0.5
                    cache: true
                    strokeWidth: 4
                    centerX: 85, centerY: 250
                    radiusX: 34,  radiusY: 7
                    fill: LinearGradient {
                        startX: 0.0 startY: 0.0  endX: 1.0   endY: 0.0
                        stops: [
                            Stop {color: Color.TRANSPARENT offset: 0.0},
                            Stop {color: Color.LIGHTGRAY offset: 0.5},
                            Stop {color: Color.TRANSPARENT offset: 1.0},
                        ]
                    }
                }
                  // Instance of creating ellipse for top of liquid
                Ellipse {
                    translateY: bind 110 - fillLevel
                    opacity: 1.0//bind op
                    cache: true
                    stroke: Color.LIGHTGRAY
                    strokeWidth: 2
                    centerX: 85, centerY: 140 radiusX: 28, radiusY: 7
                    fill: bind colortank
                }
                //Instance of liquid column: rectangle with top ellipse cut out
                ShapeSubtract {
                    cache: true
                    translateY: bind 110-fillLevel
                    fill: bind colortank//Color.BLACK
                    opacity: 1.0
                    a: bind [
                        Rectangle {
                            opacity: 0.2
                            x: 56,  y: 140  width: 60, height: fillLevel
                            fill: bind colortank//Color.BLACK
                        },
                        Ellipse {
                            opacity: 0.2
                            centerX: 86, centerY: 140+fillLevel
                            radiusX: 30,  radiusY: 7
                            fill:bind colortank//Color.BLACK
                        }
                    ]
                    b: Ellipse {
                      stroke: Color.BLACK
                        opacity: 0.2
                        centerX: 86, centerY: 140  radiusX: 30,  radiusY: 7
                        fill: Color.BLACK
                    }
                }
            //Instance of tank sides with cutouts for ellipse at top of tank
                ShapeSubtract {
                    cache: true
                    fill: LinearGradient {
                        startX: 0.0
                        startY: 0.0
                        endX: 1.0
                        endY: 0.0
                        stops: [
                            Stop {  color: Color.TRANSPARENT offset: 0.0 },
                            Stop {  color: Color.WHITE offset: 0.3 },
                            Stop {  color: Color.BLACK offset: 1.0 },
                        ]
                    }
                     opacity: 0.4
                    a: bind [
                        Rectangle {
                        x: 50,  y: 140
                        width: 70, height: 110
                        fill: Color.BLACK
                        }
                        Ellipse {
                            opacity: 0.2
                            centerX: 84, centerY: 250
                            radiusX: 34,  radiusY: 7
                            fill:Color.BLACK
                        }
                    ]
                   b: Ellipse {
                        stroke: Color.BLACK
                        opacity: 0.3
                        centerX: 84, centerY: 140
                        radiusX: 34, radiusY: 7
                        fill: Color.BLACK
                    }
                }

                //--------  Electromagnetic valve  -----------------------
                //body
                Group {
                    translateX: 60
                    translateY: 135
                    content: [
                        Rectangle {
                            x: -10, y: 20
                            width: 20, height: 16
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Rectangle {
                            x: -10, y: 18
                            width: 4, height: 20
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Rectangle {
                            x: 8, y: 18
                            width: 4, height: 20
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        //pipe 1                         
                        Polygon {
                            translateX: -15
                            translateY: 23 //right angle is under
                              points : [ 0,0, 0,-50, -10,-50, -10,10, 0,0 ]
                               fill: LinearGradient {
                                   startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                   proportional: true
                                   stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                    ]
                                 }
                                }
                        //pipe 2 
                        Polygon {
                                translateX: -10
                                translateY:  23 //is recht hoek boven
                                points : [ 0,0, 0,10, -15,10, -5,0, 0,0 ]
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        //pipe 3 
                        Group {
                            translateX: 12
                            translateY: 23 //is recht hoek boven
                            content: [
                                Circle {
                                       centerX: 15, centerY: 5
                                       radius: 7
                                       fill: Color.LIGHTGRAY
                                }
                                Polygon {
                                        points : [ 0,0, 0,10, 15,10, 15,0, 0,0 ]
                                         fill: LinearGradient {
                                            startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                            proportional: true
                                            stops: [
                                              Stop {color: Color.GRAY offset: 0.0},
                                              Stop {color: Color.WHITE offset: 0.5},
                                              Stop {color: Color.BLACK offset: 1.0},
                                             ]
                                         }
                                }
                                Ellipse {
                                    centerX: 15, centerY: 5
                                    radiusX: 5,  radiusY: 5
                                     fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                        proportional: true
                                        stops: [
                                          Stop {color: Color.GRAY offset: 0.0},
                                          Stop {color: Color.WHITE offset: 0.5},
                                          Stop {color: Color.BLACK offset: 1.0},
                                         ]
                                     }
                                }
                             ]
                        }
                        // set point pointer
                        ShapeSubtract {
                           a: [
                                 Rectangle {x: -7 y: 5
                                            width: 14  height: 15
                                 },
                                 Ellipse   {centerX: 0 centerY: 20
                                              radiusX: 7  radiusY: 4
                                 }
                               ]
                            b:  Ellipse {
                                   centerX: 0  centerY: 5
                                   radiusX: 7  radiusY: 4
                                 }
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.TRANSPARENT offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        },
                        Ellipse {
                            centerX: 0  centerY: 9
                            radiusX: 7  radiusY: 4
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.2},
                                      Stop {color: Color.GRAY offset: 1.0},
                                     ]
                                 }
                        }
                        //level pointer
                         Rectangle {
                            x: -2, y:    bind 20-openclose
                            width: 5, height: 5
                            fill: bind colorOC
                            },
                    ]
                }
                //--------  regulator valve  -----------------------
                //body
                Group {
                    translateX: 110
                    translateY: 235
                    content: [
                        Rectangle {
                            x: -10, y: 20
                            width: 20, height: 16
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Rectangle {
                            x: -10, y: 18
                            width: 4, height: 20
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Rectangle {
                            x: 8, y: 18
                            width: 4, height: 20
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        //pipe 1
                        Group {
                            translateX: -15
                            translateY: 23 //right angle is under
                            content: [
                                Circle {
                                    centerX: -5, centerY: -10
                                    radius: 7
                                     fill: Color.LIGHTGRAY
                                }
                                Ellipse {
                                    centerX: -5, centerY: -10
                                    radiusX: 5,  radiusY: 5
                                     fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                        proportional: true
                                        stops: [
                                          Stop {color: Color.GRAY offset: 0.0},
                                          Stop {color: Color.WHITE offset: 0.5},
                                          Stop {color: Color.BLACK offset: 1.0},
                                         ]
                                     }
                                }
                                Polygon {
                                        points : [ 0,0, 0,-10, -10,-10, -10,10, 0,0 ]
                                     fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                        proportional: true
                                        stops: [
                                          Stop {color: Color.GRAY offset: 0.0},
                                          Stop {color: Color.WHITE offset: 0.5},
                                          Stop {color: Color.BLACK offset: 1.0},
                                         ]
                                     }
                                }
                            ]
                        }
                        //pipe 2 
                        Polygon {
                                translateX: -10
                                translateY:  23 //is recht hoek boven
                                points : [ 0,0, 0,10, -15,10, -5,0, 0,0 ]
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        //pipe 3 
                        Polygon {
                                translateX:  12
                                translateY:  23 //is right upper corner
                                points : [ 0,0, 0,10, 20,10, 20,0, 0,0 ]
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        // set point 
                        ShapeSubtract {
                           a: [
                                 Rectangle {x: -7 y: 5
                                            width: 14  height: 15
                                 },
                                 Ellipse   {centerX: 0 centerY: 20
                                              radiusX: 7  radiusY: 4
                                 }
                               ]
                            b:  Ellipse {
                                   centerX: 0  centerY: 5
                                   radiusX: 7  radiusY: 4
                                 }
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.TRANSPARENT offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Ellipse {
                            centerX: 0  centerY: 6
                            radiusX: 7  radiusY: 3
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.2},
                                      Stop {color: Color.GRAY offset: 1.0},
                                     ]
                                 }
                        }
                        //stick
                        Line {
                                startX: 0, startY: 0
                                endX: 0, endY:5
                                strokeWidth: 4
                                stroke: bind colorklep
                        }
                        Group {
                            //Instance of creating the y-axis tick lines
                            content: for(i in [0 .. 5]) { [
                                    Line {
                                        startX: 0 ,  startY: 21 - i*2
                                        endX: 1 ,    endY: 21 - i*2
                                        strokeWidth: 1
                                        stroke: Color.BLACK
                                    },
                                ]
                            }
                        }
                        //level pointer
                         Polygon {
                            translateX: 0
                            translateY: bind 21-(sp/10)
                            points : [ 0,0, -5,3, -5,-3 ]
                            fill: Color.RED
                        }
                        //cirkle top
                        ShapeSubtract {
                           cache: true
                           a:  Ellipse {
                                    stroke: bind colorklep
                                    centerX: 0, centerY: 0
                                    radiusX: 16, radiusY: 5
                                    fill: bind colorklep
                                }
                           b:  Ellipse {
                                stroke: bind colorklep
                                centerX: 0, centerY: 0
                                radiusX: 12, radiusY: 3
                                fill: bind colorklep
                           }
                        }
                        Line {
                                startX: 0, startY: 0
                                endX: bind X1, endY: bind Y1
                                strokeWidth: 2
                                stroke: bind colorklep
                        }
                        Line {
                                startX: 0, startY: 0
                                endX: bind X2, endY: bind Y2
                                strokeWidth: 2
                                stroke: bind colorklep
                        }
                        Line {
                                startX: 0, startY: 0
                                endX: bind X3, endY: bind Y3
                                strokeWidth: 2
                                stroke: bind colorklep
                        }
                    ]
                }
                //-----   flowmeter   --------------------
                 Group {
                    translateX: 151
                    translateY: 235
                    content: [
                        Rectangle {
                            x: -10, y: 20
                            width: 20, height: 16
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Rectangle {
                            x: -10, y: 18
                            width: 4, height: 20
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        Rectangle {
                            x: 8, y: 18
                            width: 4, height: 20
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        //pipe 3
                        Polygon {
                                translateX:  12
                                translateY:  23 //is right upper corner
                                points : [ 0,0, 0,10, 5,10, 15,0, 0,0 ]
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.GRAY offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        // set point
                        ShapeSubtract {
                           a: [
                                 Rectangle {x: -4 y: 10
                                            width: 8  height: 10
                                 },
                                 Ellipse   {centerX: 0 centerY: 20
                                              radiusX: 4  radiusY: 2
                                 }
                               ]
                            b:  Ellipse {
                                   centerX: 0  centerY: 5
                                   radiusX: 4  radiusY: 2
                                 }
                                 fill: LinearGradient {
                                    startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                    proportional: true
                                    stops: [
                                      Stop {color: Color.TRANSPARENT offset: 0.0},
                                      Stop {color: Color.WHITE offset: 0.5},
                                      Stop {color: Color.BLACK offset: 1.0},
                                     ]
                                 }
                        }
                        ImageView {
                            x: -12, y: -10
                                image: Image {
                                        url: "{__DIR__}images/flowmeter20.png"
                                }
                        }
                        Text {
                                font: Font {
                                    name: "Arial Bold"
                                    size: 8
                                }
                                x: -7, y: 5
                                content: bind "{flow as Integer}"
                        }
                     ]
                }
                //values on the screen
                Group {
                    translateX: 80
                    translateY: 200
                    content: [
                        //tank level
                        Text {
                                font: Font {
                                    name: "Arial Bold"
                                    size: 10
                                }
                                x: 0, y: 0
                                content: bind "{fillLevel as Integer}%"
                        }
                        //set points
                        Text {
                                font: Font {
                                    name: "Arial Bold"
                                    size: 8
                                }
                                x: 25, y: 67
                                content: bind "{sp as Integer}%"
                        }

                     ]
                }

            ]
        }
    }
}