/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * @author Alex Sentcha
 */

package plant;

import javafx.lang.FX;
//import javafx.scene.Cursor;
import javafx.scene.Group;
import javafx.scene.input.MouseEvent;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.Scene;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;
//import javafx.stage.StageStyle;
import javafx.stage.*;
import javafx.scene.transform.*;

import plant.elements.*;
import plant.Simulation;
import plant.PathAnimation;
import plant.PathAnimation2;
import plant.WaterAnimation;
import plant.Pipes;
import plant.Panel;

/**
 * @author Alex
 */

public var responce : String = "";

var inBrowser = "true".equals(FX.getArgument("isApplet") as String);
var closeButtonVisible = true;//bind (not inBrowser);

var mixtanks: TankF[];
var stortank: TankD;
var stortank2: TankC[];
var conveyor: Conveyor[];
var gutter: Gutter[];
var anim1: PathAnimation;
var anim2: PathAnimation2;
var anim3: WaterAnimation;
var elvalve1: ElectricValve[];
var elvalve2: ElectricValve[];
var elvalve3: ElectricValve[];
var elvalveRe1: ElectricValve[];
var elvalveRe2: ElectricValve[];
var elvalveRe3: ElectricValve[];
var pump: Pump[];
var simulation: Simulation;
var controlvalve: ControlValve[];
var pipes: Pipes;
var flowmeters: Flowmeter[];
var pressuremeter: Pressuremeter[];
var reactor: Reactor[];
var rotationmenu: RotationMenu[];
var panel: Panel;
//var bucketelevator: BucketElevator;


public var alarmHHL: Number = 95;
public var alarmHL: Number = 85;
public var alarmLL: Number = 18;

function addPanel() {
    panel = Panel {
        translateX: 40
        translateY: 300
    }
};

function aadRotaionMenu(){
    var textM: String[] = ["11", "22", "33"];
    for (i in [0..2]) {
        insert RotationMenu {
            translateX: bind peX[i]+10;
            translateY: bind peY[i]-20;
            reclama: bind "{%2.1f simulation.reactorValue[2-i]}";//textM[2-i];
        } into rotationmenu
    }
}

