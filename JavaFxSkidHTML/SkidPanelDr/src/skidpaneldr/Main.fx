/*
 * Main.fx
 *
 * Created on 28-feb-2010, 15:21:23
 */

package skidpaneldr;

import java.applet.Applet;
//import javax.swing.JOptionPane;

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Slider;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.control.Button;
import javafx.stage.StageStyle;
import javafx.scene.paint.Color;
import javafx.scene.control.Label;
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;

import javafx.scene.input.MouseEvent;
import javafx.scene.shape.Circle;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.scene.text.TextAlignment;
import javafx.stage.AppletStageExtension;

/**
 * @author Katja
 */

var applet: Applet = FX.getArgument("javafx.applet") as Applet;
var jsObject = new JavaScriptUtil(applet);
var inbrowser = true;
// Following variable is true if browser and Java configuration support applet dragging.
var draggable = AppletStageExtension.appletDragSupported;
var stage:Stage;

var startButtonP = Button { text: " ON "   action: function () {
                jsObject.call("StartSim", [1]);  } };
var stopButtonP = Button {  text: " OFF"   action: function () {
                jsObject.call("StartSim", [0]);  } };
var startButtonTP = Button {text: " ON "   action: function () {
                jsObject.call("StartTP", [1]);   } };
var stopButtonTP = Button { text: " OFF"   action: function () {
                jsObject.call("StartTP", [0]);   } };
var startButtonDP = Button {text: "Auto"   action: function () {
                jsObject.call("StartDP", [1]);   } };
var stopButtonDP = Button { text: "Man."   action: function () {
                jsObject.call("StartDP", [0]);   } };
var sliderHP = Slider { max: 1000  vertical: false };
var sliderFA = Slider { max: 1000  vertical: false };
var sliderPHP = Slider {min: 300   max: 600    vertical: false };
var sliderPFA = Slider {min: 300   max: 600    vertical: false };
var sliderWL = Slider { max: 100   vertical: false };
var sliderReL = Slider {max: 1000  vertical: false };

def levelHP: Integer = bind sliderHP.value on replace {
        jsObject.call("ChangeHPNivo", ["{levelHP}"]);
};
def levelFA: Integer = bind sliderFA.value on replace {
        jsObject.call("ChangeFANivo", ["{levelFA}"]);
};
def doshp: Integer = bind sliderPHP.value on replace {
        jsObject.call("ChangeDosHP", ["{doshp}"]);
};
def dosfa: Integer = bind sliderPFA.value on replace {
        jsObject.call("ChangeDosFA", ["{dosfa}"]);
};
def waterlevel: Integer = bind sliderWL.value on replace {
        jsObject.call("ChangeWatNivo", ["{waterlevel}"]);
};
def reactorlevel: Integer = bind sliderReL.value on replace {
        jsObject.call("ChangeReacNivo", ["{reactorlevel}"]);
};
var Col1 = VBox {
            spacing: 6
            content: bind [
                Label {  text:  "Proces"   },
                startButtonP, stopButtonP
            ]
};
var Col2 = VBox {
            spacing: 6
            content: bind [
                Label {
                  text:  "Level HP: {levelHP/10}%"
                },  sliderHP,
                 Label {
                  text:  "Level FA: {levelFA/10}%"
                },  sliderFA
            ]
};
var Col3 = VBox {
            spacing: 6
            content: bind [
                Label {
                  text:  "Tr.pump"
                },
                startButtonTP, stopButtonTP
            ]
};
var Col4 = VBox {
            spacing: 6
            content: bind [
                Label {
                  text:  "Dosing pumpHP: {doshp/10}%"
                },  sliderPHP,
                Label {
                  text:  "Dosing pumpFA: {dosfa/10}%"
                },  sliderPFA
            ]
};
var Col5 = VBox {
            spacing: 6
            content: bind [
                 Label {
                  text:  "D.pump"
                },
                startButtonDP, stopButtonDP
            ]
};
var Col6 = VBox {
            spacing: 6
            content: bind [
                Label {
                  text:  "Water level: {waterlevel}%"
                },  sliderWL,
                 Label {
                  text:  "Level reactor: {reactorlevel/10}%"
                },  sliderReL
            ]
};
var hBox = HBox {
            translateX: 10
            translateY: 25
            spacing: 10
            content: [
                Col1, Col2, Col3, Col4, Col5, Col6,
            ]
};

// Rectangle for the window title bar
var dragRect: Rectangle =  Rectangle {  //define draggable region
    x: 0
    y: 0
    width: 625
    height: 20
    fill: LinearGradient {
        startX: 0.0
        startY: 0.0
        endX: 0.0
        endY: 1.0
        stops: [
            Stop {color: Color.BLACK           offset: 0.0      },
            Stop {color: Color.LIGHTSLATEGRAY  offset: 0.3      },
            Stop {color: Color.BLACK           offset: 1.0      },
        ]
    }
    /* The following code implements the standard dragging behavior after
    the applet has moved outside of the browser.
    */
    onMouseDragged: function(e:MouseEvent):Void {
        stage.x += e.dragX;
        stage.y += e.dragY;
    }
};

function run() {
 stage = Stage {
    title: "  Skid Hydroform.                          (JavaFX) 2010"
    width: 625
    height: 110
    style: StageStyle.TRANSPARENT
        scene: Scene {
         fill: Color.LIGHTBLUE
         content:[
            //Create background behind tubes ---------------------
            Rectangle {
                x: 2, y: 22 width: 621, height: 86
 //               opacity: 0.5
                stroke: Color.BLACK
                strokeWidth: 2
                fill: LinearGradient {
                    startX: 0.0, startY: 0.0, endX: 1.0, endY: 0.0,
                    proportional: true
                    stops: [
                    Stop {color: Color.TRANSPARENT offset: 0.0},
                    Stop {color: Color.WHITE offset: 0.3},
                    Stop {color: Color.GRAY offset: 1.0},
                    ]
                }//Fill
            },
            dragRect, hBox,
            Text {
                fill: Color.GOLD
                font: Font {
                    size: 12
                    name: "Arial Bold"
                    letterSpacing: 0.25
                }
                x: 20, y: 15
                content: "Control simulation panel. (Draggable, take out browser)"
            },
       ]
       }
       extensions: [
         AppletStageExtension {
            //define mouse state if cursor is in draggable region
            shouldDragStart: function(e): Boolean {
                return e.primaryButtonDown and dragRect.hover;
            }
            //set variable to indicate when applet is out of the browser
            onDragFinished: function(): Void  {
                inbrowser = false;
            }
            //set variable to indicate when applet is in the browser
            onAppletRestored: function(): Void  {
                inbrowser = true;
            }

            useDefaultClose: true
        }
      ]
    }
}