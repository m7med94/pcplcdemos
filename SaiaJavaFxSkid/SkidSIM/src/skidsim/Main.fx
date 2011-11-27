/*
 * Main.fx
 *
 * Created on 29-apr-2009, 8:51:21
 * @author Alex Sentcha
 */
package skidsim;

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
import javafx.stage.StageStyle;
import skidsim.StorTanks;
import skidsim.TransPompen;
import skidsim.DosingPompen;
import skidsim.Reactor;
import skidsim.Water;
import skidsim.RippleAlarm;
import skidsim.Alarmen;
import skidsim.Riool;
import skidsim.Panel;
import skidsim.Temperature;

import javafx.stage.*;

/**
 * @author Alex
 */

public var responce : String = "";

var inBrowser = "true".equals(FX.getArgument("isApplet") as String);
var closeButtonVisible = true;//bind (not inBrowser);
var ripper = RippleAlarm {};
var stortanks: StorTanks[];
var Tpompen: TransPompen[];
var Dpompen: DosingPompen[];
var reactor: Reactor;
var water: Water;
var alarm: Alarmen;
var Pnumb: Number;
var riool: Riool;
var panel: Panel;
var temperature: Temperature;
var simulatie: Simulatie;
var name: String[] = ["Hydrogen Peroxide", "Formic Acid"];

function addTanks() {
    var height: Number[] = [10.0, 100.0];
    for (i in [0..1]) {
        insert StorTanks {
            translateX: 0
            translateY: 0 + i * 160
            fillHeight: height[i]
        } into stortanks
    }
};
var TankNaam: String[] = ["Storage tank HP", "Storage tank FA"];

function addTransPompen() {
    var height: Number[] = [20.0, 30.0];
    for (i in [0..1]) {
        insert TransPompen {
            translateX: 0
            translateY: 140 + i * 160
            TrColor: Color.RED
            NvColorHL: Color.DARKRED
            NvColorLL: Color.DARKRED
            NivoTanks: height[i]
            Naam: TankNaam[i]
        } into Tpompen
    }
};
var puntDPx = 25;
var puntDPy = 140;

function addDosPompen() {
    for (i in [0..1]) {
        insert DosingPompen {
            translateX: puntDPx
            translateY: puntDPy + i * 160
            DosColor: Color.RED
        } into Dpompen
    }
};
var puntREx = 80;
var puntREy = 140;

function addReactor() {
    reactor = Reactor {
        translateX: puntREx
        translateY: puntREy
        VermColor: Color.BLACK
    }
};
var puntWAx = -20;
var puntWAy = 460;

function addWater() {
    water = Water {
        translateX: puntWAx
        translateY: puntWAy
        WatColor: Color.RED
    }
};

function addAlarmen() {
    alarm = Alarmen {
        translateX: 390
        translateY: 40
    }
};

function Ripp(mX: Integer, mY: Integer) {
    ripper.AlarmCenterX = mX;
    ripper.AlarmCenterY = mY;
    ripper.createRipple();
    ripper.generate.play();
};

function addRiool() {
    riool = Riool {
        translateX: 400
        translateY: 625
    }
};

function addPanel() {
    panel = Panel {
        translateX: 50
        translateY: 40
    }
};

function addTemperature() {
    temperature = Temperature {
        translateX: 522
        translateY: 204
    }
};
function addSimulatie() {
     simulatie = Simulatie{
        translateX: 0
        translateY: 0
    }
};
//met SAIA
var Pos: Integer;
var Aanweizig = false;

