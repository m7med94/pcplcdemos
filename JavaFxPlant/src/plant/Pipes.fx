/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package plant;

/**
 * @author Alex Sentcha
 */
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.ShapeSubtract;
import javafx.scene.shape.Ellipse;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.shape.Line;
import javafx.scene.shape.Arc;
import javafx.scene.shape.ArcType;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Polygon;
import javafx.scene.paint.RadialGradient;

public class Pipes extends CustomNode {

    def filter = Group {
                translateX: 303
                translateY: 100
                content: [
                    Rectangle {
                        x: 0, y: 0
                        width: 38, height: 51
                        fill: LinearGradient {
                            startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                            proportional: true
                            stops: [
                                Stop { offset: 0.0 color: Color.WHITE },
                                Stop { offset: 1.0 color: Color.LIGHTGRAY }
                            ]//Stops
                        }//Fill
                    },
                    Rectangle {
                        x: 3, y: 3
                        width: 32, height: 45
                        fill: Color.GRAY
                    },
                    Rectangle {
                        x: 3, y: 3
                        width: 32, height: 45
                        opacity: 0.4
                        fill: LinearGradient {
                            startX: 0.0, startY: 0.0, endX: 0.0, endY: 1.0,
                            proportional: true
                            stops: [
                                Stop { offset: 0.0 color: Color.WHITE },
                                Stop { offset: 1.0 color: Color.LIGHTSKYBLUE }
                            ]//Stops
                        }//Fill
                    },
                    Polygon {
	points : [ 38,0, 38,51, 43,44, 43, -5]
	fill: Color.GRAY
}
                    Polygon {
	points : [ 38,0, 0,0, 5,-5, 43, -5]
	fill: Color.LIGHTGRAY
}

                    for (i in [0..7]) {
                        Line {
                            startX: 3,
                            startY: 3 + i * 6
                            endX: 35,
                            endY: 6 + i * 6
                            strokeWidth: 1
                            stroke: Color.WHITE
                        }
                    }
                    for (i in [0..6]) {
                        Line {
                            startX: 3,
                            startY: 9 + i * 6
                            endX: 35,
                            endY: 6 + i * 6
                            strokeWidth: 1
                            stroke: Color.WHITE
                        }
                    }
                ]
            };
    var posX: Number[] = [60, 60, 159, 220, 329, 390, 449, 449, 490, 490];
    var posY: Number[] = [77, 156, 77, 156, 11, 156, 16, 111, 61, 156];
    def exit = Group {
                translateX: 50
                translateY: 50
                content: [
                    for (i in [0..9]) {
                        Rectangle {
                            x: bind posX[i], y: bind posY[i]
                            width: 1, height: 7
                            fill: LinearGradient {
                                startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                                proportional: true
                                stops: [
                                    Stop { color: Color.GRAY offset: 0.0 },
                                    Stop { color: Color.WHITE offset: 0.3 },
                                    Stop { color: Color.BLACK offset: 1.0 },
                                ]
                            }//Fill
                        }
                    }
                ]
            }
    //pipe 1 supply
    def pipe1 = Polygon {
                translateX: 0
                translateY: 107
                points: [0, 0, 165, 0, 160, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 supply
    def pipe2 = ShapeSubtract {
                translateX: 160
                translateY: 113
                a: [
                    Polygon {
                        points: [0, 0, 0, 15, 5, 15, 5, -5]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 15
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            }
    //pipe 3 supply
    def pipe3 = Polygon {
                translateX: 110
                translateY: 128
                points: [0, 0, 110, 0, 110, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 1 pump 1 mix tank 1
    def pipe10 = Polygon {
                translateX: 110
                translateY: 207
                points: [0, 0, 60, 0, 65, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 pump 1 mix tank 1
    def pipe11 = Polygon {
                translateX: 170
                translateY: 207
                points: [0, 0, 0, -25, 5, -20, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 1 pump 1 mix tank 1
    def pipe12 = ShapeSubtract {
                translateX: 170
                translateY: 182
                a: [
                    Polygon {
                        points: [0, 0, 160, 0, 160, 5, 5, 5]
                    }
                    Circle {
                        centerX: 160
                        centerY: 2.5
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            }
    //pipe 1 pump 2 mix tank 1
    def pipe20 = Polygon {
                translateX: 270
                translateY: 207
                points: [0, 0, 60, 0, 65, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 pump 2 mix tank 2
    def pipe21 = Polygon {
                translateX: 330
                translateY: 207
                points: [0, 0, 0, -55, 5, -55, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 pump 2 mix tank 2
    def pipe22 = Polygon {
                translateX: 310
                translateY: 98
                points: [0, 0, 0, -37, 5, -32, 5, 0]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 3 pump 2 mix tank 1
    def pipe23 = Polygon {
                translateX: 310
                translateY: 62
                points: [0, 0, 70, 0, 70, 5, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 1 storage tank 1
    def pipe30 = Polygon {
                translateX: 440
                translateY: 207
                points: [0, 0, 40, 0, 35, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 storage tank 1
    def pipe31 = Polygon {
                translateX: 475
                translateY: 207
                points: [0, 5, 0, 44, 5, 49, 5, 0]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 3 storage tank 1
    def pipe32 = Polygon {
                translateX: 465
                translateY: 252
                points: [0, 0, 10, 0, 15, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
//pipe 1 storage tank 2 supply
    def pipe40 = Polygon {
                translateX: 465
                translateY: 72
                points: [0, 0, 0, -52, 5, -52, 5, -5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 storage tank 2
    def pipe41 = Polygon {
                translateX: 470
                translateY: 67
                points: [0, 0, 30, 0, 30, 5, -5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 3 storage tank 2
    def pipe42 = Polygon {
                translateX: 540
                translateY: 112
                points: [0, 0, 50, 0, 45, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 4 storage tank 2
    def pipe43 = Polygon {
                translateX: 585
                translateY: 112
                points: [0, 5, 0, 160, 5, 165, 5, 0]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 5 storage tank 2
    def pipe44 = Polygon {
                translateX: 565
                translateY: 272
                points: [0, 0, 20, 0, 25, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 1 storage tank 3 supply
    def pipe50 = Polygon {
                translateX: 455
                translateY: 168
                points: [0, 0, 0, -148, 5, -148, 5, -5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 storage tank 2
    def pipe51 = Polygon {
                translateX: 460
                translateY: 162
                points: [0, 0, 40, 0, 40, 5, -5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 3 storage tank 3
    def pipe52 = Polygon {
                translateX: 540
                translateY: 207
                points: [0, 0, 40, 0, 35, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 4 storage tank 3
    def pipe53 = Polygon {
                translateX: 575
                translateY: 207
                points: [0, 5, 0, 54, 5, 59, 5, 0]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 5 storage tank 3
    def pipe54 = Polygon {
                translateX: 515
                translateY: 262
                points: [0, 0, 60, 0, 65, 5, 0, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    // pipe 1 reactor 1
    def pipe101 = Polygon {
                translateX: 332
                translateY: 252
                points: [0, 0, 112, 0, 112, 5, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 reactor 1
    def pipe102 = ShapeSubtract {
                translateX: 332
                translateY: 252
                a: [
                    Polygon {
                        points: [0, 0, 0, 63, 5, 63, 5, 5]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 63
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            }
    // pipe 1 reactor 2, 3
    def pipe103 = Polygon {
                translateX: 402
                translateY: 320
                points: [0, 0, 96, 0, 91, 5, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 reactor 3
    def pipe104 = ShapeSubtract {
                translateX: 402
                translateY: 415
                a: [
                    Polygon {
                        points: [0, 0, 0, -95, 5, -90, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 3 reactor 2, 3
    def pipe105 = ShapeSubtract {
                translateX: 420
                translateY: 320
                a: [
                    Polygon {
                        points: [0, 0, 0, -64, 5, -64, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                    Circle {
                        centerX: 2.5
                        centerY: -64
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 4 reactor 2
    def pipe106 = ShapeSubtract {
                translateX: 492
                translateY: 365
                a: [
                    Polygon {
                        points: [0, 0, 0, -40, 5, -45, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    // pipe 1 reactor 1
    def pipe201 = Polygon {
                translateX: 372
                translateY: 262
                points: [0, 0, 122, 0, 122, 5, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 reactor 1
    def pipe202 = ShapeSubtract {
                translateX: 372
                translateY: 262
                a: [
                    Polygon {
                        points: [0, 0, 0, 62, 5, 62, 5, 5]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 62
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            }
    //pipe 3 reactor 2
    def pipe203 = ShapeSubtract {
                translateX: 442
                translateY: 424
                a: [
                    Polygon {
                        points: [0, 0, 0, -159, 5, -159, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                    Circle {
                        centerX: 2.5
                        centerY: -154
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 4 reactor 3
    def pipe204 = ShapeSubtract {
                translateX: 532
                translateY: 374
                a: [
                    Polygon {
                        points: [0, 0, 0, -59, 5, -64, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 5 reactor 3
    def pipe205 = ShapeSubtract {
                translateX: 447
                translateY: 310
                a: [
                    Polygon {
                        points: [0, 0, 89, 0, 84, 5, 0, 5]
                    },
                    Circle {
                        centerX: 0
                        centerY: 2.5
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 1 reactor 3
    def pipe301 = ShapeSubtract {
                translateX: 552
                translateY: 364
                a: [
                    Polygon {
                        points: [0, 0, 0, -59, 5, -64, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 2 reactor 3
    def pipe302 = ShapeSubtract {
                translateX: 468
                translateY: 300
                a: [
                    Polygon {
                        points: [0, 0, 89, 0, 84, 5, 0, 5]
                    },
                    Circle {
                        centerX: 0
                        centerY: 2.5
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 3 reactor 3
    def pipe303 = ShapeSubtract {
                translateX: 462
                translateY: 414
                a: [
                    Polygon {
                        points: [0, 0, 0, -139, 5, -139, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    // pipe 4 reactor 1
    def pipe304 = Polygon {
                translateX: 392
                translateY: 272
                points: [0, 0, 153, 0, 153, 5, 5, 5]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };
    //pipe 5 reactor 1
    def pipe305 = ShapeSubtract {
                translateX: 392
                translateY: 315
                a: [
                    Polygon {
                        points: [0, 0, 0, -44, 5, -39, 5, 0]
                    }
                    Circle {
                        centerX: 2.5
                        centerY: 0
                        radius: 2.5
                    }
                ]
                fill: LinearGradient {
                    startX: 0.0 startY: 0.0 endX: 1.0 endY: 0.0
                    proportional: true
                    stops: [
                        Stop { color: Color.GRAY offset: 0.0 },
                        Stop { color: Color.WHITE offset: 0.3 },
                        Stop { color: Color.BLACK offset: 1.0 },
                    ]
                }//Fill
            };

    public override function create(): Node {

        return Group {
                    content: [
                        filter,
                        pipe1, pipe3, pipe2,
                        pipe20, pipe21, pipe22, pipe23,
                        pipe10, pipe11, pipe12,
                        pipe30, pipe31, pipe32,
                        pipe40, pipe41, pipe42, pipe43, pipe44,
                        pipe50, pipe51, pipe52, pipe53, pipe54,
                        pipe101, pipe102, pipe103, pipe104, pipe105, pipe106,
                        pipe304, pipe305, pipe303, pipe301, pipe302,
                        pipe201, pipe202, pipe203, pipe204, pipe205,
                        exit
                    ]
                };
    }

}
