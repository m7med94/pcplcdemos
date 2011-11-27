/*
 * Simulation.fx
 *
 * Created on 1-mei-2010, 23:58:29
 */
package tanks;

import javafx.animation.*;
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import java.lang.Math;
import tanks.RequestHandler;
import javafx.io.http.HttpRequest;
import java.lang.Exception;

import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.util.*;
import java.lang.String;

/**
 * @author Alex Sentcha
 */

public class Simulation extends CustomNode {

    var LevelT1: Number = 88;   //Level Tank 1
    var LevelT2: Number = 73;   //Level Tank 2
    var LevelT3: Number = 64;   //Level Tank 3
    var LevelT4: Number = 33;   //Level Tank 4
    var LevelT5: Number = 53;   //Level Tank 5
    var LevelT6: Number = 22;   //Level Tank 6

    var SP1:Number = 50; //Set point valve tank 1
    var SP2:Number = 50; //Set point valve tank 2
    var SP3:Number = 50; //Set point valve tank 3
    var SP4:Number = 50; //Set point valve tank 4

    var Flow1:Number = 0; //Flow tank 1
    var Flow2:Number = 0; //Flow tank 2
    var Flow3:Number = 0; //Flow tank 3
    var Flow4:Number = 0; //Flow tank 4

    var ValveRot1: Integer = 0; //Rotation valve 1
    var ValveRot2: Integer = 0; //Rotation valve 2
    var ValveRot3: Integer = 0; //Rotation valve 3
    var ValveRot4: Integer = 0; //Rotation valve 4

    var V1:Integer = 0; //E. mag. valve tank 1
    var V2:Integer = 0; //E. mag. valve tank 2
    var V3:Integer = 0; //E. mag. valve tank 3
    var V4:Integer = 0; //E. mag. valve tank 4

    var Vp51:Integer = 1; //E. mag. valve tank 5
    var Vp52:Integer = 0; //E. mag. valve tank 5
    var Vp61:Integer = 1; //E. mag. valve tank 6
    var Vp62:Integer = 0; //E. mag. valve tank 6

    var pump1:Boolean = false; //pump tank 5
    var pump2:Boolean = false; //pump tank 6
    var auto: Boolean = true;