public function SetAlarmen(A0: Integer, A1: Integer, A2: Integer, A3: Integer,
        A4: Integer, A5: Integer, A6: Integer, A7: Integer,
        A8: Integer, A9: Integer, A10: Integer, A11: Integer,
        A12: Integer, A13: Integer, A14: Integer, A15: Integer) {
    Pos = 0;
    Aanweizig = false;
    if (A0 == 1) {       //Liqid lek
        Pos += 10;
        alarm.PosAlarm0 = Pos;
        alarm.KleurAlarm0 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm0 = Color.TRANSPARENT;
    }
    if (A1 == 1) {       //Low Level reaction tank
        Pos += 10;
        alarm.PosAlarm1 = Pos;
        alarm.KleurAlarm1 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntREx + 494, puntREy + 204);
    } else {
        alarm.KleurAlarm1 = Color.TRANSPARENT;
    }
    if (A2 == 1) {       //Low Level water tank
        Pos += 10;
        alarm.PosAlarm2 = Pos;
        alarm.KleurAlarm2 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntWAx + 167, puntWAy + 82);
    } else {
        alarm.KleurAlarm2 = Color.TRANSPARENT;
    }
    if (A3 == 1) {       //Low Level FA buffer tank
        Pos += 10;
        alarm.PosAlarm3 = Pos;
        alarm.KleurAlarm3 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntDPx + 264, puntDPy + 220);
    } else {
        alarm.KleurAlarm3 = Color.TRANSPARENT;
    }

    if (A4 == 1) {       //Low Level H2O2 buffer tank
        Pos += 10;
        alarm.PosAlarm4 = Pos;
        alarm.KleurAlarm4 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntDPx + 264, puntDPy + 63);
    } else {
        alarm.KleurAlarm4 = Color.TRANSPARENT;
    }
    if (A5 == 1) {       //Low Presuare water supply
        Pos += 10;
        alarm.PosAlarm5 = Pos;
        alarm.KleurAlarm5 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntWAx + 285, puntWAy + 25);
    } else {
        alarm.KleurAlarm5 = Color.TRANSPARENT;
    }
    if (A6 == 1) {
        Pos += 10;
        alarm.PosAlarm6 = Pos;
        alarm.KleurAlarm6 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm6 = Color.TRANSPARENT;
    }
    if (A7 == 1) {
        Pos += 10;
        alarm.PosAlarm7 = Pos;
        alarm.KleurAlarm7 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm7 = Color.TRANSPARENT;
    }

    if (A8 == 1) {       //Temperature reaction tank too high
        Pos += 10;
        alarm.PosAlarm8 = Pos;
        alarm.KleurAlarm8 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntREx + 340, puntREy + 65);
    } else {
        alarm.KleurAlarm8 = Color.TRANSPARENT;
    }
    if (A9 == 1) {       //Temperature reaction tank too low
        Pos += 10;
        alarm.PosAlarm9 = Pos;
        alarm.KleurAlarm9 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntREx + 340, puntREy + 65);
    } else {
        alarm.KleurAlarm9 = Color.TRANSPARENT;
    }
    if (A10 == 1) {
        Pos += 10;
        alarm.PosAlarm10 = Pos;
        alarm.KleurAlarm10 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm10 = Color.TRANSPARENT;
    }
    if (A11 == 1) {
        Pos += 10;
        alarm.PosAlarm11 = Pos;
        alarm.KleurAlarm11 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm11 = Color.TRANSPARENT;
    }
    if (A12 == 1) {
        Pos += 10;
        alarm.PosAlarm12 = Pos;
        alarm.KleurAlarm12 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm12 = Color.TRANSPARENT;
    }
    if (A13 == 1) {
        Pos += 10;
        alarm.PosAlarm13 = Pos;
        alarm.KleurAlarm13 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm13 = Color.TRANSPARENT;
    }
    if (A14 == 1) {
        Pos += 10;
        alarm.PosAlarm14 = Pos;
        alarm.KleurAlarm14 = Color.BLACK;
        Aanweizig = true;
    } else {
        alarm.KleurAlarm14 = Color.TRANSPARENT;
    }
    if (A15 == 1) {      //High High Level reaction tank
        Pos += 10;
        alarm.PosAlarm15 = Pos;
        alarm.KleurAlarm15 = Color.BLACK;
        Aanweizig = true;
        Ripp(puntREx + 494, puntREy + 124);
    } else {
        alarm.KleurAlarm15 = Color.TRANSPARENT;
    }
    if (Aanweizig) {
        alarm.OpAlarm = 1.0;
        Ripp(360, 90);
    } else {
        alarm.OpAlarm = 0.4;
        ripper.generate.stop();
    }
};

