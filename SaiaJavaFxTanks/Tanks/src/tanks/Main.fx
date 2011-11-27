/*
 * Main.fx
 *
 * Created on 27-apr-2010, 17:33:43
 */

package tanks;

import javafx.scene.Scene;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.input.MouseEvent;
import javafx.stage.*;
import javafx.scene.control.Button;
import javafx.scene.layout.VBox;

import tanks.TankStation;
import tanks.TankProduction;
import tanks.Pipe;
import tanks.Simulation;

import tanks.Utils;
import javax.swing.JFileChooser;

/**
 * @author Alex Sentcha
 */

def fileChooser = new JFileChooser();



public var responce : String = "";
var simulation: Simulation;
 
var inBrowser = "true".equals(FX.getArgument("isApplet") as String);
var closeButtonVisible = true;//bind (not inBrowser);
var pipe: Pipe;
var tankstation: TankStation[];
var tankproduction: TankProduction[];

var monitor = Monitor {
    height: 200
    width: 555
    translateX: 5
    translateY: 165
    visible: false
};
function addPipe() {
    pipe = Pipe {
        translateX: 35
        translateY: 70
    }
};
function addTanks() {
    var tankname: Integer[] = [1,2,3,4,5];
    var color = [Color.OLIVE, Color.TOMATO, Color.SKYBLUE, Color.YELLOWGREEN, Color.BLUE];
    var level: Number[] = [10.0, 100.0, 50.0, 40.0];
    for (i in [0..3]) {
        insert TankStation {
            translateX: 10 + i * 132
            translateY: -71
            fillLevel: level[i]
            name: tankname[i]
            colortank: color[i]
        } into tankstation
    }
};
function addProductions() {
    var tankname: Integer[] = [5,6];
    var color2 = [Color.TAN, Color.PALEGREEN];
    var level: Number[] = [5.0, 5.0];
    for (i in [0..1]) {
        insert TankProduction {
            translateX: 30 + i * 265
            translateY: 90
            fillLevel: level[i]
            name: tankname[i]
            colortank: color2[i]
        } into tankproduction
    }
};
function addSimulation() {
    simulation = Simulation{
        translateX: 0
        translateY: 0
    }
};
public function SetMode(par: Boolean){
    if (par == true){
        tankproduction[0].mode = "auto";
        tankproduction[1].mode = "auto";
    }else{
        tankproduction[0].mode = "manual";
        tankproduction[1].mode = "manual";
     }

}

public function addPump(){
    tankproduction[0].stop();
    tankproduction[0].PompAAN = false;
    tankproduction[1].stop();
    tankproduction[1].PompAAN = false;
}
public function SetPump(par1: Boolean, par2: Boolean){
    if (tankproduction[0].PompAAN != par1) {
        if (par1 == false) {
            tankproduction[0].stop();
        }
        if (par1 == true) {
            tankproduction[0].start();
        }
        tankproduction[0].PompAAN = par1;
    }
    if (tankproduction[1].PompAAN != par2) {
        if (par2 == false) {
            tankproduction[1].stop();
        }
        if (par2 == true) {
            tankproduction[1].start();
        }
        tankproduction[1].PompAAN = par2;
    }
    if (par1 == true) {
        tankproduction[0].colorOC2 = Color.LIME;
        tankproduction[0].openclose2 = 8;
    }else{
        tankproduction[0].colorOC2 = Color.RED;
        tankproduction[0].openclose2 = 2;
    }
    if (par2 == true) {
        tankproduction[1].colorOC2 = Color.LIME;
        tankproduction[1].openclose2 = 8;
    }else{
        tankproduction[1].colorOC2 = Color.RED;
        tankproduction[1].openclose2 = 2;
    }

}

public function LevelsTanks( par1: Number, par2: Number, par3: Number,
                             par4: Number, par5: Number, par6: Number){
    tankstation[0].fillLevel = par1;
    tankstation[1].fillLevel = par2;
    tankstation[2].fillLevel = par3;
    tankstation[3].fillLevel = par4;
    tankproduction[0].fillLevel = par5;
    tankproduction[1].fillLevel = par6;
};
public function rotationValve(par1:  Integer,par2:  Integer,
                              par3:  Integer,par4:  Integer){
    tankstation[0].move =par1;
    tankstation[1].move =par2;
    tankstation[2].move =par3;
    tankstation[3].move =par4;

}
public function SPValve(par1:  Number, par2: Number,
                        par3: Number, par4:  Number){
    tankstation[0].sp =par1;
    tankstation[1].sp =par2;
    tankstation[2].sp =par3;
    tankstation[3].sp =par4;
}

