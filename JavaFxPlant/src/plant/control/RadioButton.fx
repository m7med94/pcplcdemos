package plant.control;
/**
 * @author Alex Sentcha
 */

import javafx.scene.*;
import javafx.scene.paint.*;
import javafx.scene.shape.*;
import javafx.scene.text.*;
import javafx.stage.*;

public class RadioButton extends CustomNode {

    public var text = "Blank";
    public var selected = false on replace {
        updateButtonGroup();
    };
    public var bg:ButtonGroup on replace {
        updateButtonGroup();
    };

    var width = 12;

    function updateButtonGroup() {
        if (selected) {
            bg.selectedButton = this;
        }
    }

    override protected function create() : Node {
        Group {
            content: [
            Circle {
                cursor: Cursor.HAND
                radius: bind width/2
                fill: LinearGradient {
                    startX: 0
                    startY: 0
                    endX: 0
                    endY: 1
                    stops: [
                        Stop { offset: 0.0 color: Color.rgb(172, 172, 172) },
                        Stop { offset: 0.5 color: Color.rgb(115, 115, 115) },
                        Stop { offset: 1.0 color: Color.rgb(130, 130, 130) },
                    ]
                }
                stroke: LinearGradient {
                    startX: 0
                    startY: 0
                    endX: 0
                    endY: 1
                    stops: [
                        Stop { offset: 0.0 color: Color.rgb( 29,  29,  29) },
                        Stop { offset: 1.0 color: Color.rgb(204, 204, 204) },
                    ]
                }
                strokeWidth: 1.5
                onMousePressed: function(e) {
                    selected = true;
                }
            },
            Circle {
                visible: bind selected
                radius: bind width*0.25
                fill: LinearGradient {
                    startX: 0
                    startY: 0
                    endX: 0
                    endY: 1
                    stops: [
                        Stop { offset: 0.0 color: Color.rgb(130, 130, 130) },
                        Stop { offset: 0.3 color: Color.rgb( 62,  62,  62) },
                        Stop { offset: 1.0 color: Color.rgb( 31,  31,  31) },
                    ]
                }
                stroke: LinearGradient {
                    startX: 0
                    startY: 0
                    endX: 0
                    endY: 1
                    stops: [
                        Stop { offset: 0.0 color: Color.rgb( 69,  69,  69) },
                        Stop { offset: 1.0 color: Color.rgb(224, 224, 224) },
                    ]
                }
            },
            Text {
                x: width
                y: width/2-1
                font: Font { size: 10 }
                fill: Color.WHITE
                content: bind text
            },
            ]
        }
    }
}

function run() {
Stage {
    width: 300
    height: 100
    scene: Scene {
        fill: Color.RED
        content: [
            RadioButton {translateX: 20 translateY: 20}
        ]
    }
}
}