public function SetRoerWerk(AAN: Integer) {
    if (reactor.RoerAAN != AAN) {
        if (AAN == 0) {
            reactor.stopRoer();
        }
        if (AAN == 1) {
            reactor.startRoer();
        }
        reactor.RoerAAN = AAN;
    }
};

public function SetNivoTr(NvTrFaHL: Integer, NvTrFaLL: Integer, NvTrHPHL: Integer,
        NvTrHPLL: Integer) {
    if (NvTrHPHL == 1) {
        Tpompen[0].NvColorHL = Color.RED;
    } else {
        Tpompen[0].NvColorHL = Color.DARKRED;
    }
    if (NvTrHPLL == 1) {
        Tpompen[0].NvColorLL = Color.RED;
    } else {
        Tpompen[0].NvColorLL = Color.DARKRED;
    }
    if (NvTrFaHL == 1) {
        Tpompen[1].NvColorHL = Color.RED;
    } else {
        Tpompen[1].NvColorHL = Color.DARKRED;
    }
    if (NvTrFaLL == 1) {
        Tpompen[1].NvColorLL = Color.RED;
    } else {
        Tpompen[1].NvColorLL = Color.DARKRED;
    }
};

public function SetPompen(TrPhp: Integer, TrPfa: Integer, DsPhp: Integer,
        DsPfa: Integer, WP: Integer) {
    if (Tpompen[0].PompAAN != TrPhp) {
        if (TrPhp == 0) {
            Tpompen[0].stop();
        }
        if (TrPhp == 1) {
            Tpompen[0].start();
        }
        Tpompen[0].PompAAN = TrPhp;
    }
    if (Tpompen[1].PompAAN != TrPfa) {
        if (TrPfa == 0) {
            Tpompen[1].stop();
        }
        if (TrPfa == 1) {
            Tpompen[1].start();
        }
        Tpompen[1].PompAAN = TrPfa;
    }
    if (Dpompen[0].PompAAN != DsPhp) {
        if (DsPhp == 0) {
            Dpompen[0].stop();
        }
        if (DsPhp == 1) {
            Dpompen[0].start();
        }
        Dpompen[0].PompAAN = DsPhp;
    }
    if (Dpompen[1].PompAAN != DsPfa) {
        if (DsPfa == 0) {
            Dpompen[1].stop();
        }
        if (DsPfa == 1) {
            Dpompen[1].start();
        }
        Dpompen[1].PompAAN = DsPfa;
    }
    if (water.PompAAN != WP) {
        if (WP == 0) {
            water.stop();
        }
        if (WP == 1) {
            water.start();
        }
        water.PompAAN = WP;
    }
};
//extra funktie voor simulatie (order lezen plc)
public function sim2( Lhp: Integer, Lfa: Integer,
                    DPhp: Integer, DPfa: Integer,
                    NivWat: Integer,  NTankRe: Integer,) {
    var temp: Number = 0;

    stortanks[0].fillHeight = Lhp;
    Pnumb = Lhp;
    Tpompen[0].Level = "{Pnumb}";
    Pnumb = DPhp;
    Dpompen[0].DosP = "{Pnumb}";

    stortanks[1].fillHeight = Lfa ;
    Pnumb = Lfa;
    Tpompen[1].Level = "{Pnumb}";
    Pnumb = DPfa ;
    Dpompen[1].DosP = "{Pnumb}";

    temp = 80.0 - NivWat * 0.8;
    water.Level = temp;
    temp = 240.0 - (NTankRe*10) * 0.24;
    reactor.Nivo = temp;
                
}

