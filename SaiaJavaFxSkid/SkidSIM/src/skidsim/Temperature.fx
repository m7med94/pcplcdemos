/*
 * Simulatie.fx
 *
 * Created on 4-okt-2009, 15:16:51
 */

package skidsim;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.scene.effect.PerspectiveTransform;
import javafx.scene.shape.Rectangle;
import java.lang.Math.*;
import javafx.scene.shape.Polyline;

/**
 * @author AlexSentcha
 */

public class Temperature  extends CustomNode {

var angle: Number = 0;
    var TempRot: Timeline = Timeline {
        repeatCount: Timeline.INDEFINITE;
        keyFrames: [
            KeyFrame {
                time: 50ms
                action: tick1
            }
        ]
    };init { TempRot.play(); }

    var X1 : Double ;
    var X2 : Double ;
    var Y1 : Double ;
    var Y2 : Double ;
    var Y3 : Double ;
    var Y4 : Double ;
    var t    : Double ;
    var pw   : Number   = 28; //imgWidth;
    var ph   : Number   = 16; //imgHeight;
    var radius = pw/2;
    var back   = ph/10;

    function tick1() {
        this.angle += 1;
        t   = toRadians(angle);
        X1 = radius-sin(t)*radius;
        X2 = radius+sin(t)*radius;
        Y1 = ph+cos(t)*back;
        Y2 = ph-cos(t)*back;
        Y3 = -cos(t)*back;
        Y4 = cos(t)*back;
        if (this.angle == 360) {
            this.angle = 0;
        }
     }
    public var TempReac: String      = "--";

     public override function create(): Node {
        return Group {
            content: [
            //HP tmperatuur                       
                Rectangle{
                    x: 0
                    y: 0
                    width: bind pw
                    height: bind ph
                    strokeWidth: 2.0
                    stroke: Color.GRAY
                    fill: Color.AQUA;
                    effect: PerspectiveTransform{ 	
                        llx: bind X1,  lly: bind Y1
                        lrx: bind X2,  lry: bind Y2
                        ulx: bind X1,  uly: bind Y4
                        urx: bind X2,  ury: bind Y3
                    }
                },
                Text {
                    fill: Color.DARKBLUE
                    font: Font { name: "Arial Bold" size: 10}
                        x: 0,  y: 0 content: bind TempReac
                    effect: PerspectiveTransform{
                        llx: bind X1,  lly: bind Y1
                        lrx: bind X2,  lry: bind Y2
                        ulx: bind X1,  uly: bind Y4
                        urx: bind X2,  ury: bind Y3
                    }
               },
                Polyline {
                    points : [ 14,16, 14,20 ]
                    strokeWidth: 2.0
                    stroke: Color.BLACK
                },

            ]
        };
    }
}

