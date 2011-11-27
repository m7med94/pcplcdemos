/*
 * Simulation.fx
 *
 * Created on 24-mei-2010, 15:47:25
 */
package plant;

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

    public var Sim: Boolean = true;
    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 1500ms
                        action: function(): Void {
                            tick();
                        }
                    }
                ]
            };
    init { t1.play(); }
    public function start() {
        Main.SetMixInst(0, true);
        Main.SetMixInst(1, false);
        Main.SetAnim(true, true);
    }

    public function stop() {
        t1.stop();
    }

    function tick() {
        if (Sim == true) {
            Simul();
        } else {
            move = 0;
        }
    }

    function Simul() {
        reactorC();
        filter();
        mix();
        flowmeters();
        storage();
        buffer();
    }

    //reactors
    public var reactorValue: Number[] = [70.1, 50.1, 12.5];
    public var Valve1Reactor: Boolean[] = [false, false, false];
    public var Valve2Reactor: Boolean[] = [false, false, false];
    public var Valve3Reactor: Boolean[] = [false, false, false];
    public var flow: Number[] = [0, 0, 0];   //set point control valve
    //status 0-on/off  1-load  2-run 3-unload
    var status: Integer[] = [1, 3, 1];
    var statusS: String[] = ["???", "???", "???"];
    var time: Integer[] = [0, 0, 0];
    public var aggitatorRMove: Number[] = [0,0,0];

    function reactorC() {
        for (i in [0..2]) {
            if (status[i] != 0) {
                if (status[i] == 1) {
                    Valve1Reactor[i] = true;
                    Valve2Reactor[i] = true;
                    Valve3Reactor[i] = true;
                    countValue(i);
                    if (reactorValue[i] >= 80) {
                        status[i] = 2;
                        aggitatorRMove[i] = 5;
                    }
                    statusS[i] = "LOAD";
                }
                if (status[i] == 2) {
                    Valve1Reactor[i] = false;
                    Valve2Reactor[i] = false;
                    Valve3Reactor[i] = false;
                    time[i] += 1;
                    if (time[i] >= 60) {
                        status[i] = 3;
                        time[i] = 0;
                        aggitatorRMove[i] = 0;
                    }
                    statusS[i] = "RUNNING";
                }
                if (status[i] == 3) {
                    reactorValue[i] -= 3.1;
                    if (reactorValue[i] <= 5) {
                        status[i] = 1;
                    }
                    statusS[i] = "UNLOAD";
                }
            } else {
                statusS[i] = "OFF";
            }
            simulRotContValve(i);
        }
    }
    public var setpoint: Number[] = [88, 23, 36];   //set point control valve
    public var move: Number[] = [0,0,0];
    function simulRotContValve(i: Integer){
                // Control valve
        if(Main.setpoint[i] == setpoint[i]){
            move[i] = 0;
        }else{
            if(Main.setpoint[i] > setpoint[i]){
                if((Main.setpoint[i] - setpoint[i])>5){
                    setpoint[i] += 5;
                }else{
                    setpoint[i] += 1;
                }
                move[i] = 2;
            }else if(Main.setpoint[i] < setpoint[i]){
                if((setpoint[i] - Main.setpoint[i])>5){
                    setpoint[i] -= 5;
                }else{
                    setpoint[i] -= 1;
                }
                move[i] = -2;
            }
        }
    }
    function countValue(i: Integer) {
       if (Valve1Reactor[i]) {
            reactorValue[i] += setpoint[0] / 105.1;
        }
        if (Valve2Reactor[i]) {
            reactorValue[i] += setpoint[1] / 105.1;
        }
        if (Valve3Reactor[i]) {
            reactorValue[i] += setpoint[2] / 105.1;
        }
    }

    function flowmeters() {
        if ((Valve1Reactor[0] == true) or (Valve1Reactor[1] == true) or (Valve1Reactor[2] == true)) {
            flow[0] = setpoint[0] / 4.33;
            af();
        } else {
            flow[0] = 0;
        }
        if ((Valve2Reactor[0] == true) or (Valve2Reactor[1] == true) or (Valve2Reactor[2] == true)) {
            flow[1] = setpoint[1] / 4.33;
            af();
        } else {
            flow[1] = 0;
        }
        if ((Valve3Reactor[0] == true) or (Valve3Reactor[1] == true) or (Valve3Reactor[2] == true)) {
            flow[2] = setpoint[2] / 4.33;
            af();
        } else {
            flow[2] = 0;
        }
    }

    function af() {
        bufferTankValue -= setpoint[0] / 121.3;
        if (bufferTankValue <= 2) {
            bufferTankValue = 2;
        }
        storageTankValue[0] -= setpoint[1] / 121.3;
        if (storageTankValue[0] <= 2) {
            storageTankValue[0] = 2;
        }
        storageTankValue[1] -= setpoint[2] / 121.3;
        if (storageTankValue[1] <= 2) {
            storageTankValue[1] = 2;
        }

    }

    //buffer tank
    public var bufferTankValue: Number = 94.9;

    function buffer() {
        if (((TankLevelDown[0]) or (TankLevelDown[1])) and (bufferTankValue <= 97)) {
            bufferTankValue += 1.8;
        }
    }

    //storage tanks
    public var storageTankValue: Number[] = [92, 73];
    var levelUp: Boolean[] = [false, false];
    public var storageTankValve: Boolean[] = [false,false];
    function storage() {
        //supply
        if (storageTankValue[0] <= 50) {
            storageTankValve[0] = true;
            levelUp[0] = true;
        }
        if (storageTankValue[0] >= 95) {
            storageTankValve[0] = false;
            levelUp[0] = false;
        }
        if (storageTankValue[1] <= 50) {
            storageTankValve[1] = true;
            levelUp[1] = true;
        }
        if (storageTankValue[1] >= 95) {
            storageTankValve[1] = false;
            levelUp[1] = false;
        }
        if (levelUp[0]) {
            storageTankValue[0] += 2;
        }
        if (levelUp[1]) {
            storageTankValue[1] += 2;
        }
    }

    //mix tanks
    var TankLevelUp: Boolean[] = [true, false];
    var TankLevelDown: Boolean[] = [false, true];
    public var mixTankValue: Number[] = [50, 50];
    var levelTankMax: Number[] = [88, 88];
    var levelTankMin: Number[] = [14, 16];
    public var conveyorMove: Number[] = [10,-10];

    function mix() {
        //mix tank 1 level
        if (TankLevelUp[0] == true) {
            mixTankValue[0] += 1;
        }
        if (TankLevelDown[0] == true) {
            mixTankValue[0] -= 1;
        }
        if (mixTankValue[0] >= levelTankMax[0]) {
            TankLevelUp[0] = false;
            TankLevelDown[0] = true;
            Main.SetMixInst(0, false);
        }
        if (mixTankValue[0] <= levelTankMin[0]) {
            TankLevelDown[0] = false;
        }
        //mix tank 2 level
        if (TankLevelUp[1] == true) {
            mixTankValue[1] += 1;
        }
        if (TankLevelDown[1] == true) {
            mixTankValue[1] -= 1;
        }
        if (mixTankValue[1] >= levelTankMax[1]) {
            TankLevelUp[1] = false;
            TankLevelDown[1] = true;
            Main.SetMixInst(1, false);
        }
        if (mixTankValue[1] <= levelTankMin[1]) {
            TankLevelDown[1] = false;
        }
        //conveyors
        if ((mixTankValue[0] <= levelTankMin[0]) and (TankLevelUp[0] == false) and (TankLevelUp[1] == false)) {
            TankLevelUp[0] = true;
             conveyorMove[0] = 10;
            conveyorMove[1] = -10;
            Main.SetMixInst(0, true);
            Main.SetAnim(true, true);
        } else if ((mixTankValue[1] <= levelTankMin[1]) and (TankLevelUp[1] == false) and (TankLevelUp[0] == false)) {
            TankLevelUp[1] = true;
            conveyorMove[0] = 10;
            conveyorMove[1] = 10;
            Main.SetMixInst(1, true);
            Main.SetAnim(true, false);
        } else if ((TankLevelUp[0] == false) and (TankLevelUp[1] == false)) {
            conveyorMove[0] = 0;
            conveyorMove[1] = 0;
            Main.SetAnim(false, false);
        }
    }

    // filter pressure
    public var pressure: Number[] = [2.11, 1.54];

    function filter() {
        if ((TankLevelDown[0]) or (TankLevelDown[1])) {
            if (pressure[0] >= 2.11) {
                pressure[0] = 2.08;
            } else {
                pressure[0] += 0.01;
            }
            if (pressure[0] <= 1.0) {
                pressure[0] = 2.08;
            }
            pressure[1] = pressure[0] - 0.72;
        } else {
            pressure[0] = 0;
            pressure[1] = 0;
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
                            content: bind "Status: reactor1-{statusS[0]}-{time[0]}    reactor2-{statusS[1]}-{time[1]}     reactor3-{statusS[2]}-{time[2]} "
                        }
                    ]
                }
    }

}
