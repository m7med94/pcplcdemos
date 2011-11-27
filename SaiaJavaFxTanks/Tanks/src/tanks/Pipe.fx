/*
 * Pump.fx
 *
 * Created on 5-mei-2009, 12:37:13
 */
package tanks;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.Polygon;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

/**
 * @author Alex Sentcha
 */
public class Pipe extends CustomNode {
    public override function create(): Node {
        return Group {
                    content: [
                       Polygon {
                                translateX: 143
                                translateY: 138 //is upper left corner
                                points : [ 10,0, 0,10, 143,10, 133,0, 10,0 ]
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
                       Polygon {
                                translateX: 407
                                translateY: 138 //is upper left corner
                                 points : [ 10,0, 0,10, 143,10, 133,0, 10,0 ]
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
                            translateX: 143
                            translateY: 127 //right angle is under
                            points : [ 0,0, 0,21, 10,11, 10,-11, 0,0 ]
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
                        //pipe 4
                        Polygon {
                            translateX: 275
                            translateY: 127 //right angle is under
                            points : [ 0,0, 0,11, 10,21, 10,-11, 0,0 ]
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
                        //pipe 4
                        Polygon {
                            translateX: 408
                            translateY: 127 //right angle is under
                            points : [ 0,0, 0,21, 10,11, 10,-11, 0,0 ]
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
                        //pipe 4
                        Polygon {
                            translateX: 540
                            translateY: 127 //right angle is under
                            points : [ 0,0, 0,11, 10,21, 10,-11, 0,0 ]
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
                };
    }
}
