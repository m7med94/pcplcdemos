/*
 * Main.fx
 *
 * Created on 28-feb-2010, 15:29:07
 */
package tankscontrolpanel;

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.scene.input.MouseEvent;
import javafx.stage.AppletStageExtension;
import ControlPanel;
/**
 * @author Alex Sentcha
 */
public var message: String = "";
var stage:Stage;
var inbrowser = true;
var bedpan = ControlPanel {
            visible: true
        };

function addPanel() {
    bedpan = ControlPanel {
        translateX: 0
        translateY: 20
    }
};
//Create background behind panel
var backgr = Rectangle {
            x: 2, y: 22 width: 621, height: 86
            //               fill: Color.WHITE
            opacity: 0.8
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
        };
// Rectangle for the window title bar
var dragRect: Rectangle = Rectangle { //define draggable region
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
                    Stop {color: Color.BLACK offset: 0.0},
                    Stop {color: Color.LIGHTSLATEGRAY offset: 0.3},
                    Stop {color: Color.BLACK offset: 1.0},
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
//Create title bar at bottom of window
var onderRect = Rectangle {
            x: 0,
            y: 110
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
var bartext: Text = Text {
            fill: Color.GOLD
            font: Font {
                size: 12
                name: "Arial Bold"
                letterSpacing: 0.25
            }
            x: 20, y: 15
            content: "Control Panel.                   (take it out browser)."
        };
var ondertext: Text = Text {
            fill: Color.BLACK
            font: Font {
                size: 10
                name: "Arial Bold"
                letterSpacing: 0.15
            }
            x: 5, y: 123
            content: bind message
        };

function run()   {
    addPanel();
    bedpan.visible = true;

 stage =  Stage {
        title: "Control panel"
        width: 625
        height: 130
        //style: StageStyle.TRANSPARENT
        scene: Scene {
            fill: Color.STEELBLUE
            content: [
                dragRect, backgr, bedpan, bartext, onderRect, ondertext
            ]
        }
        resizable: false
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
