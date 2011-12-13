/*
 * Simulation.fx
 *
 * Created on 24-mei-2010, 15:47:25
 */

package VisElemS7;

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
import VisElemS7.DataIsoTCP;


public class Simulation extends CustomNode {
    public var setpoint: Number = 88;   //set point control valve
    public var Sim: Boolean = true;
    public var slidervalue: Integer = 50;
    public var sliderrotation: Integer = 50;
    public var move: Number = 0;

    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 5000ms
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
        if (Sim == false){
            move = 0;
        }
        Main.setAlarm(Sim);
        Simul();
    }

    function Simul() {
        if (DataIsoTCP.Connection == true) {
            Main.connection = "Siemens IsoTCP connected IP={DataIsoTCP.IP}";
            slidervalue = DataIsoTCP.ReadData();
            sliderrotation = DataIsoTCP.ReadData1()-40;
            if (DataIsoTCP.ReadData2() == 0){
                    Main.agitator.startAgitator();
                    Main.pump.start();
                    Main.conveyor.start();
                    Sim = true;
                    Main.electricvalve.openclose = true;
                    Main.panel.OnOff = 30;
            }else{
                    Main.agitator.stopAgitator();
                    Main.pump.stop();
                    Main.conveyor.stop();
                    Sim = false;
                    Main.electricvalve.openclose = false;
                    Main.panel.OnOff = 330;
            }
        }else{
            Main.connection = "Siemens IsoTCP disconnected";
            Main.agitator.move = sliderrotation -40;
            Main.pump.move = sliderrotation-40;
            Main.conveyor.move = sliderrotation-40;
        }

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
