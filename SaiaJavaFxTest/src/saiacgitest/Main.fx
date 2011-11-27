/*
 * Main.fx
 *
 * Created on 1-apr-2010, 15:59:02
 */
package saiacgitest;
/**
 * @author Alex Sentcha
 */

import java.lang.Exception;
import javafx.animation.Interpolator;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.io.http.HttpRequest;
import javafx.scene.control.TextBox;
import javafx.scene.Group;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.LayoutInfo;
import javafx.scene.paint.Color;
import javafx.scene.Scene;
import javafx.scene.shape.Line;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.scene.text.TextOrigin;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import saiacgitest.view.ImageButton;
import saiacgitest.RequestHandler;
//import javafx.io.http.HttpHeader;

/**
 * @author Alex Sentcha
 */

// Data type to be used in trasaction
def dataType = "SAIA";
var stageDragInitialX: Number;
var stageDragInitialY: Number;
// Application Bounds
var sceneWidth: Number = bind scene.width;
var sceneHeight: Number = bind scene.height;
public var onException: function( message : String ) = null;

public var responce : String = "";
var ConString : String = "http://cgi-demo.saia-sps.dyndns.org/cgi-bin/";

// load data details
public function PLCData(merk:String,type: Boolean,value:String) : Void {

    alert("","");
    resetDataDetails();
    // Perform some basic validation on merk
    if(not validateMerk(merk)) {
        alert("Error", "Value {merk} is not valid. Enter valid value.");
        return ;
    }
    var location: String = "";
    if (type == true) {
        location = "{ConString}readVal.exe?PDP,,MW{merk},d";
        println("Loading {dataType} data from {location}...\"");
        message("Read data from PLC: MW {merk}...");
    } else {
        location = "{ConString}writeVal.exe?PDP,,MW{merk},d+{value}";
        println("Loading {dataType} data from {location}...\"");
        message("Write data to PLC: MW {merk}...");
    }
    try {
        var request = RequestHandler {
                    location: location
                    // headers: [ httpHeader ]
                    method: HttpRequest.GET
                }
        request.start();
    } catch (e: Exception) {
        println("WARNING: {e}");
        alert("Error", "Could not search... Please try again later.");
    }
}

public function PLCFile(name: String, type: Boolean): Void {

    var FileN: String = "OrderValues.exe?room+dummy+1000";
    var W1: String = "+PDP,,MW120,d+PDP,,MW121,d+PDP,,MW122,d+PDP,,MW123,d";
    var W2: String = "+PDP,,MW124,d+PDP,,MW125,d+PDP,,MW126,d+PDP,,MW127,d";

    alert("", "");
    resetDataDetails();
    var location: String = "";
    if (type == true) {
        location = "{ConString}ReadFile.exe?{name}";
        println("Read file {name} from {location}...\"");
        message("Read file {name} from PLC: ...");
    } else {
        location = "{ConString}{FileN}{W1}{W2}";
        println("Write order {name} to {location}...\"");
        message("Write order {name} to PLC: ...");
    }

    try {
        var request = RequestHandler {
                    location: location
                    method: HttpRequest.GET
                }
        request.start();
    } catch (e: Exception) {
        println("WARNING: {e}");
        alert("Error", "Could not search... Please try again later.");
    }
}

// Basic validation for MW
function validateMerk(merk: String): Boolean {
    // merk Code Format -> 0-999
    try {
        if (merk.length() <= 4) {
            var merkInt = java.lang.Integer.valueOf(merk).intValue();
            return (merkInt > 0);
        }
    } catch (e: Exception) {
    }
    return false;
}
// Reset Details
public function resetDataDetails(): Void {
    title = "Saia-Siemens PLC";
    address = "";
    waarde = "";
    comments = "";
}

public function showDataDetails(): Void {

    //address = trimString("MW{merkCodeText.text.trim()}", 25);
    waarde = trimString(responce, 150);
    bgImage.requestFocus();
}

// Trim the string if length is greater than specified length
function trimString(string: String, length: Integer): String {

    if (string == null)
        return "";
    if (string.length() > length) {
        return "{string.substring(0, length).trim()}...";
    } else {
        return string;
    }
}
//-------------------------  data  ---------------------------------
// Address resource
var address = "";
var addressText = Text {
            x: 25
            y: 50
            font: Font {name: "sansserif", size: 13}
            fill: Color.BLACK
            content: bind address
        }
// Content resource
var waarde = "";
var waardeText = Text {
            x: 25
            y: 68
            font: Font {name: "sansserif", size: 12}
            fill: Color.BLACK
            content: bind waarde
            wrappingWidth: bind (sceneWidth - 60)
            textOrigin: TextOrigin.TOP
            clip: Rectangle {
                x: 23 y: 68
                width: bind sceneWidth
                height: bind (ReadMerkPanel.translateY - 137)
            }
        }
