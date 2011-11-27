package plant.control;

/**
 * @author Alex Sentcha
 */

public class ButtonGroup {
    public var selectedButton:RadioButton on replace old {
        if (old != null) {
            old.selected = false;
        }
    };
}
