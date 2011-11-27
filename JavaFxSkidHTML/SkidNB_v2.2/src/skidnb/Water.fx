/*
 * Water.fx
 *
 * Created on 5-mei-2009, 12:37:13
 */

package skidnb;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Polygon;
import javafx.scene.transform.Rotate;
import javafx.scene.effect.Reflection;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.shape.Polyline;
import javafx.scene.shape.Line;
import javafx.scene.text.Text;
import javafx.scene.text.Font;

/**
 * @author alex
 */

// place your code here


public class Water extends CustomNode {
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
  public var kleurW = Color.GRAY;           //klep water
  public var kleurR = Color.GRAY;           //klep rinse
  public var kleur3 = Color.GRAY;           //klep 3
  public var kleurWO = Color.TRANSPARENT;   //klep water open
  public var kleurRO = Color.TRANSPARENT;
  public var kleur3O = Color.TRANSPARENT;
  public var kleurWD = Color.BLACK;         //klep water dicht
  public var kleurRD = Color.BLACK;
  public var kleur3D = Color.BLACK;

  public var kleurTankHL = Color.DARKRED; //nivo opnemer HL
  public var kleurTankLL = Color.DARKRED; //nivo opnemer LL


  public var WatColor = Color.GREY;
  public var PompAAN: Integer = 2;

  public function start() {
    this.timeline.play();
    WatColor = Color.GREEN
  }

  public function stop() {
    this.timeline.stop();
    WatColor = Color.RED
  }