// Latest review comments
var comments = "";
var commentsText = Text {
            x: 25
            y: 130
            font: Font {name: "sansserif", size: 11}
            fill: Color.BLACK
            content: bind comments
            wrappingWidth: bind (sceneWidth - 60)
            textOrigin: TextOrigin.TOP
            clip: Rectangle {
                x: 23 y: 130
                width: bind sceneWidth
                height: bind (ReadMerkPanel.translateY - 137)
            }
        };
// space Details Group
var readDetailsX: Number = 0;
var readDetailsDisplay = Group {
            content: bind [
                addressText, waardeText, commentsText
            ]
            translateX: bind readDetailsX
        }
var readDetailsGroup = Group {
            content: [readDetailsDisplay]
            clip: Rectangle {
                x: 15
                y: 32
                width: bind (sceneWidth - 30)
                height: bind (sceneHeight - 64)
            }
        }
//-------------------------read Group -----------------------------------------
var merkCodeLabel = Text {
            font: Font {name: "sansserif", size: 12}
            fill: Color.BLACK
            content: "   MW:"
            textOrigin: TextOrigin.TOP
            layoutInfo: LayoutInfo {vpos: javafx.geometry.VPos.CENTER}
        }
var merkCodeText: TextBox = TextBox {
            blocksMouse: true
            columns: 7
            selectOnFocus: false
            text: "120"
            action: function () {
                merkCodeText.commit();
                PLCData(merkCodeText.text.trim(), true, "");
            }
        }
var readButton = ImageButton {
            y: 2
            normalImage: Image {url: "{__DIR__}images/read_normal.png"};
            overImage: Image {url: "{__DIR__}images/read_over.png"};
            focusImage: Image {url: "{__DIR__}images/read_focus.png"};
            onMouseClicked: function (e) {
                merkCodeText.commit();
                PLCData(merkCodeText.text.trim(), true, "");
            }
            onKeyPressed: function (e: KeyEvent) {
                if (e.code == KeyCode.VK_ENTER) {
                    merkCodeText.commit();
                    PLCData(merkCodeText.text.trim(), true, "");
                }
            }
        }
var ReadMerkPanel: HBox = HBox {
            translateX: bind (sceneWidth - ReadMerkPanel.boundsInLocal.width) / 2.0
            translateY: bind (sceneHeight - 82)
            content: [merkCodeLabel, merkCodeText, readButton]
            spacing: 10
        };
//-------------------------write Group -----------------------------------------
var valueCodeLabel = Text {
            font: Font {name: "sansserif", size: 12}
            fill: Color.BLACK
            content: "Value:"
            textOrigin: TextOrigin.TOP
            layoutInfo: LayoutInfo {vpos: javafx.geometry.VPos.CENTER}
        }
var valueCodeText: TextBox = TextBox {
            blocksMouse: true
            columns: 7
            selectOnFocus: false
            text: "33"
            action: function () {
                valueCodeText.commit();
                PLCData(valueCodeText.text.trim(), false, valueCodeText.text.trim());
            }
        }
var writeButton = ImageButton {
            y: 2
            normalImage: Image {url: "{__DIR__}images/write_normal.png"};
            overImage: Image {url: "{__DIR__}images/write_over.png"};
            focusImage: Image {url: "{__DIR__}images/write_focus.png"};
            onMouseClicked: function (e) {
                valueCodeText.commit();
                PLCData(merkCodeText.text.trim(), false, valueCodeText.text.trim());
            }
            onKeyPressed: function (e: KeyEvent) {
                if (e.code == KeyCode.VK_ENTER) {
                    valueCodeText.commit();
                    PLCData(merkCodeText.text.trim(), false, valueCodeText.text.trim());
                }
            }
        }
var WriteMerkPanel: HBox = HBox {
            translateX: bind (sceneWidth - WriteMerkPanel.boundsInLocal.width) / 2.0
            translateY: bind (sceneHeight - 52)
            content: [valueCodeLabel, valueCodeText, writeButton]
            spacing: 10
        };
//-------------------------order Group -----------------------------------------
var nameOrderLabel = Text {
            font: Font {name: "sansserif", size: 12}
            fill: Color.BLACK
            content: "   File:     "
            textOrigin: TextOrigin.TOP
            layoutInfo: LayoutInfo {vpos: javafx.geometry.VPos.CENTER}
        }
var orderWriteButton = ImageButton {
            y: 2
            normalImage: Image {url: "{__DIR__}images/write_normal.png"};
            overImage: Image {url: "{__DIR__}images/write_over.png"};
            focusImage: Image {url: "{__DIR__}images/write_focus.png"};
            onMouseClicked: function (e) {
                valueCodeText.commit();
                PLCFile("room", false);
            }
            onKeyPressed: function (e: KeyEvent) {
                if (e.code == KeyCode.VK_ENTER) {
                    valueCodeText.commit();
                    PLCFile("room", false);
                }
            }
        }
