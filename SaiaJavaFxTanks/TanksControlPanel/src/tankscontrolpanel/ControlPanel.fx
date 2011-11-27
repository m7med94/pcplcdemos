/*
 * BedPan.fx
 *
 * Created on 14-apr-2010, 19:03:57
 */
package tankscontrolpanel;

import javafx.scene.control.Slider;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.Node;
import javafx.scene.CustomNode;
import javafx.io.http.HttpRequest;
import java.lang.Exception;
import javafx.util.*;

/**
 * @author Alex
 */
public class ControlPanel extends CustomNode {

    def SPvalveT1: Integer = bind sliderT1.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW133,d+{SPvalveT1}");
            };
    def SPvalveT2: Integer = bind sliderT2.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW135,d+{SPvalveT2}");
            };
    def SPvalveT3: Integer = bind sliderT3.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW137,d+{SPvalveT3}");
            };
    def SPvalveT4: Integer = bind sliderT4.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW139,d+{SPvalveT4}");
            };
    var startButtonPr = Button {
                text: "AUTO" action: function () {
                    CommandTanks(1, 1);
                }
            };
    var stopButtonPr = Button {
                text: "MAN." action: function () {
                    CommandTanks(1, 0);
                }
            };
    var TextT1 = Label {
                text:  bind "SP Valve tank 1: {SPvalveT1}%"
            };
    var TextT2 = Label {
                text:  bind "SP Valve tank 2: {SPvalveT2}%"
            };
    var sliderT1 = Slider {
                min: 0 max: 100 value: 50 vertical: false
            };
    var sliderT2 = Slider {
                min: 0 max: 100 value: 50 vertical: false
             };
    var startButtonP1 = Button {
                text: " ON " action: function () {
                    CommandTanks(2, 1);
                }
            };
    var stopButtonP1 = Button {
                text: " OFF" action: function () {
                    CommandTanks(2, 0);
                }
            };
    var TextT3 = Label {
                text:  bind "SP Valve tank 3: {SPvalveT3}%"
            };
    var TextT4 = Label {
                text:  bind "SP Valve tank 4: {SPvalveT4}%"
            };
    var sliderT3 = Slider {
                min: 0 max: 100 value: 50 vertical: false
            };
    var sliderT4 = Slider {
                min: 0 max: 100 value: 50 vertical: false
            };
    var startButtonP2 = Button {
                text: " ON" action: function () {
                    CommandTanks(3, 1);
                }
            };
    var stopButtonP2 = Button {
                text: "OFF" action: function () {
                    CommandTanks(3, 0);
                }
            };
    var Col1 = VBox {
                spacing: 5
                content: bind [
                    Label {
                        text: "Proces"
                    },
                    startButtonPr, stopButtonPr
                ]
            };
    var Col2 = VBox {
                spacing: 5
                content: bind [
                    TextT1, sliderT1, TextT2, sliderT2
                ]
            };
    var Col3 = VBox {
                spacing: 5
                content: bind [
                    Label {
                        text: "Pump 1"
                    },
                    startButtonP1, stopButtonP1
                ]
            };
    var Col4 = VBox {
                spacing: 5
                content: bind [
                    TextT3, sliderT3, TextT4, sliderT4
                ]
            };
    var Col5 = VBox {
                spacing: 5
                content: bind [
                    Label {
                        text: "Pump 2"
                    },
                    startButtonP2, stopButtonP2
                ]
            };
    var hBox = HBox {
                translateX: 10
                translateY: 5
                spacing: 10
                content:  bind [
                    Col1, Col2, Col3, Col4, Col5
                ]
            };

    override function create(): Node {
        return hBox;

    };


    var comdif: Integer = 0;

    function CommandTanks(number: Integer, type: Integer): Void {
        if (number == 1 and type == 1) {
            comdif = Bits.bitOr(comdif, 0x01);
        }
        if (number == 1 and type == 0) {
            comdif = Bits.bitAnd(comdif, 0xf6);
        }
        if (number == 2 and type == 1) {
            comdif = Bits.bitOr(comdif, 0x02);
        }
        if (number == 2 and type == 0) {
            comdif = Bits.bitAnd(comdif, 0xf5);
        }
        if (number == 3 and type == 1) {
            comdif = Bits.bitOr(comdif, 0x04);
        }
        if (number == 3 and type == 0) {
            comdif = Bits.bitAnd(comdif, 0xf3);
        }
        // Main.message = "{comdif}";
        PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW131,d+{comdif}");
    };

    // var message: String = "";
    function PLCData(location: String): Void {
        try {
            var request = RequestHandler {
                        location: location
                        method: HttpRequest.GET
                    }
            Main.message = location;
            request.start();
        } catch (e: Exception) {
            println("WARNING: {e}");
            Main.message = "Error, Could not write... Please try again later.";
        }
    }
}