public var peX: Number[] = [300, 460, 370];
public var peY: Number[] = [320, 370, 420];
function addReactor() {
    var name: String[] = ["1 reactor", "2 reactor", "3 reactor"];
    for (i in [0..2]) {
        insert Reactor {
            translateX: bind peX[i];
            translateY: bind peY[i];
            name: bind name[2-i];
            value: bind simulation.reactorValue[2-i]
        //  colorf: bind Color.BLACK;
            move: bind simulation.aggitatorRMove[2-i];
            levelHHL: bind alarmHHL
            levelHL: bind alarmHL
            levelLL: bind alarmLL
        } into reactor
    }
};
function addTanks() {
    //mix tanks
    var name1: String[] = ["Mix 1", "Mix 2"];
    var color1: Color[] = [Color.LIGHTSKYBLUE,Color.LIGHTSKYBLUE];
    for (i in [0..1]) {
        insert TankF {
            translateX: 50 + i * 160;
            translateY: 120;
            name: bind name1[i];
            value:  bind simulation.mixTankValue[i];
            color: bind color1[i];
        } into mixtanks
    }
    //storige tank 1
    stortank = TankD{
        translateX: 380
        translateY: 55
        name: "Buffer";
        value: bind simulation.bufferTankValue;
        color: bind Color.TOMATO;
        levelHHL: bind alarmHHL
        levelHL: bind alarmHL
        levelLL: bind alarmLL
    };
    //storige tanks 2,3
    var name2: String[] = ["liq.1", "liq.2"];
    var color2: Color[] = [Color.LIGHTSKYBLUE,Color.LIGHTSKYBLUE];
    for (i in [0..1]) {
        insert TankC {
            translateX: 500
            translateY: 60+ i * 95;;
            name: bind name2[i];
            value: bind simulation.storageTankValue[i];
            color: bind color2[i];
            levelHHL: bind alarmHHL
            levelHL: bind alarmHL
            levelLL: bind alarmLL
        } into stortank2
    };
};
function addGutter() {
    for (i in [0..1]) {
        insert Gutter {
            translateX: 92 + i * 117;
            translateY: 100;
            wideu: 20;
            wideb: 10;
        } into gutter
   }
};
function addConveyor() {
    var posX: Number[] = [50, 160];
    var posY: Number[] = [60, 90];
    var length: Number[] = [210,100];
    for (i in [0..1]) {
        insert Conveyor{
            translateX: bind posX[i];
            translateY: bind posY[i];
            name: "";
            move: bind simulation.conveyorMove[i];
            distance: bind length[i];
            scaleX : 0.5;
            scaleY : 0.5;
         } into conveyor
   }
};
/*
public function SetConveyor(par : Boolean, on: Boolean){
    if(on == true){
        if (par == true){
            conveyor[1].move = 10;
        }else{
            conveyor[1].move = -10;
        }
        conveyor[0].move = 10;
    }else{
        conveyor[0].move = 0;
        conveyor[1].move = 0;
    }
};
*/
public var cvX: Number[] = [455, 555, 555];
public var cvY: Number[] = [190, 95, 190];
public var setpoint: Number[] = [88, 23, 36];   //set point control valve
function addValves() {
   //control valves
    var name: String[] = ["", "", ""];
    for (i in [0..2]) {
        insert ControlValve {
            translateX: bind cvX[i];
            translateY: bind cvY[i];
            name: "";//bind name[i];
            move: bind simulation.move[i];
            value: bind simulation.setpoint[i];
            colorC: bind Color.BLACK;
            scaleX : 0.6;
            scaleY : 0.6;
        } into controlvalve
    }
   //electrical valves
   for (i in [0..1]) {
        insert ElectricValve {
            translateX: 125 + i * 70;
            translateY: 106;
            name: bind "Electric Valve";
            color: bind Color.BLACK;
        } into elvalve1
    }
    for (i in [0..1]) {
        insert ElectricValve {
            translateX: 125 + i * 160;
            translateY: 185;
            name: bind "Electric Valve";
            color: bind Color.BLACK;
        } into elvalve2
    }
    for (i in [0..1]) {
        insert ElectricValve {
            translateX: 485;
            translateY: 45 + i * 95;
            name: bind "Electric Valve";
            openclose: bind simulation.storageTankValve[i];
            color: bind Color.BLACK;
        } into elvalve3
    }
    // valve reactors
    for (i in [0..3]) {
        insert ElectricValve {
            translateX: peX[i] + 10;
            translateY: peY[i] - 60;
            name: bind "Electric Valve";
            openclose: bind simulation.Valve1Reactor[2-i];
            color: bind Color.BLACK;
            transforms: Rotate { angle: -90 };
            scaleY:-1
        } into elvalveRe1
    }
    for (i in [0..3]) {
        insert ElectricValve {
            translateX: peX[i] + 50;
            translateY: peY[i] - 50;
            name: bind "Electric Valve";
            openclose: bind simulation.Valve2Reactor[2-i];
            color: bind Color.BLACK;
            transforms: Rotate { angle: -90 };
            scaleY:-1
        } into elvalveRe2
    }
    for (i in [0..3]) {
        insert ElectricValve {
            translateX: peX[i] + 70;
            translateY: peY[i] - 60;
            name: bind "Electric Valve";
            openclose: bind simulation.Valve3Reactor[2-i];
            color: bind Color.BLACK;
            transforms: Rotate { angle: -90 };
            scaleY:-1
        } into elvalveRe3
    }
};
function addPump() {
    for (i in [0..1]) {
        insert Pump {
            translateX: 150 + i * 160;
            translateY: 203;
            name: bind "Pump";
            scaleX : 0.6;
            scaleY : 0.6;
        } into pump
    }
};
public var flX: Number[] = [455, 505, 555];
public var flY: Number[] = [230, 240, 250];
function addFlowmeters() {
    var name: String[] = ["", "", ""];
    for (i in [0..2]) {
        insert Flowmeter {
            translateX: bind flX[i];
            translateY: bind flY[i];
            name: "";//bind name[i];
            value: bind simulation.flow[i];
            colorf: bind Color.BLACK;
           // scaleX : 0.6;
           // scaleY : 0.6;
        } into flowmeters
    }
};
public var prX: Number[] = [333, 313];
public var prY: Number[] = [160, 76];
function addPressuremeter() {
    for (i in [0..1]) {
        insert Pressuremeter {
            translateX: bind prX[i];
            translateY: bind prY[i];
            name: bind "";
            value: bind simulation.pressure[i];
            colorf: bind Color.BLACK;
        } into pressuremeter
    }
};
public function SetAnim(OnOff: Boolean, or1or2: Boolean){
    if(OnOff==true){
        anim1.play();
        anim2.play();
        if(or1or2==true){
            anim1.vis= true;
            anim2.vis= false;
        }else{
            anim2.vis= true;
            anim1.vis= false;
        }
    }else{
        anim1.pause();
        anim2.pause();
    }
};
public function SetMixInst(i:Integer, par: Boolean){
    if (par == true){
        mixtanks[i].startAgitator();
        elvalve1[i].openclose = true;
        elvalve2[i].openclose = false;
        pump[i].stop();
    }else{
        mixtanks[i].stopAgitator();
        elvalve1[i].openclose = false;
        elvalve2[i].openclose = true;
        pump[i].start();
    }
};


