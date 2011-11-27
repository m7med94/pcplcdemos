/*
 * TubeFill.fx
 *
 * Created on 5-may-2010, 9:22:03
 */

package tanks;

/**
 * @author AlexSentcha
 */

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
import javafx.scene.shape.Polygon;
import javafx.scene.shape.Circle;
import javafx.scene.transform.Rotate;
import javafx.scene.effect.Reflection;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;


public class TankProduction extends CustomNode {
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
    this.rotation += 10;
    if (this.rotation == 360) {
      this.rotation = 0;
    }
  }
  public var TrColor = Color.GREY;
  public var PompAAN = false;
  public var name;
  public var mode: String = "Auto";

  public var colorOC1 = Color.BLACK;
  public var openclose1: Number = 0;
  public var colorOC2 = Color.BLACK;
  public var openclose2: Number = 0;
  public var colortank = Color.BLUE;
  public var fillLevel = 0.0;
  public override function create(): Node {
        return Group {
            content: [
                Group {
                    //Instance of creating the y-axis tick lines and text
                    content: for(i in [0 .. 10]) { [
                            Line {
                                startX: 54 ,
                                startY: 248 - i * 10
                                endX: 57 ,
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
                                x: 38,
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
                        x: 30, y: 128
                        content:   "Production tank {name}"
                }
                //tank level
                Text {
                     font: Font {
                          name: "Arial Bold"
                           size: 10
                     }
                      x: 150, y: 215
                      content: bind "Pump mode: {mode}"
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
                            fill: bind colortank//Color.BLACK
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
                //tank level
                Text {
                     font: Font {
                          name: "Arial Bold"
                          size: 10
                     }
                     x: 78, y: 200
                     content: bind "{fillLevel as Integer}%"
                }
                //--------  Electromagnetic valve 1 -----------------------
                //body
                Group {
                    translateX: 60
                    translateY: 135
                    content: [
                        Rectangle {
                            x: 90, y: 20
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
                            x: 90, y: 18
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
                            x: 108, y: 18
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
                              points : [ 185,10, 185,-30, 175,-30, 175,0, 185,10 ]
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
                        Ellipse {
                                    centerX: 165, centerY: -8
                                    radiusX: 5,  radiusY: 3
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
                                points : [ 122,0, 122,10, 180,10, 170,0, 122,0 ]
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
                                        points : [ 78,0, 78,10, 15,10, 15,0, 78,0 ]
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
                                 Rectangle {x: 93 y: 5
                                            width: 14  height: 15
                                 },
                                 Ellipse   {centerX: 100 centerY: 20
                                              radiusX: 7  radiusY: 4
                                 }
                               ]
                            b:  Ellipse {
                                   centerX: 100  centerY: 5
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
                            centerX: 100  centerY: 8
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
                            x: 98, y:    bind 20-openclose1
                            width: 5, height: 5
                            fill: bind colorOC1
                         },
                    ]
                }
                //--------  Electromagnetic valve 2 -----------------------
                //body
                Group {
                    translateX: 108
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
                                points : [ 0,0, 0,10, 30,10, 20,0, 0,0 ]
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
                        //pipe 4
                        Polygon {
                            translateX: 32
                            translateY: 0 //right angle is under
                            points : [ 0,-5, 0,23, 10,33, 10,5, 0,-5 ]
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
                        //pipe 5
                        Polygon {
                                translateX:  32
                                translateY:  0 //is right upper corner
                                points : [ 0,-5, 10,5, 80,5, 90,-5, 0,-5 ]
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
                        //pipe 6
                        Polygon {
                            translateX: 32
                            translateY: 0 //right angle is under
                            points : [ 80,5, 80,65, 90,65, 90,-5, 80,5 ]
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
                            x: -2, y:    bind 20-openclose2
                            width: 5, height: 5
                            fill: bind colorOC2
                        },
                        Group {
                           //Instance of creating the pumps
                           content: [
                               Circle {
                                   centerX: 80
                                   centerY: 0
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
                                    pivotX : 80, pivotY : 0, angle: bind rotation }
                                    points : [ 72,-14, 96,0, 72,14 ]
                                    fill: bind TrColor
                                  }
                             ]
                             effect:  Reflection {fraction: 0.9  topOpacity: 0.5 topOffset: 2.5}
                            }
                    ]
                }
           ]
        }
    }
}