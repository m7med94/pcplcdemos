/*
 * Reactor.fx
 *
 * Created on 4-mei-2009, 19:02:06
 */
package skidsim;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.Polygon;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.shape.Polyline;
import javafx.scene.transform.Rotate;
import javafx.scene.transform.Scale;
import javafx.scene.transform.Shear;
import javafx.animation.Interpolator;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.shape.*;

/**
 * @author AlexSentcha
 */
// place your code here
public class Reactor extends CustomNode {

    var RoerRotation: Number = 0;
    var Roerwerk: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 50ms
                        action: tick
                    }
                ]
            };
    public var RoerAAN: Integer = 2;

    public function startRoer() {
        this.Roerwerk.play();
    }

    public function stopRoer() {
        this.Roerwerk.stop();
    }

    function tick() {
        this.RoerRotation += 5;
        if (this.RoerRotation == 360) {
            this.RoerRotation = 0;
        }
    }
    public var TempRe: String = "--";
    //Alarm animation
    public var x = 100.0;
    public var y = 100.0;
    public var Nivo = 100.0;
    public var NivoWaarde: String = "60";
    public var NvReColorHHL = Color.DARKRED;
    public var NvReColorHL = Color.DARKRED;
    public var NvReColorLL = Color.DARKRED;
    //public var TankReNivo = 500.0;
    var ScaleAlarm = 1.0;
    var AnimAlarm: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE
                keyFrames: [
                    KeyFrame {
                        time: 1s
                        canSkip: true
                        values: [
                            ScaleAlarm => -1.0 tween Interpolator.LINEAR
                        ]
                    }
                ]
    };

    public function startAlarm() {
        this.AnimAlarm.play();
    };

    public function stopAlarm() {
        this.AnimAlarm.stop();
    };
    public var VermColor = Color.BLACK;
    public var KoelColor = Color.GREEN;
    public var ReacAAN = false;

    public function setColorR(red: Number, green: Number, blue: Number): Void {
        VermColor = Color {red: red, green: green, blue: blue};
    };

    public override function create(): Node {
        return Group {
                    content: [
                        Group {
                            //Instance of creating the reactor
                            content: [
                                //pijpen buiten
                                Polyline {
                                    points: [263, 100, 280, 100, 280, 130, 310, 130,
                                        320, 127, 320, 229]
                                    strokeWidth: 4.0
                                    stroke: Color.BLACK
                                },
                                Polyline {
                                    points: [263, 260, 280, 260, 280, 140, 310, 140,
                                        320, 137]
                                    strokeWidth: 4.0
                                    stroke: Color.BLACK
                                },
                                //terugslagklep 1
                                Polygon {
                                    points: [280, 110, 272, 120, 288, 120, 280, 110]
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
                                    points: [270, 100, 270, 75, 265, 73, 275, 69,
                                        270, 67, 270, 65]
                                    strokeWidth: 1.0
                                    stroke: Color.BLACK
                                },
                                //Veiligheidsklep 1.1
                                Polygon {
                                    points: [280, 85, 280, 75, 270, 80]
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
                                    points: [265, 90, 275, 90, 270, 80]
                                    fill: LinearGradient {
                                        startX: 1.0, startY: 0.0, endX: 0.0, endY: 0.0,
                                        proportional: true
                                        stops: [
                                            Stop {offset: 0.0 color: Color.WHITE},
                                            Stop {offset: 1.0 color: Color.BLACK}
                                        ]//Stops
                                    }//Fill
                                },
                                //terugslagklep 2
                                Polygon {
                                    points: [280, 230, 272, 220, 288, 220, 280, 230]
                                    fill: LinearGradient {
                                        startX: 1.0, startY: 0.0, endX: 0.0, endY: 0.0,
                                        proportional: true
                                        stops: [
                                            Stop {offset: 0.0 color: Color.WHITE},
                                            Stop {offset: 1.0 color: Color.BLACK}
                                        ]//Stops
                                    }//Fill
                                },
                                //Veiligheidsklep 2.3
                                Polyline {
                                    points: [280, 180, 255, 180, 253, 185, 251, 175,
                                        249, 180, 247, 180]
                                    strokeWidth: 1.0
                                    stroke: Color.BLACK
                                },
                                //Veiligheidsklep 2.1
                                Polygon {
                                    points: [270, 185, 270, 175, 260, 180]
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                        proportional: true
                                        stops: [
                                            Stop {offset: 0.0 color: Color.WHITE},
                                            Stop {offset: 1.0 color: Color.BLACK}
                                        ]//Stops
                                    }//Fill
                                },
                                //Veiligheidsklep 2.2
                                Polygon {
                                    points: [255, 170, 265, 170, 260, 180]
                                    fill: LinearGradient {
                                        startX: 1.0, startY: 0.0, endX: 0.0, endY: 0.0,
                                        proportional: true
                                        stops: [
                                            Stop {offset: 0.0 color: Color.WHITE},
                                            Stop {offset: 1.0 color: Color.BLACK}
                                        ]//Stops
                                    }//Fill
                                },
                                //Roerwerk
                                Ellipse {
                                    fill: Color.BLACK
                                    centerX: 400 centerY: 540
                                    radiusX: 60 radiusY: 10
                                    transforms: [
                                        Scale {x: 1.0, y: 0.5}
                                        Rotate {pivotX: 400, pivotY: 540,
                                            angle: bind RoerRotation}
                                    ]
                                },
                                Ellipse {
                                    fill: Color.BLACK
                                    centerX: 400 centerY: 540
                                    radiusX: 10 radiusY: 60
                                    transforms: [
                                        Scale {x: 1.0, y: 0.5}
                                        Rotate {pivotX: 400, pivotY: 540,
                                            angle: bind RoerRotation}
                                    ]
                                },
                                //pijpen binnen
                                ShapeSubtract {
                                    a: Ellipse {centerX: 400 centerY: 240
                                        radiusX: 90 radiusY: 27
                                        fill: Color.BLACK}
                                    b: [Ellipse {centerX: 400 centerY: 240
                                            radiusX: 84 radiusY: 23
                                        },
                                        Rectangle {x: 322, y: 210
                                            width: 100, height: 25
                                        },
                                    ]
                                },
                                ShapeSubtract {
                                    a: Ellipse {centerX: 400 centerY: 250
                                        radiusX: 90 radiusY: 27
                                        fill: Color.BLACK}
                                    b: Ellipse {centerX: 400 centerY: 250
                                        radiusX: 84 radiusY: 23}
                                },
                                ShapeSubtract {
                                    a: Ellipse {centerX: 400 centerY: 260
                                        radiusX: 90 radiusY: 27
                                        fill: Color.BLACK}
                                    b: Ellipse {centerX: 400 centerY: 260
                                        radiusX: 84 radiusY: 23}
                                },
                                ShapeSubtract {
                                    a: Ellipse {centerX: 400 centerY: 270
                                        radiusX: 90 radiusY: 27
                                        fill: Color.BLACK}
                                    b: Ellipse {centerX: 400 centerY: 270
                                        radiusX: 84 radiusY: 23}
                                },
                                ShapeSubtract {
                                    a: Ellipse {centerX: 400 centerY: 280
                                        radiusX: 90 radiusY: 27
                                        fill: Color.BLACK}
                                    b: Ellipse {centerX: 400 centerY: 280
                                        radiusX: 84 radiusY: 23}
                                },
                                ShapeSubtract {
                                    a: Ellipse {centerX: 400 centerY: 290
                                        radiusX: 90 radiusY: 27
                                        fill: Color.BLACK}
                                    b: [Ellipse {centerX: 400 centerY: 290
                                            radiusX: 84 radiusY: 24}
                                        Rectangle {x: 360, y: 300
                                            width: 100, height: 20
                                        }
                                    ]
                                },
                                //verwarming binen
                                Ellipse {
                                    centerX: 350, centerY: 240
                                    radiusX: 10, radiusY: 5
                                    fill: bind VermColor
                                },
                                Rectangle {
                                    x: 340, y: 120
                                    width: 20, height: 120
                                    fill: bind VermColor
                                },
                                Ellipse {
                                    centerX: 350, centerY: 150
                                    radiusX: 10, radiusY: 5
                                    fill: Color.BLACK
                                },
                                Rectangle {
                                    x: 340, y: 120
                                    width: 20, height: 30
                                    fill: Color.BLACK
                                },
                                //pijpen buiten tot riool
                                Polyline {
                                    points: [357, 313, 345, 318,
                                        345, 380, 405, 395, 405, 410]
                                    strokeWidth: 4.0
                                    stroke: Color.BLACK
                                },
                                ShapeSubtract {
                                    cache: true
                                    translateY: bind Nivo
                                    fill: LinearGradient {
                                        startX: 1.0 startY: 0.0 endX: 0.0 endY: 0.0
                                        stops: [
                                            //         Stop {color: Color.BLUE  offset: 0.0},
                                            //         Stop {color: Color.LIGHTBLUE  offset: 0.5},
                                            //         Stop {color: Color.LIGHTBLUE  offset: 1.0},
                                            Stop {color: Color.TRANSPARENT offset: 0.0},
                                            Stop {color: Color.LIGHTSKYBLUE offset: 1.0},
                                        ]
                                    }
                                    opacity: 0.5
                                    a: bind [
                                        Rectangle {
                                            //     opacity: 0.2
                                            x: 300, y: 100 width: 200, height: 240 - Nivo
                                            fill: Color.BLACK
                                        },
                                        Ellipse {
                                            //stroke: Color.BLACK
                                            //        opacity: 0.2
                                            centerX: 400, centerY: 340 - Nivo
                                            radiusX: 100, radiusY: 30
                                            fill: Color.BLACK
                                        }
                                    ]
                                    b: Ellipse {
                                        stroke: Color.BLACK
                                        //  opacity: 0.2
                                        centerX: 400, centerY: Nivo
                                        radiusX: 100, radiusY: 30
                                        fill: Color.BLACK
                                    }
                                },
                                Ellipse {
                                    //      stroke: Color.RED
                                    centerX: 400, centerY: bind Nivo + 100
                                    radiusX: 100, radiusY: 30
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                        proportional: true
                                        stops: [
                                            Stop {color: Color.TRANSPARENT offset: 0.0},
                                            Stop {color: Color.LIGHTSKYBLUE offset: 1.0},
                                        ]//Stops
                                    }//Fill
                                },
                                //water niveau reactor waarde
                                Text {
                                    fill: Color.BLACK
                                    font: Font {
                                        name: "Arial Bold"
                                        size: 10
                                    }
                                    x: 324, y: bind Nivo + 120
                                    content: bind "{NivoWaarde}%"
                                /*        effect: PerspectiveTransform{
                                llx:    Nivo + 20+ 4,  lly:    4.0
                                lrx:    Nivo + 20+ 5,  lry:    4.0
                                ulx:    Nivo + 20+ 4,  uly:    -4.0
                                urx:    Nivo + 20+ 5,  ury:    4.0
                                }
                                 */},
                                //Koeler onder
                                Rectangle {x: 390 y: 360 width: 50 height: 20
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                                        proportional: true
                                        stops: [
                                            Stop {color: Color.WHITE offset: 0.0},
                                            Stop {color: Color.BLACK offset: 1.0},
                                        ]
                                    }//Fill
                                },
                                Rectangle {x: 440 y: 624 width: 40 height: 20
                                    transforms: Shear {x: 0.0, y: -0.6}
                                    fill: Color.BLACK
                                },
                                // pijpen koeler
                                ShapeSubtract {
                                    a: Ellipse {centerX: 390 centerY: 350
                                        radiusX: 40 radiusY: 8
                                        fill: Color.BLACK}
                                    b: [Ellipse {centerX: 390 centerY: 350
                                            radiusX: 36 radiusY: 4},
                                        Rectangle {x: 380, y: 350
                                            width: 20, height: 20}
                                    ]
                                },
                                ShapeSubtract {
                                    a: Ellipse {centerX: 410 centerY: 330
                                        radiusX: 40 radiusY: 8
                                        fill: Color.BLACK}
                                    b: Ellipse {centerX: 410 centerY: 330
                                        radiusX: 36 radiusY: 4}
                                },
                                Polyline {
                                    points: [380, 356, 380, 374, 388, 374]
                                    strokeWidth: 4.0
                                    stroke: Color.BLACK
                                },
                                //lamp koeler
                                Ellipse {
                                    centerX: 400, centerY: 374
                                    radiusX: 6, radiusY: 4
                                    fill: bind KoelColor
                                },
                                //reactor
                                ShapeSubtract {
                                    a: [
                                        Rectangle {x: 300 y: 100
                                            width: 200 height: 240
                                        },
                                        Ellipse {centerX: 400 centerY: 340
                                            radiusX: 100 radiusY: 30
                                        }
                                    ]
                                    b: [Ellipse {
                                            centerX: 400 centerY: 100
                                            radiusX: 100 radiusY: 30
                                        }
                                    ]
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 1.0,
                                        endY: 0.0, proportional: true
                                        stops: [
                                            Stop {color: Color.TRANSPARENT offset: 0.0},
                                            Stop {color: Color.WHITE offset: 0.5},
                                            Stop {color: Color.BLACK offset: 1.0},
                                        ]
                                    }//Fill
                                },
                                Ellipse {
                                    centerX: 400, centerY: 100
                                    radiusX: 100, radiusY: 30
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                                        proportional: true
                                        stops: [
                                            Stop {offset: 0.0 color: Color.GRAY},
                                            Stop {offset: 1.0 color: Color.BLACK}
                                        ]//Stops
                                    }//Fill
                                },
                                //Roerwerk
                                ShapeSubtract {
                                    a: [
                                        Rectangle {x: 380 y: 70 width: 40
                                            height: 30
                                        },
                                        Ellipse {centerX: 400 centerY: 100
                                            radiusX: 20 radiusY: 6
                                        }
                                    ]
                                    b: Ellipse {
                                        centerX: 400 centerY: 70
                                        radiusX: 20 radiusY: 6
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
                                    centerX: 400, centerY: 70
                                    radiusX: 20, radiusY: 6
                                    fill: Color.DARKGRAY
                                },
                                Ellipse {
                                    centerX: 400, centerY: 70
                                    radiusX: 6, radiusY: 2
                                    fill: Color.BLACK
                                },
                                //verwarming boven
                                ShapeSubtract {
                                    a: [
                                        Rectangle {x: 330 y: 90 width: 40 height: 20
                                        },
                                        Ellipse {centerX: 350 centerY: 110
                                            radiusX: 20 radiusY: 6
                                        }
                                    ]
                                    b: Ellipse {
                                        centerX: 340 centerY: 80
                                        radiusX: 20 radiusY: 6
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
                                    centerX: 350, centerY: 90
                                    radiusX: 20, radiusY: 6
                                    fill: Color.DARKGRAY
                                },
                                //TEMPERATUUR opnemer boven
                                Rectangle {x: 440 y: 90 width: 30 height: 20
                                    fill: LinearGradient {
                                        startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                                        proportional: true
                                        stops: [
                                            Stop {color: Color.WHITE offset: 0.0},
                                            Stop {color: Color.BLACK offset: 1.0},
                                        ]
                                    }//Fill
                                },
                                Rectangle {x: 471 y: 80 width: 30 height: 10
                                    transforms: Shear {x: -0.35, y: 0}
                                    fill: Color.DARKGRAY
                                },
                                //Niveaus HL en LL
                                Ellipse {
                                    centerX: 494, centerY: 124
                                    radiusX: 4, radiusY: 6
                                    fill: bind NvReColorHHL
                                },
                                Ellipse {
                                    centerX: 494, centerY: 144
                                    radiusX: 4, radiusY: 6
                                    fill: bind NvReColorHL
                                },
                                Ellipse {
                                    centerX: 494, centerY: 204
                                    radiusX: 4, radiusY: 6
                                    fill: bind NvReColorLL
                                },
                                //Reactor temperatuur waarde
                                Text {
                                    fill: Color.BLACK
                                    font: Font {name: "Arial Bold" size: 10}
                                    x: 290, y: 70 content: "Temp."
                                },
                                Text {
                                    fill: Color.BLACK
                                    font: Font {name: "Arial Bold" size: 12}
                                    x: 330, y: 70 content: bind TempRe
                                },
                                Text {
                                    fill: Color.BLACK
                                    font: Font {name: "Arial Bold" size: 10}
                                    x: 355, y: 70 content: "C"
                                },
                                Text {
                                    font: Font {
                                        name: "Arial Bold"
                                        size: 12
                                    }
                                    fill: Color.WHEAT
                                    x: 385, y: 120
                                    content: "Reactor"
                                }
                            ]
                        }
                    ]
                };
    }
}