//Initalize values for x-axis
//Initialize values for stage location on screen
var stageX : Number = 625;
var stageY : Number = 625;
//Create title bar at top of window
var opacity = 0.6;
var dragRect = Rectangle {
            x: 0,
            y: 0
            width: 625,
            height: 20
            fill: LinearGradient {
                startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0
                stops: [
                    Stop {color: Color.GRAY offset: 0.0},
                    Stop {color: Color.BLACK offset: 1.0},
                ]
            }
            stroke: Color.BLACK
            strokeWidth: 2
            opacity: 0.9
            onMouseDragged: function (e: MouseEvent): Void {
                stageX += e.dragX;
                stageY += e.dragY;
            }
        };
//Create title bar at bottom of window
var onderRect = Rectangle {
            x: 0,
            y: 605
            width: 625,
            height: 20
            fill: LinearGradient {
                startX: 0.0, startY: 1.0, endX: 0.0 endY: 0.0
                stops: [
                    Stop {color: Color.GRAY offset: 0.0},
                    Stop {color: Color.WHITE offset: 1.0}
                ]
            }
            stroke: Color.BLACK
            strokeWidth: 2
            opacity: 0.9
        };
//Create Close button on right side of title bar
var close = Rectangle {
            x: 605,
            y: 3
            arcHeight: 2
            arcWidth: 2
            width: 15,
            height: 15
            visible: bind closeButtonVisible
            fill: LinearGradient {
                startX: 0.0 startY: 0.0 endX: 0.0 endY: 1.0 stops: [
                    Stop {color: Color.ORANGE offset: 0.0},
                    Stop {color: Color.DARKRED offset: 0.5},
                    Stop {color: Color.ORANGE offset: 1.0},
                ]
            }
            stroke: Color.BLACK
            strokeWidth: 2
            opacity: bind opacity
            onMouseClicked: function (e: MouseEvent): Void {
                FX.exit();
            }
            onMouseMoved: function (e: MouseEvent): Void {
                opacity = 1.0
            }
            onMouseExited: function (e: MouseEvent): Void {
                opacity = 0.6
            }
        };
var button = Text {
            fill: Color.WHITE
            visible: bind closeButtonVisible
            font: Font {
                name: "Arial Bold"
                size: 14
            }
            x: 609,
            y: 15
            content: "x"
        }
//--------------------------------------------------------------
//stage
//--------------------------------------------------------------
public function run() {

    addTanks();
    addGutter();
    addConveyor();
    simulation = Simulation{};
    anim1 = PathAnimation{};
    anim2 = PathAnimation2{};
    anim3 = WaterAnimation{};
    addValves();
    addPump();
    pipes = Pipes{};
    addFlowmeters();
    addPressuremeter();
    addReactor();
    aadRotaionMenu();
    addPanel();

    Stage {
        x: bind stageX
        y: bind stageY
        title: ""
        width: 625
        height: 625
        style: StageStyle.TRANSPARENT
        scene: Scene {
            fill: Color.web("#BDB76B")
            content: [
                dragRect, onderRect, close, button,
                reactor,pipes,
                mixtanks, gutter, anim1, anim2, anim3, conveyor,
                controlvalve, elvalve3, flowmeters, pressuremeter,
                simulation,  elvalveRe1, elvalveRe2, elvalveRe3,
                elvalve1, elvalve2, pump, stortank, stortank2,
                rotationmenu, panel,

                //Create background behind tanks ---------------------
                Rectangle {
                    x: 30, y: 35 width: 565, height: 560
                    fill: Color.WHITE
                    opacity: 0.2
                    stroke: Color.BLACK
                    strokeWidth: 2
                },
                //Create title text----------------------------------
                Text {
                    fill: Color.WHITE
                    font: Font {
                        size: 12
                        name: "Arial Bold"
                        letterSpacing: 0.25
                    }
                    x: 40, y: 15
                    content: "Plant."
                },
                Text {
                    fill: Color.WHITE
                    font: Font {
                        size: 12
                        name: "Arial Bold"
                        letterSpacing: 0.25
                    }
                    x: 400, y: 15
                    content: "(JavaFX) 2010"
                }
           ]
        }
        extensions: [
            AppletStageExtension {
                shouldDragStart: function(e): Boolean {
                    return inBrowser ;//and e.primaryButtonDown and (dragRect.hover or detachButton.hover);
                }
                onDragStarted: function() {
                    inBrowser = false;
                }
                onAppletRestored: function() {
                    inBrowser = true;
                }
                useDefaultClose: false
            }
        ]
    }
    simulation.start();
}
