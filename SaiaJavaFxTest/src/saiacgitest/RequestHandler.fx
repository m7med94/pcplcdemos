package saiacgitest;

import java.io.*;
import java.lang.*;
import javafx.io.http.HttpRequest;

/**
 * @author Alex Sentcha
 */

public class RequestHandler extends HttpRequest {
      
    public override var onException = function(exception: Exception) {
        exception.printStackTrace();
        var message = exception.getMessage();
        if(message == null) { message = exception.toString(); }
        Main.alert("Error:", message.trim());
    }
    public override var onInput = function(is: java.io.InputStream) {
        try {
            var result: StringBuffer = new StringBuffer();
            var reader: BufferedReader  = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            var temp: String;

            while ((temp = reader.readLine()) != null) {
                result.append(temp);
            }
            Main.responce = result.toString();
            // Main.showDataDetails(true);
            Main.showDataDetails();
            reader.close();
        } finally {
            is.close();
        }
    }
}
