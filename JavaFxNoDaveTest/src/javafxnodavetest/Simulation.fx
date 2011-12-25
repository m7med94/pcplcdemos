/*
 * Simulation.fx
 *
 * Created on 24-mei-2010, 15:47:25
 */
package javafxnodavetest;

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
import javafxnodavetest.DataIsoTCP;

public class Simulation extends CustomNode {

    public var PLCvalue_1: Number = 50;   //Level Tank
    public var PLCvalue_2: Number = 50;
    public var setpoint: Number = 88;   //set point control valve
    public var value: Number = 50;
    public var rotation: Number = 10;
    public var move: Number = 0;
    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 2000ms
                        action: function(): Void {
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
        Simul();
    }

    function Simul() {

        if (DataIsoTCP.Connection == true) {
            Main.connection = "Siemens IsoTCP connected IP={DataIsoTCP.IP}";
            //Write value to PLC
            DataIsoTCP.WriteData(value as Integer, rotation as Integer );
            //reading values PLC
            PLCvalue_1 = DataIsoTCP.ReadData(100);
            PLCvalue_2 = DataIsoTCP.ReadData(104);
            if (DataIsoTCP.ReadByte(108) == 0) {
                Main.agitator.stopAgitator();
                Main.pump.stop();
                Main.conveyor.stop();
                Main.electricvalve.openclose = false;
                Main.panel.OnOff = 330;
                Main.setAlarm(false);
            } else {
                Main.agitator.startAgitator();
                Main.pump.start();
                Main.conveyor.start();
                Main.electricvalve.openclose = true;
                Main.panel.OnOff = 30;
                Main.setAlarm(true);
            }
        }else{
            Main.connection = "Siemens IsoTCP disconnected";
        }

        // Control valve
        if (value == setpoint) {
            move = 0;
        } else {
            if (value > setpoint) {
                move = 2;
                setpoint += 1;
            } else if (value < setpoint) {
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