public function OnlineW(Pw: Integer, NTankHP: Integer, NTankFA: Integer,
        NTankRe: Integer, Temp: Integer, NivWat: Integer) {
    var temp: Number = 0;
    Pnumb = Pw / 10.0;
    water.WaterDruk = "{Pnumb}";
    Tpompen[0].NivoTanks = NTankHP / 2;
    Tpompen[1].NivoTanks = NTankFA / 2;
    temp = 240.0 - NTankRe * 0.24;
    reactor.Nivo = temp;
    Pnumb = NTankRe / 10.0;
    reactor.NivoWaarde = "{Pnumb}";
    Pnumb = Temp / 10.0;
    reactor.TempRe = "{Pnumb}";
    temperature.TempReac = "{Pnumb}";
    temp = 80.0 - NivWat * 0.8;
    water.Level = temp;

};

public function OnlinePH(Thp: Integer, Lhp: Integer,
        Php: Integer, TPhp: Integer,
        Fhp: Integer, DPhp: Integer) {
    Pnumb = Thp / 10.0;
    Tpompen[0].Temp = "{Pnumb}";
    stortanks[0].fillHeight = Lhp / 10;
    Pnumb = Lhp / 10.0;
    Tpompen[0].Level = "{Pnumb}";
    Pnumb = Php / 100.0;
    Tpompen[0].Pressure = "{Pnumb}";
    Pnumb = TPhp / 10.0;
    Tpompen[0].TransfP = "{Pnumb}";
    Pnumb = Fhp / 10.0;
    Dpompen[0].Flow = "{Pnumb}";
    Pnumb = DPhp / 10.0;
    Dpompen[0].DosP = "{Pnumb}";
};

public function OnlineFA(Tfa: Integer, Lfa: Integer,
        Pfa: Integer, TPfa: Integer,
        Ffa: Integer, DPfa: Integer) {
    Pnumb = Tfa / 10.0;
    Tpompen[1].Temp = "{Pnumb}";
    stortanks[1].fillHeight = Lfa / 10;
    Pnumb = Lfa / 10.0;
    Tpompen[1].Level = "{Pnumb}";
    Pnumb = Pfa / 100.0;
    Tpompen[1].Pressure = "{Pnumb}";
    Pnumb = TPfa / 10.0;
    Tpompen[1].TransfP = "{Pnumb}";
    Pnumb = Ffa / 10.0;
    Dpompen[1].Flow = "{Pnumb}";
    Pnumb = DPfa / 10;
    Dpompen[1].DosP = "{Pnumb}";
};

public function OnlineRE(RedU: Integer, RedT: Integer,
        SewM: Integer, SewP: Integer) {
    Pnumb = RedU / 10.0;
    riool.RedUnt = "{Pnumb}";
    Pnumb = RedT / 10.0;
    riool.RedT = "{Pnumb}";
    Pnumb = SewM / 10.0;
    riool.SewM = "{Pnumb}";
    Pnumb = SewP / 10.0;
    riool.SewP = "{Pnumb}";
};

public function SetKleurVerw(Wkleur: Integer, Kkleur: Integer) {
    if (Wkleur == 1) {
        reactor.VermColor = Color.RED;
    } else {
        reactor.VermColor = Color.BLACK;
    }
    if (Kkleur == 1) {
        reactor.KoelColor = Color.LIME;
    } else {
        reactor.KoelColor = Color.GREEN;
    }
};

