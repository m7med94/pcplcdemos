package saiacgitest.view;
/**
 * @author Alex Sentcha
 */

import javafx.scene.input.MouseEvent;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

// Custom button created using Images
public class ImageButton extends ImageView { 
    
    public var normalImage: Image on replace {
        if(normalImage != null) { image = normalImage; }
    }
    public var overImage: Image;
    public var focusImage: Image;
    
    public override var onMouseEntered = function(e:MouseEvent) {
        if(overImage != null) { 
            image = overImage; 
         }
    }
    
    var buttonFocused = bind focused on replace {
        if(focused and (focusImage != null)) { 
            image = focusImage; 
        } else  { 
            image = normalImage; 
        }
    }
    
    public override var onMouseExited = function(e:MouseEvent) {
        if(normalImage != null) { image = normalImage; }
    }
}