public function ElmagValve(par1:  Number, par2: Number,
                           par3: Number,par4:  Number){
    if(par1 == 0){
        tankstation[0].colorOC = Color.RED;
        tankstation[0].openclose = 2;
    }else{
        tankstation[0].colorOC = Color.LIME;
        tankstation[0].openclose = 8;
    }
    if(par2 == 0){
        tankstation[1].colorOC = Color.RED;
        tankstation[1].openclose = 2;
    }else{
        tankstation[1].colorOC = Color.LIME;
        tankstation[1].openclose = 8;
   }
    if(par3 == 0){
        tankstation[2].colorOC = Color.RED;
        tankstation[2].openclose = 2;
    }else{
        tankstation[2].colorOC = Color.LIME;
        tankstation[2].openclose = 8;
    }
    if(par4 == 0){
        tankstation[3].colorOC = Color.RED;
        tankstation[3].openclose = 2;
   }else{
        tankstation[3].colorOC = Color.LIME;
        tankstation[3].openclose = 8;
    }
}
public function ElmagValve2(par1:  Number, par2: Number,
                           par3: Number,par4:  Number){
    if(par1 == 0){
        tankproduction[0].colorOC1 = Color.RED;
        tankproduction[0].openclose1 = 2;
    }else{
        tankproduction[0].colorOC1 = Color.LIME;
        tankproduction[0].openclose1 = 8;
    }
    if(par2 == 0){
        tankproduction[0].colorOC2 = Color.RED;
        tankproduction[0].openclose2 = 2;
    }else{
        tankproduction[0].colorOC2 = Color.LIME;
        tankproduction[0].openclose2 = 8;
    }
    if(par3 == 0){
        tankproduction[1].colorOC1 = Color.RED;
        tankproduction[1].openclose1 = 2;
    }else{
        tankproduction[1].colorOC1 = Color.LIME;
        tankproduction[1].openclose1 = 8;
    }
    if(par4 == 0){
        tankproduction[1].colorOC2 = Color.RED;
        tankproduction[1].openclose2 = 2;
    }else{
        tankproduction[1].colorOC2 = Color.LIME;
        tankproduction[1].openclose2 = 8;
    }
}
public function SetFlow(par1:  Number, par2: Number,
                        par3: Number, par4:  Number){
    monitor.updatePar ("{par1}","{par2}","{par3}","{par4}");
    tankstation[0].flow =par1;
    tankstation[1].flow =par2;
    tankstation[2].flow =par3;
    tankstation[3].flow =par4;
}


//Initalize values for x-axis
//Initialize values for stage location on screen
var stageX = 625;
var stageY = 625;
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
def saveButton = Button {
            text: "Save"
            action: function () {
                fileChooser.setSelectedFile(new java.io.File("FlowTanks.png"));
                def fc = fileChooser.showSaveDialog(null);
                if (fc == JFileChooser.APPROVE_OPTION) {
                    Utils.saveNode(monitor, fileChooser.getSelectedFile());
                }
            }
        }
def printButton = Button {
            text: "Print "
            action: function () {
                Utils.printNode(monitor);
            }
        }
def vBox = VBox {
            translateX: 540
            translateY: 320
            spacing: 5
            content: [saveButton, printButton]
        }


public function run(args: String[]) {

addPipe();
addTanks();
addProductions();
rotationValve(0,0,0,0);
SPValve(1,1,1,1);
monitor.visible = true;
addSimulation();
addPump();
SetMode(true);
fileChooser.setFileSelectionMode(JFileChooser.FILES_ONLY);

Stage {
    x: bind stageX
    y: bind stageY
    title: "  JavaFX 2010"
    width: 625
    height: 625
    style: StageStyle.TRANSPARENT
    scene: Scene {
        fill: Color.STEELBLUE//DIMGRAY//TEAL//SLATEGRAY//web("#BDB76B")
        content: [
            
            dragRect, onderRect, close, button,
            pipe, tankstation, tankproduction, monitor, simulation,
            vBox,

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
                x: 20, y: 15
                content: "  Tanks station                                                     JavaFX 2010"
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

