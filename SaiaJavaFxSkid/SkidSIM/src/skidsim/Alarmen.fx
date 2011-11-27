/*
 * Alarmen.fx
 *
 * Created on 23-mei-2009, 21:44:51
 */
package skidsim;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.shape.Circle;

/**
 * @author AlexSentcha
 */
def namen: String[] = [
            "Liqid lek", "Low Level reaction tank",
            "Low Level water tank", "Low Level FA buffer tank",
            "Low Level H2O2 buffer tank", "Low Presuare water supply",
            "Emergensy stop", "Circut breakers",
            "Temperature reaction tank too high", "Temperature reaction tank too low",
            "H2O2 temp. rise too fast", "FA temp. rise too fast",
            "Power fail, UPS active", "Low battery PCD",
            "No sewage flow", "High High Level reaction tank"
        ];
public var PosAlarm0: Integer;
public var PosAlarm1: Integer;
public var PosAlarm2: Integer;
public var PosAlarm3: Integer;
public var PosAlarm4: Integer;
public var PosAlarm5: Integer;
public var PosAlarm6: Integer;
public var PosAlarm7: Integer;
public var PosAlarm8: Integer;
public var PosAlarm9: Integer;
public var PosAlarm10: Integer;
public var PosAlarm11: Integer;
public var PosAlarm12: Integer;
public var PosAlarm13: Integer;
public var PosAlarm14: Integer;
public var PosAlarm15: Integer;

//Place your code here
public class Alarmen extends CustomNode {

    public var KleurAlarm0 = Color.TRANSPARENT;
    public var KleurAlarm1 = Color.TRANSPARENT;
    public var KleurAlarm2 = Color.TRANSPARENT;
    public var KleurAlarm3 = Color.TRANSPARENT;
    public var KleurAlarm4 = Color.TRANSPARENT;
    public var KleurAlarm5 = Color.TRANSPARENT;
    public var KleurAlarm6 = Color.TRANSPARENT;
    public var KleurAlarm7 = Color.TRANSPARENT;
    public var KleurAlarm8 = Color.TRANSPARENT;
    public var KleurAlarm9 = Color.TRANSPARENT;
    public var KleurAlarm10 = Color.TRANSPARENT;
    public var KleurAlarm11 = Color.TRANSPARENT;
    public var KleurAlarm12 = Color.TRANSPARENT;
    public var KleurAlarm13 = Color.TRANSPARENT;
    public var KleurAlarm14 = Color.TRANSPARENT;
    public var KleurAlarm15 = Color.TRANSPARENT;
    public var OpAlarm = 0.0;

    public override function create(): Node {
        return Group {
                    content: [
                        Group {
                            //Instance of creating the pumps
                            content: [
                                Text {
                                    opacity: bind OpAlarm
                                    fill: Color.RED
                                    font: Font {name: "Arial Bold" size: 14}
                                    x: -60, y: 15
                                    content: "Alarms:"
                                },
                                Circle {
                                    opacity: bind OpAlarm
                                    centerX: -30, centerY: 50
                                    radius: 4
                                    fill: Color.RED
                                },
                                //Alarm 0
                                Text {
                                    fill: bind KleurAlarm0
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm0
                                    content: namen[0]
                                },
                                Text {
                                    fill: bind KleurAlarm1
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm1
                                    content: namen[1]
                                },
                                Text {
                                    fill: bind KleurAlarm2
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm2
                                    content: namen[2]
                                },
                                Text {
                                    fill: bind KleurAlarm3
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm3
                                    content: namen[3]
                                },
                                //Alarm 4
                                Text {
                                    fill: bind KleurAlarm4
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm4
                                    content: namen[4]
                                },
                                Text {
                                    fill: bind KleurAlarm5
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm5
                                    content: namen[5]
                                },
                                Text {
                                    fill: bind KleurAlarm6
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm6
                                    content: namen[6]
                                },
                                Text {
                                    fill: bind KleurAlarm7
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm7
                                    content: namen[7]
                                },
                                //Alarm 8
                                Text {
                                    fill: bind KleurAlarm8
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm8
                                    content: namen[8]
                                },
                                Text {
                                    fill: bind KleurAlarm9
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm9
                                    content: namen[9]
                                },
                                Text {
                                    fill: bind KleurAlarm10
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm10
                                    content: namen[10]
                                },
                                Text {
                                    fill: bind KleurAlarm11
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm11
                                    content: namen[11]
                                },
                                //Alarm 12
                                Text {
                                    fill: bind KleurAlarm12
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm12
                                    content: namen[12]
                                },
                                Text {
                                    fill: bind KleurAlarm13
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm13
                                    content: namen[13]
                                },
                                Text {
                                    fill: bind KleurAlarm14
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm14
                                    content: namen[14]
                                },
                                Text {
                                    fill: bind KleurAlarm15
                                    font: Font {name: "Arial Bold" size: 11}
                                    x: 0, y: bind PosAlarm15
                                    content: namen[15]
                                }
                            ]
                        }
                    ]
                };
    }
}