public function SetWatKleps(klepW: Integer, klepR: Integer, klep3: Integer) {
    if (klepW == 1) {
        water.kleurW = Color.GREEN;
        water.kleurWO = Color.BLACK;
        water.kleurWD = Color.TRANSPARENT;
    } else {
        water.kleurW = Color.RED;
        water.kleurWD = Color.BLACK;
        water.kleurWO = Color.TRANSPARENT;
    }
    if (klepR == 1) {
        water.kleurR = Color.GREEN;
        water.kleurRO = Color.BLACK;
        water.kleurRD = Color.TRANSPARENT;
    } else {
        water.kleurR = Color.RED;
        water.kleurRD = Color.BLACK;
        water.kleurRO = Color.TRANSPARENT;
        }
    if (klep3 == 1) {
        water.kleur3 = Color.GREEN;
        water.kleur3O = Color.BLACK;
        water.kleur3D = Color.TRANSPARENT;
    } else {
        water.kleur3 = Color.RED;
        water.kleur3D = Color.BLACK;
        water.kleur3O = Color.TRANSPARENT;
    }
};

public function SetWatNivo(NTankHL: Integer, NTankLL: Integer,
        NRTankHHL: Integer, NRTankHL: Integer,
        NRTankLL: Integer) {
    if (NTankHL == 1) {
        water.kleurTankHL = Color.RED;
    } else {
        water.kleurTankHL = Color.DARKRED;
    }
    if (NTankLL == 1) {
        water.kleurTankLL = Color.RED;
    } else {
        water.kleurTankLL = Color.DARKRED;
    }
    if (NRTankHHL == 1) {
        reactor.NvReColorHHL = Color.RED;
    } else {
        reactor.NvReColorHHL = Color.DARKRED;
    }
    if (NRTankHL == 1) {
        reactor.NvReColorHL = Color.RED;
    } else {
        reactor.NvReColorHL = Color.DARKRED;
    }
    if (NRTankLL == 1) {
        reactor.NvReColorLL = Color.RED;
    } else {
        reactor.NvReColorLL = Color.DARKRED;
    }
};

public function SetPanel(PSAan: Integer, PPTrAan: Integer,
        PPDosAuto: Integer) {
    if (PSAan == 1) {
        panel.PanSkidAan = 30;
    } else if (PSAan == 0) {
        panel.PanSkidAan = 330;
    }
    if (PPTrAan == 1) {
        panel.PanPompTAan = 30;
    } else if (PPTrAan == 0) {
        panel.PanPompTAan = 330;
    }
    if (PPDosAuto == 1) {
        panel.PanPompDosAuto = 30;
    } else if (PPDosAuto == 0) {
        panel.PanPompDosAuto = 330;
    }
};
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
//--------------------------------------------------------------
//stage    
//--------------------------------------------------------------
public function run(args: String[]) {

addTanks();
addTransPompen();
addDosPompen();
addReactor();
addWater();
addAlarmen();
addRiool();
addPanel();
addTemperature();
addSimulatie();

Stage {
    x: bind stageX
    y: bind stageY
    title: "  Skid Hydroform.                          (JavaFX) 2010"
    width: 625
    height: 625
    style: StageStyle.TRANSPARENT
    scene: Scene {
        fill: Color.web("#BDB76B")
        content: [
            dragRect, onderRect,
            close, button,
            //Add titles below each tube ------------------------
            Group {
                content: for(i in [0..1]) { [
                        Text {
                            fill: Color.BLACK
                            font: Font {
                                name: "Arial Bold"
                                size: 12
                            }
                            x: 50,  y: 270 + i * 160
                            content: name[i]
                        }
                    ]
                },
            },
            stortanks,
            Tpompen,
            Dpompen,
            reactor,
            water,
            ripper,
            alarm,
            riool,
            panel,
            temperature,
            simulatie,

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
                content: "  Skid Hydroform.                                  (JavaFX) 2010"
            }
            //Create onder text----------------------------------
/*            Text {
                fill: Color.BLACK
                font: Font {
                    size: 12
                    name: "Arial Bold"
                    letterSpacing: 0.25
                }
                x: 20, y: 620
                content: "Connection Skid:   URL not found, simulation enabled."
            }
 */
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
simulatie.start();

}
