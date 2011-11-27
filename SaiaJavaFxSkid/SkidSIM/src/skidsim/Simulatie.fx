/*
 * Simulatie.fx
 *
 * Created on 15-apr-2010, 19:30:30
 */
package skidsim;

import javafx.animation.*;
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import java.lang.Math;
import skidsim.RequestHandler;
import javafx.io.http.HttpRequest;
import java.lang.Exception;

import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.util.*;
import java.lang.String;

/**
 * @author Katja
 */
public class Simulatie extends CustomNode {
    var SimRun: Boolean = true;

    var H1: Integer = 0; //Heater
    var P1: Integer = 0; //Water pomp
    var P2: Integer = 0; //Transfer HD pomp
    var P3: Integer = 0; //Transfer FA pomp
    var P4: Integer = 1; //Dosing pompen
    var M1: Integer = 1; //MainPower
    var R1: Integer = 1; //Roerwerk
    var KL1: Integer = 1; //Koeler
    var K1: Integer = 1; //Rinse klep
    var K2: Integer = 0; //Water ReactionTank
    var K3: Integer = 0; //Water supply
    var L1: Integer = 0; //Lamp run proces
    var AL1: Integer = 0;
    var AL2: Integer = 0;
    var AL3: Integer = 0; //LL water tank
    var AL4: Integer = 0;
    var AL5: Integer = 0;
    var AL6: Integer = 0;
    var AL7: Integer = 0;
    var AL8: Integer = 0;
    var AL9: Integer = 0;
    var AL10: Integer = 0;
    var AL11: Integer = 0;
    var AL12: Integer = 0;
    var AL13: Integer = 0;
    var AL14: Integer = 0;
    var AL15: Integer = 0;
    var AL16: Integer = 0;
    //Variales zonder PLC ondersteuning
    var NivoWater: Integer = 11;    //Niveau water tank sim only
    var WatTankHL: Integer = 0;     //WaterTankNiveau Hoog geen PLC sim only.
    var WatTankLL: Integer = 0;     //WaterTankNiveau Laag geen PLC sim only.
    var NivoHP: Integer = 15;       //Niveau HP tank sim only
    var HPTankHL: Integer = 0;      //HPTankNiveau Hoog geen PLC sim only.
    var HPTankLL: Integer = 0;      //HPTankNiveau Laag geen PLC sim only.
    var NivoFA: Integer = 31;       //Niveau FA tank sim only
    var FATankHL: Integer = 0;      //FATankNiveau Hoog geen PLC sim only.
    var FATankLL: Integer = 0;      //FATankNiveau Laag geen PLC sim only.
    var TempOmhoog: Boolean = true; //geen PLC sim only.
    var NivoRe: Integer = 601;      //Niveau Re tank sim only
    var ReTankHHL: Integer = 0;     //Reactor Niveau Hoog geen PLC sim only.
    var ReTankHL: Integer = 0;      //Reactor Niveau Hoog geen PLC sim only.
    var ReTankLL: Integer = 0;      //Reactor Niveau Hoog geen PLC sim only.
    var DosingHP: Integer = 500;    //Dosing pomp HP sim only
    var DosingFA: Integer = 500;    //Dosing pomp FA sim only
    var TRpompenAan: Boolean = true; //sim only