  function tick() {
    this.rotation += 5;
    if (this.rotation == 360) {
      this.rotation = 0;
    }
  }
  public var Level: Number  = 50;
  public var WaterDruk: String   = "--";
  public override function create(): Node {
        return Group {
            content: [
                        // Naam
                        Text {
                            font : Font {
                            name: "Arial Bold"
                            size: 12
                            }
                            x: 70, y: 90
                            content: "Water NET"
                        },
                        // WATER DRUK
                           Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 230,  y: 30 content: "Pressure"
                        },
                        Text {
                            fill: Color.BLUE
                            font: Font { name: "Arial Bold" size: 12}
                            x: 280,  y: 30 content: bind WaterDruk
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 302,  y: 30 content: "Bar"
                        },
                       //TANK water binen
                        ShapeSubtract {
                            cache: true
                            translateY: bind Level
                            fill:
                            LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                                stops: [
                                  Stop {color: Color.BLUE  offset: 0.0},
                         //         Stop {color: Color.LIGHTBLUE  offset: 0.5},
                                  Stop {color: Color.LIGHTBLUE  offset: 1.0},
                                ]
                            }
                            opacity: 1.0         
                            a: bind [
                                Rectangle {
                                    opacity: 0.2
                                    x: 131,  y: 10  width: 39, height: 80-Level
                                    fill: Color.BLACK
                                },
                                Ellipse {
                                    //stroke: Color.BLACK
                                    opacity: 0.1
                                    centerX: 150, centerY:  90-Level
                                    radiusX: 19,  radiusY: 6
                                    fill:Color.BLACK
                                }
                            ]
                            b: Ellipse {
                                stroke: Color.BLACK
                                opacity: 0.1
                                centerX: 150, centerY: Level -40
                                radiusX: 19,  radiusY: 6
                                fill: Color.BLACK
                            }
                        },
                        Ellipse {
                                stroke: Color.DARKBLUE
                                centerX: 150, centerY: bind Level +10
                                radiusX: 19,  radiusY: 6
                              fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                proportional: true
                                stops: [
                                    Stop {color: Color.BLUE offset: 0.0},
                                    Stop {color: Color.LIGHTBLUE   offset: 0.7},
                                ]
                              }//Fill
                        },
                        //TANK zelf
                        ShapeSubtract {
                            a: [
                                Rectangle {x: 130 y: 10 width: 40
                                           height: 80
                                },
                                Ellipse   {centerX: 150 centerY: 90
                                            radiusX: 20  radiusY: 6
                                }
                            ]
                            b:  Ellipse {
                                centerX: 150  centerY: 10
                                radiusX: 20  radiusY: 6
                                }
                             fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                proportional: true
                                stops: [
                                    Stop {color: Color.TRANSPARENT offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.5},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                             }//Fill
                         },
                         Ellipse {
                             centerX: 150, centerY: 10
                             radiusX: 20, radiusY: 6
                             fill: Color.GRAY
                         },
                         //PIJP 1
                         Polyline {
                             points : [ 170,80, 260,80, 260,60 ]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 2 na druk tank voor klep
                         Polyline {
                             points : [ 300,60, 300,80, 310,80]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 2 na druk tank na klep
                         Polyline {
                             points : [ 340,80, 340,20, 360,20]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 3 NA RINSE KLEP voor reactor
                         Polyline {
                             points : [ 380,20, 392,20, 392,-150, 410,-150,
                                                    417,-152]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 4 TOT KLEP 3 bijvoelen reactor
                         Polyline {
                             points : [ 330,80, 360,80]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 5 NA  KLEP 3 bijvoelen reactor
                         Polyline {
                             points : [ 380,80, 400,80, 400,30, 420,30, 425,28]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 5 ingang
                         Polyline {
                             points : [  80,70, 87,70, 87,60]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 5 ingang 2
                         Polyline {
                             points : [ 87,40, 87,20,  100,20]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //PIJP 5 ingang 3
                         Polyline {
                             points : [ 120,20, 130,20]
                             strokeWidth: 4.0
                             stroke: Color.DARKBLUE
                         },
                         //klep na druk tank
                         Polygon {
                            points : [ 310,72, 310,88, 330,72, 330,88, 310,72]
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                         },
                         Polyline {
                             points : [320,77, 320,67, 328,67, 312,67]
                             strokeWidth: 1.0
                                 stroke: Color.BLACK
                         },
                         //terugslagklep
                         Polygon {
                            points : [  180,88, 180,72, 190,80, 180,88]
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                         },

                         //klep RINSE
                         Polygon {
                            points : [ 360,12, 360,28, 380,12, 380,28, 360,12]
                             fill: bind kleurR
                         },
                         Line {
                             startX: 370, startY: 20
                             endX: 370, endY: 10
                             strokeWidth: 1
                             stroke: Color.BLACK
                         },
                         Rectangle {
                             x: 365, y: 0
                             width: 10, height: 5
                             stroke: Color.BLACK
                             fill: bind kleurRO
                         },
                         Rectangle {
                             x: 365, y: 5
                             width: 10, height: 5
                             stroke: Color.BLACK
                             fill: bind kleurRD
                         },

                         //klep 3
                         Polygon {
                            points : [ 360,72, 360,88, 380,72, 380,88, 360,72]
                             fill: bind kleur3
                         },
                         Line {
                             startX: 370, startY: 80
                             endX: 370, endY: 70
                             strokeWidth: 1
                             stroke: Color.BLACK
                         },
                         Rectangle {
                             x: 365, y: 60
                             width: 10, height: 5
                             stroke: Color.BLACK
                             fill: bind kleur3O
                         },
                         Rectangle {
                             x: 365, y: 65
                             width: 10, height: 5
                             stroke: Color.BLACK
                             fill: bind kleur3D
                         },

                         //klep WATER
                         Polygon {
                            points : [ 100,12, 100,28, 120,12, 120,28, 100,12]
                             fill: bind kleurW
                         },
                         Line {
                             startX: 110, startY: 20
                             endX: 110, endY: 10
                             strokeWidth: 1
                             stroke: Color.BLACK
                         },
                         Rectangle {
                             x: 105, y: 0
                             width: 10, height: 5
                             stroke: Color.BLACK
                             fill: bind kleurWO
                         },
                         Rectangle {
                             x: 105, y: 5
                             width: 10, height: 5
                             stroke: Color.BLACK
                             fill: bind kleurWD
                         },
                          //klep 1
                         Polygon {
                            points : [ 80,40, 96,40, 80,60, 96,60, 80,40]
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                         },
                         Polyline {
                             points : [ 80,50, 70,50, 70,40, 70,60]
                             strokeWidth: 1.0
                             stroke: Color.BLACK
                          },

             Group {
                    //Instance of creating the druktank
                    content: [
                         //TANK
                          Circle {
                              centerX: 250, centerY: 50
                              radius: 10
                          fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                          },
                          Circle {
                              centerX: 310, centerY: 50
                              radius: 10
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                          },
                          Rectangle {
                              x: 250, y: 40
                              width: 60, height: 20
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                          },
                          //Niveaus HL en LL
                          Ellipse {
                              centerX: 168, centerY: 23
                              radiusX: 4, radiusY: 6
                              fill: bind kleurTankHL
                          },
                          Ellipse {
                              centerX: 168, centerY: 83
                              radiusX: 4, radiusY: 6
                              fill: bind kleurTankLL
                          }
                    ]
                }
              Group {
                    //Instance of creating the pumps
                    content: [

                        Circle {
                            centerX: 220
                            centerY: 80
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
                            pivotX : 220, pivotY : 80, angle: bind this.rotation }
                            points : [ 212,66, 236,80, 212,94 ]
                            fill: bind WatColor
                        }
                    ]

                  effect:  Reflection {fraction: 0.9  topOpacity: 0.5 topOffset: 2.5}
                }
            ]
        };
    }
}