/*
 * Simulation.fx
 *
 * Created on 24-mei-2010, 15:47:25
 */

package visualizationelements;

/**
 * @author Alex Sentcha
 */
import javafx.animation.*;
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

public class Simulation extends CustomNode {
    public var Level: Number = 88;   //Level Tank
    public var setpoint: Number = 88;   //set point control valve
    public var Sim: Boolean = true;
    public var slidervalue: Integer = 50;
    public var move: Number = 0;

    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 1500ms
                        action: function (): Void {
                            tick();
                            }
                    }
                ]
            };

    public function start() {
        t1.play();
    }
    public function stop() {
        t1.stop();
    }
    function tick() {
        if (Sim == true){
            Simul();
        }else{
            move = 0;
        }
        Main.setAlarm(Sim)
    }

    function Simul() {
        if (Level >= 99){Level =0;}
        Level += 1;

        // Control valve
        if(slidervalue == setpoint){
            move = 0;
        }else{
            if(slidervalue > setpoint){
                move = 2;
                setpoint += 1;
            }else if(slidervalue < setpoint){
                move = -2;
                setpoint -= 1;
            }
        }    
    }


    public override function create(): Node {
        return Group {
                    content: [
                        //Create onder text
                        Text {
                            fill: Color.BLACK
                            font: Font {
                                size: 10
                                name: "Arial Bold"
                                letterSpacing: 0.15
                            }
                            x: 5, y: 618
                            content: "Nothing"
                         }
                    ]
                }
    }
    

}