var orderReadButton = ImageButton {
            y: 2
            normalImage: Image {url: "{__DIR__}images/read_normal.png"};
            overImage: Image {url: "{__DIR__}images/read_over.png"};
            focusImage: Image {url: "{__DIR__}images/read_focus.png"};
            onMouseClicked: function (e) {
                valueCodeText.commit();
                PLCFile("room", true);
            }
            onKeyPressed: function (e: KeyEvent) {
                if (e.code == KeyCode.VK_ENTER) {
                    valueCodeText.commit();
                    PLCFile("room", true);
                }
            }
        }
var WriteOrderPanel: HBox = HBox {
            translateX: bind (sceneWidth - WriteOrderPanel.boundsInLocal.width) / 2.0
            translateY: bind (sceneHeight - 112)
            content: [nameOrderLabel, orderWriteButton, orderReadButton]
            spacing: 10
        };
//-----------------------------------------------------------------------
var bgImage: ImageView = ImageView {
            focusTraversable: true
            image: bind getBGImage(sceneWidth, sceneHeight)
            /*
            onKeyPressed:function(e:KeyEvent) {
            if(e.code == KeyCode.VK_LEFT) {
            onBack();
            } else if(e.code == KeyCode.VK_RIGHT) {
            onNext();
            } else if(e.code == KeyCode.VK_DOWN) {
            merkCodeText.requestFocus();
            }
            }*/
            onMouseClicked: function (e: MouseEvent) {
                bgImage.requestFocus();
            }
        }
// Background Image
function getBGImage(width: Integer, height: Integer): Image {
    var bounds = "{width}X{height}";
    if (bounds.equals("240X320") or bounds.equals("240X400") or bounds.equals("320X240") or bounds.equals("400X240")) {
        return Image {
                    url: "{__DIR__}images/background_{width}X{height}.png"
                }
    } else { //Unsupported dimension
        return null;
    }
}
// Application Title
var titleBar = Rectangle {
            width: bind sceneWidth
            height: 25
            fill: Color.TRANSPARENT
            visible: bind ("{__PROFILE__}" != "browser")
            onMousePressed: function (e) {
                stageDragInitialX = e.screenX - stage.x;
                stageDragInitialY = e.screenY - stage.y;
            }
            onMouseDragged: function (e) {
                stage.x = e.screenX - stageDragInitialX;
                stage.y = e.screenY - stageDragInitialY;
            }
        }
var title = "Data uit PLC";
var titleText: Text = Text {
            translateX: bind (sceneWidth - titleText.boundsInLocal.width) / 2.0
            y: 18
            font: Font {name: "sansserif", size: 14}
            fill: Color.BLACK
            content: bind title
        }
// Divider
var divider = Line {
            startX: 0 startY: 25
            endX: bind sceneWidth endY: 25
            stroke: Color.rgb(138, 110, 72)
        }
// Dispose Application
var closeButton = ImageButton {
            x: bind (sceneWidth - 20)
            y: 8
            normalImage: Image {url: "{__DIR__}images/x_normal.png"}
            overImage: Image {url: "{__DIR__}images/x_over.png"}
            visible: bind ("{__PROFILE__}" != "browser")
            onMouseClicked: function (e) {
                javafx.lang.FX.exit();
            }
        }
// Service Provider Information
var serviceProviderText: Text = Text {
            translateX: bind (sceneWidth - serviceProviderText.boundsInLocal.width) / 2.0
            y: bind (sceneHeight - 10)
            font: Font {name: "sansserif", size: 11}
            fill: Color.rgb(96, 78, 51)
            content: "Saia cgi-bin Web Services."
        }
var scene: Scene = Scene {
            content: Group {
                content: bind [
                    bgImage, titleBar, titleText, divider,
                    readDetailsGroup,
                    closeButton, ReadMerkPanel,
                    WriteMerkPanel, WriteOrderPanel, serviceProviderText
                ]
                clip: Rectangle {
                    width: bind sceneWidth
                    height: bind sceneHeight
                    arcWidth: 20
                    arcHeight: 20
                }
            }
            fill: Color.TRANSPARENT
        }
// Application User Interface
var stage: Stage = Stage {
            title: "Read data from PLC"
            resizable: false
            style: StageStyle.TRANSPARENT
            scene: bind scene
            width: 240
            height: 320
        }

public function alert(alertTitle: String, msg: String): Void {
    println(msg);
    address = alertTitle;
    comments = trimString(msg, 240);
}

public function message(alertTitle: String): Void {
    address = alertTitle;
}

function run()  {
    PLCData("120", true, "");
}