    var wPresW: Integer = 23;   //Presssure water supply
    var wWt: Integer = 194;     //Water temperature in reaction tank
    var wTempHP: Integer = 234; //Temperature in storage tank HP
    var wLevHP: Integer = 800;  //Level in storage tank	0.1%
    var wPresHP: Integer = 0;   //Pressure in storage tank HP
    var wTranHP: Integer = 551; //- 10.0 Set point Transfer pomp HP 	0.1%
    var wFlowHP: Integer = 125; //- 10.0 Flow HP  ml
    var wDosHP: Integer = 352;  //- 10.0 Set point Dosing pomp HP 	0.1%
    var wTempFA: Integer = 235; //Temperature in storage tank FA
    var wLevFA: Integer = 510;  //Level in storage tank	0.1%
    var wPresFA: Integer = 0;   //Pressure in storage tank FA
    var wTranFA: Integer = 478; //- 10.0 Set point Transfer pomp FA 	0.1%
    var wFlowFA: Integer = 114; //- 10.0 Flow FA  ml
    var wDosFA: Integer = 396;  //- 10.0 Set point Dosing pomp FA 	0.1%
    var wRedU: Integer = 12674; //- 10.0 Redox untread
    var wRedT: Integer = -5678; //- 10.0 Redox Tread
    var wSewM: Integer = 235;   //- 10.0 Sewage Flow m3/h
    var wSewP: Integer = 314;   //- 10.0 Sewage Flow %
    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 500ms
                        action: function (): Void {
                            tick();
                            }
                    }
                ]
            };

    public function start() {
        t1.play();
    }

    public function stop() {
        t1.stop();
    }
 

    var OldCommand: Integer = 0;
    var Comm1 = 2;
    var Comm2 = 2;
    var Comm3 = 2;
    
    var ConString : String = "http://cgi-demo.saia-sps.dyndns.org/cgi-bin/";
    var FileN: String = "OrderValues.exe?sim+dummy+1000";
    var W1: String = "+PDP,,MW151,d+PDP,,MW153,d+PDP,,MW155,d+PDP,,MW157,d";
    var W2: String = "+PDP,,MW159,d+PDP,,MW161,d+PDP,,MW163,d+PDP,,MW165,d";
    
    var wv: Integer[]=[0,0,0,0,0,0,0,0,0];
    function tick() {
    /*
        PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/readVal.exe?PDP,,MW106,d");
        if (Main.responce != ""){
            NivoRe = Integer.parseInt(Main.responce);
        }else{
            NivoRe = 601;
        }
    */
    
        var w: Integer[];//=[0,0,0,0,0,0,0,0,0];
        PLCData( "{ConString}ReadFile.exe?sim");
        if (Main.responce != ""){
            var temp: String[] = Main.responce.split("PDP");
            var k:Integer = 0;
            for (i in  [1..8]){
                k = temp[i].indexOf("=");
                temp[i] = temp[i].substring(k+1);
                w[i] =Integer.parseInt(temp[i]) ;
            }
            //naar scherm direct
            //Main.sim2(w[1],w[2],w[3],w[4],w[5],w[6]);
            //naar simulatie
            if (w[1] != wv[1]){ wLevHP = w[1] * 10;  wv[1] = w[1]; }
            if (w[2] != wv[2]){ wLevFA = w[2] * 10;  wv[2] = w[2]; }
            if (w[3] != wv[3]){ DosingHP = w[3] * 10;  wv[3] = w[3]; }
            if (w[4] != wv[4]){ DosingFA = w[4] * 10;  wv[4] = w[4]; }
            if (w[5] != wv[5]){ NivoWater = w[5];    wv[5] = w[5]; }
            if (w[6] != wv[6]){ NivoRe = w[6] * 10;  wv[6] = w[6]; }
            
            // message =   "0={temp[0]} 1={temp[1]} 2={temp[2]} 3={temp[3]} 4={temp[4]} 5={temp[5]} 6={temp[6]} 7={temp[7]} 8={temp[8]} ";
            // message =   "0={w[0]} 1={w[1]} 2={w[2]} 3={w[3]} 4={w[4]} 5={w[5]} 6={w[6]} 7={w[7]} 8={w[8]} ";

            //commando's
                if (w[0] != OldCommand){
                OldCommand = w[0];
                if (Bits.contains(w[0],  0x01)){
                    Comm1 = 1;
                    SimRun = true;
                }else{
                    Comm1 = 0;
                    SimRun = false;
                }
                if (Bits.contains(w[0],  0x02)){
                    Comm2 = 1;
                    TRpompenAan = true;
                }else{
                    Comm2 = 0;
                    TRpompenAan = false;
                 }
                if (Bits.contains(w[0],  0x04)){
                    Comm3 = 1; }else{  Comm3 = 0;  }
                Main.SetPanel(Comm1,Comm2,Comm3);
            }


        }
        //message = Main.responce;
        if(SimRun){
            Sim();
        }else{
            Main.SetPompen(0,0,0,0,0);
            Main.SetKleurVerw(0,0);
            Main.SetWatKleps(0,0,0);
            Main.SetRoerWerk(0);

        }

        //PLCData("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/writeVal.exe?PDP,,MW106,d+{NivoRe}");

    }
    
    function Sim() {

        //KlepPompRoer
        P4 = 1; //Dosing pompen
        //Water TANK regeling
        if (wPresW < 20) {
            P1 = 1;
        }
        if (wPresW > 40) {
            P1 = 0;
        }
        if (P1 == 1) {
            wPresW = wPresW + 2;
        }
        if (K1 == 1) {
            wPresW = wPresW - 1;
        }
        if (P4 == 1) {
            K1 = 1;
        }
        if (P1 == 1) {
            NivoWater = NivoWater - 1;
        }
        if (K3 == 1) {
            NivoWater = NivoWater + 2;
        }
        if (NivoWater > 95) {
            K3 = 0;
        }
        if (NivoWater < 10) {
            K3 = 1;
        }
        if (NivoWater > 90) {
            WatTankHL = 1;
        } else {
            WatTankHL = 0;
        }
        if (NivoWater < 12) {
            WatTankLL = 1;
        } else {
            WatTankLL = 0;
        }

        //HP nivo regeling
        if ((NivoHP < 10) and (TRpompenAan == true)) {
            HPTankLL = 1;
            P2 = 1;
        } else {
            HPTankLL = 0;
        }

        if (NivoHP > 90) {
            HPTankHL = 1;
            P2 = 0;
        } else {
            HPTankHL = 0;
        }

        //FA nivo regeling
        if ((NivoFA < 10) and (TRpompenAan == true)) {
            FATankLL = 1;
            P3 = 1;
        } else {
            FATankLL = 0;
        }

        if (NivoFA > 90) {
            FATankHL = 1;
            P3 = 0;
        } else {
            FATankHL = 0;
        }

        //Temp. reac.Tank
        if (wWt < 250) {
            H1 = 1;
        }
        if (wWt > 450) {
            H1 = 0;
        }
        if (H1 == 1) {
            KL1 = 0;
        }
        if (wWt > 550) {
            KL1 = 1;
        }
        if (H1 == 1) {
            wWt = wWt + 5;
        }
        if (KL1 == 1) {
            wWt = wWt - 5;
        }
        if (H1 == 0 and KL1 == 0) {
            wWt = wWt + 1;
        }

        //Nivo reactiontank SIMULATIE
        if (NivoRe < 600) {	//nivo LL
            K2 = 1;
        }
        if (NivoRe > 900) {	//nivo HL
            ReTankHL = 1;
        } else {
            ReTankHL = 0;
        }
        if (NivoRe > 955) {	//nivo HHL
            K2 = 0;
        }
        if (K2 == 1) {
            NivoRe = NivoRe + 1;	//Nivo in reactor
        } else {
            NivoRe = NivoRe - 1;
        }
        if (NivoRe < 620) { // Nivo reactor
            AL2 = 1;
            ReTankLL = 1;
        } else {
            AL2 = 0;
            ReTankLL = 0;
        }
        if (NivoRe > 950) { // Nivo reactor
            AL16 = 1;
            ReTankHHL = 1;
        } else {
            AL16 = 0;
            ReTankHHL = 0;
        }

        //2
        wDosHP = DosingHP;
        wFlowHP = DosingHP * 1.3;
        wDosFA = DosingFA;
        wFlowFA = DosingFA * 1.3;
        // Niveau's regeling
        if (P4 == 1) {
            if (NivoFA > 0) {
                NivoFA = NivoFA - 1;
            }
            if (NivoHP > 0) {
                NivoHP = NivoHP - 1;
            }
        } else {
            wFlowFA = 0;	//pomp gestopt - geen flow
            wFlowHP = 0;
        }
        if (P2 == 1) {
            NivoHP = NivoHP + 5;
            wLevHP = wLevHP - 1;
        }
        if (P3 == 1) {
            NivoFA = NivoFA + 5;
            wLevFA = wLevFA - 1;
        }
        wPresHP = wLevHP / 1.2;		//Pressure in storage tank HP
        wPresFA = wLevFA / 1.2;		//Pressure in storage tank FA
        if (wLevHP < 50) {
            wLevHP = 950;
        }
        if (wLevFA < 50) {
            wLevFA = 930;
        }

        //TEMPERATUUR STORAGE TANKS SIMULATIE
        if (TempOmhoog == true) {
            wTempHP = wTempHP + 1;	//Temperature in storage tank HP
            wTempFA = wTempFA + 1;	//Temperature in storage tank FA
        } else {
            wTempHP = wTempHP - 1;
            wTempFA = wTempFA - 1;
        }
        if (wTempHP < 220 or wTempFA < 220) {
            TempOmhoog = true;
        }
        if (wTempHP > 320 or wTempFA > 320) {
            TempOmhoog = false;
        }
        var rand_no = Math.random();
        wRedU = 10000 + rand_no * 505;
        wRedT = wRedU - (wFlowHP + wFlowFA) * 8.3;

        wSewM = 175 + 5.7 * rand_no;
        wSewP = 245 + 5.1 * rand_no;

        //3
        if (NivoWater < 12) {	//LL water tank
            AL3 = 1;
        } else {
            AL3 = 0;
        }
        if (NivoFA < 10) {	//FA nivo regeling
            AL4 = 1;
        } else {
            AL4 = 0;
        }
        if (NivoHP < 10) {	//HP nivo regeling
            AL5 = 1;
        } else {
            AL5 = 0;
        }
        if (wPresW < 21) {	//LP water supply
            AL6 = 1;
        } else {
            AL6 = 0;
        }
        if (wWt > 520) {	//Temperature RT too high
            AL9 = 1;
        } else {
            AL9 = 0;
        }
        if (wWt < 210) {	//Temperature RT too high
            AL10 = 1;
        } else {
            AL10 = 0;
        }

        Main.SetPompen(P2,P3,P4,P4,P1);
        Main.SetNivoTr(FATankHL,FATankLL,HPTankHL,HPTankLL);
        Main.SetKleurVerw(H1,KL1);
        Main.SetWatKleps(K3,K1,K2);
        Main.SetWatNivo(WatTankHL,WatTankLL,ReTankHHL,ReTankHL,ReTankLL);
        Main.SetRoerWerk(R1);

        Main.OnlineW(wPresW, NivoHP, NivoFA, NivoRe, wWt, NivoWater);
        Main.OnlinePH(wTempHP,wLevHP,wPresHP,wTranHP,wFlowHP,wDosHP);
        Main.OnlineFA(wTempFA,wLevFA,wPresFA,wTranFA,wFlowFA,wDosFA);
        Main.OnlineRE(wRedU,wRedT,wSewM,wSewP);
        Main.SetAlarmen(AL1,AL2,AL3,AL4,AL5,AL6,AL7,AL8,AL9,AL10,AL11,AL12,AL13,AL14,AL15,AL16);
    }
    
    
    var message: String = "";
    function PLCData(location:String) : Void {
        try {
            var request = RequestHandler {
                location: location
                method: HttpRequest.GET
           }
            message = location;
            request.start();
        } catch (e:Exception) {
            println("WARNING: {e}");
            message = "Error, Could not search... Please try again later.";
        }
    }

    public override function create(): Node {
        return Group {
                    content: [
                        //Create onder text----------------------------------
                        Text {
                            fill: Color.BLACK
                            font: Font {
                                size: 10
                                name: "Arial Bold"
                                letterSpacing: 0.15
                            }
                            x: 5, y: 620
                            content: bind message
                         }
                    ]
                }
    }
}

