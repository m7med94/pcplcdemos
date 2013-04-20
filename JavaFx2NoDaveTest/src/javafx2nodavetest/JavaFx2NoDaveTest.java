/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javafx2nodavetest;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;

/**
 *
 * @author Alex Sentcha
 */
public class JavaFx2NoDaveTest extends Application {

    /**
     * @param args the command line arguments
     */
    private static final Color color = Color.web("#464646");
    Label label1 = new Label();
    Label label2 = new Label();

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Scene scene = new Scene(new Group());
        stage.setTitle("Hello Siemens S7 PLC!");
        stage.setWidth(300);
        stage.setHeight(190);

        final Slider valueSlider = new Slider(0, 1, 1);
        valueSlider.setMin(0);
        valueSlider.setMax(100);

        label1.setFont(Font.font("Times New Roman", 22));
        label1.setTextFill(color);
        label2.setFont(Font.font("Times New Roman", 22));
        label2.setTextFill(color);
        label2.setText("****");

        final Label label3 = new Label(Double.toString(valueSlider.getValue()));
        label3.setFont(Font.font("Times New Roman", 22));
        label3.setTextFill(color);
        label3.setText("****");

        Image imageConnect = new Image(getClass().getResourceAsStream("pic/ok.png"));
        Image imageDisconnect = new Image(getClass().getResourceAsStream("pic/not.png"));

        VBox vbox = new VBox();
        vbox.setLayoutX(20);
        vbox.setLayoutY(20);
        HBox hbox1 = new HBox();
        HBox hbox2 = new HBox();
        HBox hbox3 = new HBox();

        Button btn1 = new Button();
        btn1.setGraphic(new ImageView(imageConnect));
        btn1.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                if (DataIsoTCP.Connection == false) {
                    label1.setText("Connect");
                    DataIsoTCP.Start("192.168.1.100");
                    if (DataIsoTCP.Connection == true) {
                        label1.setText("Connected S7");
                    }
                }
            }
        });

        Button btn2 = new Button();
        btn2.setGraphic(new ImageView(imageDisconnect));
        btn2.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                label1.setText("Disconnect");
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.StopConnection();
                }
            }
        });
        Button btn3 = new Button("Read");
        btn3.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                if (DataIsoTCP.Connection == true) {
                    label2.setText(Long.toString(DataIsoTCP.ReadData()));
                } else {
                    label2.setText("****");
                }

            }
        });

        valueSlider.valueProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> ov,
                    Number old_val, Number new_val) {
                label3.setText(String.format("%.0f", new_val));
            }
        });

        Button btn4 = new Button("Write");
        btn4.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteData(Long.valueOf(label3.getText()));
                }
            }
        });
        hbox1.getChildren().add(btn1);
        hbox1.getChildren().add(btn2);
        hbox1.getChildren().add(label1);
        hbox1.setSpacing(10);
        hbox1.setAlignment(Pos.BOTTOM_CENTER);

        hbox2.getChildren().add(btn3);
        hbox2.getChildren().add(label2);
        hbox2.setSpacing(10);

        hbox3.getChildren().add(btn4);
        hbox3.getChildren().add(label3);
        hbox3.getChildren().add(valueSlider);
        hbox3.setSpacing(10);

        vbox.getChildren().add(hbox1);
        vbox.getChildren().add(hbox2);
        vbox.getChildren().add(hbox3);
        vbox.setSpacing(10);


        ((Group) scene.getRoot()).getChildren().add(vbox);

        stage.setScene(scene);
        stage.show();
    }
}
