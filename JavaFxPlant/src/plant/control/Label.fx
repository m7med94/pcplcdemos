package plant.control;
/**
 * @author Alex Sentcha
 */

import javafx.scene.*;
import javafx.scene.paint.*;
import javafx.scene.text.*;


public class Label extends CustomNode {
    public var text = "Blank";
    public var value = 0.0;
    public var fraction = false;
    var t:Text;
    override protected function create() : Node {
        Group {
            content: [
                t = Text {
                    content: bind text
                    font: Font { size: 10 }
                    fill: Color.BLACK
                },
                Text {
                    translateX: bind t.layoutBounds.maxX + 5
                    content: bind if (fraction) "{%+1.2f value}" else "{(value as Integer)}"
                    font: Font { size: 10 }
                    fill: Color.rgb(40, 40, 40)
                }
            ]
        }
    }
}