    var t1: Timeline = Timeline {
                repeatCount: Timeline.INDEFINITE;
                keyFrames: [
                    KeyFrame {
                        time: 1500ms
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

    var ConString : String = "http://cgi-demo.saia-sps.dyndns.org/cgi-bin/";
    var FileN: String = "OrderValues.exe?tanks+dummy+1000";
    var W1: String = "+PDP,,MW101,d+PDP,,MW103,d+PDP,,MW105,d+PDP,,MW107,d";
    var W2: String = "+PDP,,MW109,d+PDP,,MW111,d+PDP,,MW113,d+PDP,,MW115,d";

    function tick() {
    
        var w: Integer[];//=[0,0,0,0,0,0,0,0,0];
        PLCData( "{ConString}ReadFile.exe?tanks");
        if (Main.responce != ""){
            var temp: String[] = Main.responce.split("PDP");
            var k:Integer = 0;
            for (i in  [1..8]){
                k = temp[i].indexOf("=");
                temp[i] = temp[i].substring(k+1);
                w[i] =Integer.parseInt(temp[i]) ;
            }

            if      (w[1] < SP1){ SP1 -= 1; ValveRot1 = -1;}
            else if (w[1] > SP1){ SP1 += 1; ValveRot1 = 1;}
            else {                          ValveRot1 = 0;}
            if      (w[2] < SP2){ SP2 -= 1; ValveRot2 = -1;}
            else if (w[2] > SP2){ SP2 += 1; ValveRot2 = 1;}
            else {                          ValveRot2 = 0;}
            if      (w[3] < SP3){ SP3 -= 1; ValveRot3 = -1;}
            else if (w[3] > SP3){ SP3 += 1; ValveRot3 = 1;}
            else {                          ValveRot3 = 0;}
            if      (w[4] < SP4){ SP4 -= 1; ValveRot4 = -1;}
            else if (w[4] > SP4){ SP4 += 1; ValveRot4 = 1;}
            else {                          ValveRot4 = 0;}

            // message =   "0={temp[0]} 1={temp[1]} 2={temp[2]} 3={temp[3]} 4={temp[4]} 5={temp[5]} 6={temp[6]} 7={temp[7]} 8={temp[8]} ";
            // message =   "0={w[0]} 1={w[1]} 2={w[2]} 3={w[3]} 4={w[4]} 5={w[5]} 6={w[6]} 7={w[7]} 8={w[8]} ";

            //commando's
            if (w[0] != OldCommand){
                OldCommand = w[0];
                if (Bits.contains(w[0],  0x01)){
                    auto = true; }else{  auto = false;  }
                if (auto == false){
                    if (Bits.contains(w[0],  0x02)){
                        pump1 = true; }else{  pump1 = false;  }
                    if (Bits.contains(w[0],  0x04)){
                        pump2 = true; }else{  pump2 = false;  }
                }
            }
        }
        Sim();
    }

    function Sim() {
        if (auto == true){
           if(LevelT5 >= 90){
               pump1 = true;
           }
           if(LevelT6 >= 90){
               pump2 = true;
           }
        }
        if (pump1 == true){
            LevelT5 -= 2;
        }
        if (pump2 == true){
            LevelT6 -= 2;
        }

        if (LevelT5 >= 90){Vp51=0;}
        if (LevelT5 <= 10){Vp51=1;pump1 = false;}
        if (LevelT6 >= 90){Vp61=0;}
        if (LevelT6 <= 10){Vp61=1;pump2 = false;}

        if (Vp51 == 1){
            LevelT5 = LevelT5 + Flow1 * 0.001 + Flow2 * 0.001;

            LevelT1 = LevelT1 - SP1 * 0.01;
            LevelT2 = LevelT2 - SP2 * 0.01;
            Flow1 = SP1 * LevelT1 / 50;
            Flow2 = SP2 * LevelT2 / 50;
            //El. mag. valve tanks
            if (LevelT1 < 10) { V1 = 1; }
            if (LevelT1 > 90) { V1 = 0; }
            if (LevelT2 < 10) { V2 = 1; }
            if (LevelT2 > 90) { V2 = 0; }
             //levels tanks
            if (V1 == 1){ LevelT1 += 8; }
            if (V2 == 1){ LevelT2 += 8; }
       }else{
            Flow1 = 0;
            Flow2 = 0;
            V1 = 0;
            V2 = 0;
        }

        if (Vp61 == 1){
            LevelT6 = LevelT6 + Flow3 * 0.001 + Flow4 * 0.001;

            LevelT3 = LevelT3 - SP3 * 0.01;
            LevelT4 = LevelT4 - SP4 * 0.01;
            Flow3 = SP3 * LevelT3 / 50;
            Flow4 = SP4 * LevelT4 / 50;
            //El. mag. valve tanks
            if (LevelT3 < 10) { V3 = 1; }
            if (LevelT3 > 90) { V3 = 0; }
            if (LevelT4 < 10) { V4 = 1; }
            if (LevelT4 > 90) { V4 = 0; }
            //levels tanks
            if (V3 == 1){ LevelT3 += 8; }
            if (V4 == 1){ LevelT4 += 8; }
        }else{
            Flow3 = 0;
            Flow4 = 0;
            V3 = 0;
            V4 = 0;
        }
        Main.LevelsTanks(LevelT1, LevelT2, LevelT3, LevelT4, LevelT5, LevelT6);
        Main.SPValve(SP1, SP2, SP3, SP4);
        Main.rotationValve(ValveRot1,ValveRot2,ValveRot3,ValveRot4);
        Main.SetFlow(Flow1,Flow2,Flow3,Flow4);
        Main.ElmagValve(V1,V2,V3,V4);
        Main.ElmagValve2(Vp51,Vp52,Vp61,Vp62);
        Main.SetMode(auto);
        Main.SetPump(pump1, pump2);

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
                            x: 5, y: 618
                            content: bind message
                         }
                    ]
                }
    }

}
