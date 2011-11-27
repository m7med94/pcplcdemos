/*
 * BedPan.fx
 *
 * Created on 14-apr-2010, 19:03:57
 */
package skidcontrolpanel;

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
public class BedPan extends CustomNode {

    def levelHP: Integer = bind sliderHP.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW153,d+{levelHP}");
            };
    def levelFA: Integer = bind sliderFA.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW155,d+{levelFA}");
            };
    def doshp: Integer = bind sliderPHP.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW157,d+{doshp}");
            };
    def dosfa: Integer = bind sliderPFA.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW159,d+{dosfa}");
            };
    def waterlevel: Integer = bind sliderWL.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW161,d+{waterlevel}");
            };
    var reactorlevel: Integer = bind sliderReL.value on replace {
                PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW163,d+{reactorlevel}");
            };
    var startButtonP = Button {
                text: " ON " action: function () {
                    CommandSkid(1, 1);
                }
            };
    var stopButtonP = Button {
                text: " OFF" action: function () {
                    CommandSkid(1, 0);
                }
            };
    var TextHP = Label {
                text:  bind "Level HP: {levelHP}%"
            };
    var TextFA = Label {
                text:  bind "Level FA: {levelFA}%"
            };
    var sliderHP = Slider {max: 100
                vertical: false
            };
    var sliderFA = Slider {
                max: 100
                vertical: false
            };
    var startButtonTP = Button {
                text: " ON " action: function () {
                    CommandSkid(2, 1);
                }
            };
    var stopButtonTP = Button {
                text: " OFF" action: function () {
                    CommandSkid(2, 0);
                }
            };
    var TextPHP = Label {
                text:  bind "Dosing pump HP: {doshp}%"
            };
    var TextPFA = Label {
                text:  bind "Dosing pump FA: {dosfa}%"
            };
    var sliderPHP = Slider {
                min: 10
                max: 100
                vertical: false
            };
    var sliderPFA = Slider {
                min: 10
                max: 100
                vertical: false
            };
    var startButtonDP = Button {
                text: "Auto" action: function () {
                    CommandSkid(3, 1);
                }
            };
    var stopButtonDP = Button {
                text: "Man." action: function () {
                    CommandSkid(3, 0);
                }
            };
    var TextWL = Label {
                text:  bind "Water level: {waterlevel}%"
            };
    var TextReL = Label {
                text: bind "Level reactor: {reactorlevel}%"
            };
    var sliderWL = Slider {
                max: 100
                vertical: false
            }
    var sliderReL = Slider {
                max: 100
                vertical: false
            };
    var Col1 = VBox {
                spacing: 5
                content: bind [
                    Label {
                        text: "Proces"
                    },
                    startButtonP, stopButtonP
                ]
            };
    var Col2 = VBox {
                spacing: 5
                content: bind [
                    TextHP, sliderHP, TextFA, sliderFA
                ]
            };
    var Col3 = VBox {
                spacing: 5
                content: bind [
                    Label {
                        text: "Tr.pump"
                    },
                    startButtonTP, stopButtonTP
                ]
            };
    var Col4 = VBox {
                spacing: 5
                content: bind [
                    TextPHP, sliderPHP,
                    TextPFA, sliderPFA
                ]
            };
    var Col5 = VBox {
                spacing: 5
                content: bind [
                    Label {
                        text: "D.pump"
                    },
                    startButtonDP, stopButtonDP
                ]
            };
    var Col6 = VBox {
                spacing: 5
                content: bind [
                    TextWL, sliderWL,
                    TextReL, sliderReL
                ]
            };
    var hBox = HBox {
                translateX: 10
                translateY: 5
                spacing: 10
                content:  bind [
                    Col1, Col2, Col3, Col4, Col5, Col6,
                ]
            };

    override function create(): Node {
        return hBox;

    };


    var comdif: Integer = 0;

    function CommandSkid(number: Integer, type: Integer): Void {
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
        PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW151,d+{comdif}");
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
