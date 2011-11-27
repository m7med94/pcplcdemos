package plant.control;
/**
 * @author Alex Sentcha
 */

import javafx.scene.*;


public class LabeledSlider extends CustomNode {
    public var text = "Blank";
    public var value = 0.0;
    public var minimum = 0.0;
    public var maximum = 1.0;
    public var width = 150;
    public var padding = 100;

    override protected function create() : Node {
        Group {
            content: [
                Label {
                    translateY: -5
                    text: bind text
                    value: bind value
                },
                Slider {
                    translateX: 0//bind padding
                    translateY: 0
                    minimum: bind minimum
                    maximum: bind maximum
                    value:   bind value with inverse
                    width:   bind width
                },
            ]
        }
    }
}

function run() {
javafx.stage.Stage {
    width: 625
    height: 625
    scene: Scene {
        fill: javafx.scene.paint.Color.BLACK
        content: [
            LabeledSlider {translateX: 40 translateY: 30}
        ]
    }
}
}
