/*
 * Main.fx
 *
 * Created on 27-feb-2010, 18:08:12
 */
 //  monitor.updateCPU("{Pw}", "{NTankHP}", "{NTankFA}");

package skidchart;

import javafx.scene.Scene;
import javafx.stage.Stage;

var monitor = Monitor {
    height: 590
    width: 610
    visible: false
};
public function MonitorNivo( par1:  Integer, par2: Integer, par3: Integer,
                             par4:  Integer, par5: Integer, par6: Integer){
   monitor.updateNivo ("{par1}","{par2}","{par3}","{par4}","{par5}","{par6}");
};
public function MonitorRedox( par1:  Integer, par2: Integer){
   monitor.updateRedox ("{par1}","{par2}");
};

public function run() {
  //monitor.start();
    monitor.visible = true;
    Stage {

        title: "Skid Monitor"
        scene: Scene {
            content: [
                monitor
            ]
        }
        resizable: false
        height: 640
        width: 620
    }
}
