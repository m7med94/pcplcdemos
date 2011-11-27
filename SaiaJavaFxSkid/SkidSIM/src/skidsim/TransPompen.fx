/*
 * TransPompen.fx
 *
 * Created on 30-apr-2009, 11:34:59
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
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Circle;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.transform.Rotate;
import javafx.scene.shape.Line;
import javafx.scene.shape.Polyline;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.scene.text.Font;

/**
 * @author AlexSentcha
 */

// place your code here
public class TransPompen extends CustomNode {
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
    TrColor = Color.GREEN
  }
  public function stop() {
    this.timeline.stop();
    TrColor = Color.RED
  }
  function tick() {
    this.rotation += 10;
    if (this.rotation == 360) {
      this.rotation = 0;
    }
  }
  public var TrColor = Color.GREY;
  public var NvColorHL = Color.DARKRED;
  public var NvColorLL = Color.DARKRED;
  public var PompAAN: Integer = 2;

  public var NivoTanks = 0.0;
  
  public var Temp: String      = "--";
  public var Level: String     = "--";
  public var Pressure: String  = "--";
  public var TransfP: String   = "--";
  public var Flow: String      = "--";
  public var DosP: String      = "--";
  public var Naam: String      = "--";

  public override function create(): Node {
        return Group {
            content: [
                        //HP tmperatuur
                          Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 140,  y: 0 content: bind Naam
                          },
                        Text {
                            fill: Color.BLUE
                            font: Font { name: "Arial Bold" size: 12}
                            x: 150,  y: 15 content: bind Temp
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 177,  y: 15 content: "C"
                        }
                        //HP level
                        Text {
                            fill: Color.BLUE
                            font: Font { name: "Arial Bold" size: 12}
                            x: 150,  y: 30 content: bind Level
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 177,  y: 30 content: "%"
                        },
                        //HP Pressure
                        Text {
                            fill: Color.BLUE
                            font: Font { name: "Arial Bold" size: 12}
                            x: 150,  y: 45 content: bind Pressure
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 177,  y: 45 content: "Bar"
                        },
                        //HP Transfer pomp
                        Text {
                            fill: Color.BLUE
                            font: Font { name: "Arial Bold" size: 12}
                            x: 170,  y: 75 content: bind TransfP
                        },
                        Text {
                            fill: Color.BLACK
                            font: Font { name: "Arial Bold" size: 10}
                            x: 197,  y: 75 content: "%"
                        },
                        //PIJP 1
                        Line {
                            startX: 118, startY: 100
                            endX: 150, endY: 100
                            strokeWidth: 4
                            stroke: Color.BLACK
                         },
                        //PIJP 2
                         Polyline {
                             points : [ 165,100, 230,100, 230,75 ]
                             strokeWidth: 4.0
                             stroke: Color.BLACK
                         },
                        //PIJP 3
                         Polyline {
                             points : [ 230,75, 230,20, 250,20 ]
                             strokeWidth: 4.0
                             stroke: Color.BLACK
                         },
                        //PIJP 4
                         Polyline {
                             points : [ 270,75, 270,100, 260,100, 280,100 ]
                             strokeWidth: 4.0
                             stroke: Color.BLACK
                         },
                        //PIJP 5
                         Polyline {
                             points : [  245,100, 240,100, 240,105 ]
                             strokeWidth: 4.0
                             stroke: Color.BLACK
                         },
                        //PIJP 6
                        Line {
                            startX: 300, startY: 100
                            endX: 310, endY: 100
                            strokeWidth: 4
                            stroke: Color.BLACK
                         },
                         //klep
                         Polygon {
                            points : [ 150,92, 150,108, 170,92, 170,108, 150,92]
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
                             points : [160,97, 160,87, 168,87, 152,87]
                             strokeWidth: 1.0
                             stroke: Color.BLACK
                         },
                        //terugslagklep
                         Polygon {
                            points : [  231,80, 223,70, 239,70, 231,80]
                            fill: LinearGradient {
                                startX: 1.0, startY: 0.0, endX: 0.0, endY: 0.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                         },
                        //Veiligheidsklep 1.3
                         Polyline {
                             points : [ 232,50, 210,50, 208,55, 204,45, 202,50,
                             200,50]
                             strokeWidth: 1.0
                             stroke: Color.BLACK
                         },
                        //Veiligheidsklep 1.1
                         Polygon {
                            points : [  222,55, 222,45, 212,50]
                            fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                         },
                        //Veiligheidsklep 1.2
                         Polygon {
                            points : [  207,40, 217,40, 212,50]
                            fill: LinearGradient {
                                startX: 1.0, startY: 0.0, endX: 0.0, endY: 0.0,
                                proportional: true
                                stops: [
                                Stop {offset: 0.0 color: Color.WHITE},
                                Stop {offset: 1.0 color: Color.BLACK}
                                ]//Stops
                            }//Fill
                         },
                        //TANK
                        ShapeSubtract {
                            a: [
                                Rectangle {x: 250 y: 10 width: 40
                                           height: 60
                                },
                                Ellipse   {centerX: 270 centerY: 70
                                            radiusX: 20  radiusY: 6
                                }
                            ]
                            b:  Ellipse {
                                centerX: 270  centerY: 10
                                radiusX: 20  radiusY: 6
                                }
                             fill: LinearGradient {
                                startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                                proportional: true
                                stops: [
                                    Stop {color: Color.TRANSPARENT offset: 0.0},
                                    Stop {color: Color.WHITE offset: 0.5},
                                    Stop {color: Color.BLACK offset: 1.0},
                                ]
                             }//Fill
                         },
                         Ellipse {
                             centerX: 270, centerY: 10
                             radiusX: 20, radiusY: 6
                             fill: Color.GRAY
                         },
                         //NIVEAU TANKS
                         Rectangle {
                            x: 260, y: bind 70-NivoTanks
                            width: 5, height: 1
                            fill: Color.RED
                         },
                         Rectangle {
                            x: 265, y: 20
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 25
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 30
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 35
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 40
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 45
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 50
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                          Rectangle {
                            x: 265, y: 55
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                          Rectangle {
                            x: 265, y: 60
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 65
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         Rectangle {
                            x: 265, y: 70
                            width: 5, height: 1
                            fill: Color.GREEN
                         },
                         //klep 2
                         Polygon {
                            points : [ 245,92, 245,108, 265,92, 265,108, 245,92]
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
                             points : [255,97,255,87, 263,87, 248,87]
                             strokeWidth: 1.0
                             stroke: Color.BLACK
                         },
                         //klep 3
                         Polygon {
                            points : [ 280,92, 280,108, 300,92, 300,108, 280,92]
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
                             points : [290,97,290,87, 298,87, 282,87]
                             strokeWidth: 1.0
                             stroke: Color.BLACK
                         },
                          //Niveaus HL en LL
                          Ellipse {
                              centerX: 289, centerY: 23
                              radiusX: 4, radiusY: 6
                              fill: bind NvColorHL
                          },
                          Ellipse {
                              centerX: 289, centerY: 63
                              radiusX: 4, radiusY: 6
                              fill: bind NvColorLL
                          }


              Group {
                    //Instance of creating the pumps
                    content: [
                        Circle {
                            centerX: 200
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
                            pivotX : 200, pivotY : 100, angle: bind rotation }
                            points : [ 192,86, 216,100, 192,114 ]
                            fill: bind TrColor
                        }
                     ]
                  effect:  Reflection {fraction: 0.9  topOpacity: 0.5 topOffset: 2.5}
                }
            ]
        };
    }
}