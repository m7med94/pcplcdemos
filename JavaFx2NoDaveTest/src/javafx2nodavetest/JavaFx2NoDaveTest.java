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
import javafx2nodavetest.driver.Nodave;

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
    Label label311 = new Label();
    Label label321 = new Label();
    Label label322 = new Label();
    Label label323 = new Label();
    Label label411 = new Label();
    Label label412 = new Label();
    Label label421 = new Label();
    Label label422 = new Label();
    Label label423 = new Label();
    Label label511 = new Label();
    Label label512 = new Label();
    Label label521 = new Label();
    Label label522 = new Label();
    Label label523 = new Label();
    Label label611 = new Label();
    Label label612 = new Label();
    Label label621 = new Label();
    Label label622 = new Label();
    Label label623 = new Label();
    Label label711 = new Label();
    Label label721 = new Label();
    Label label722 = new Label();

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Scene scene = new Scene(new Group());
        stage.setTitle("Hello Siemens S7 PLC!");
        stage.setWidth(400);
        stage.setHeight(600);

        final Slider byteSlider = new Slider(0, 1, 1);
        byteSlider.setMin(0);
        byteSlider.setMax(255);
        final Slider wordSlider = new Slider(0, 1, 1);
        wordSlider.setMin(0);
        wordSlider.setMax(65535);
        final Slider dwordSlider = new Slider(0, 1, 1);
        dwordSlider.setMin(0);
        dwordSlider.setMax(2100000000);

        label1.setFont(Font.font("Times New Roman", 22));
        label1.setText("Disconnected");
        label1.setTextFill(color);

        label411.setFont(Font.font("Times New Roman", 12));
        label411.setTextFill(color);
        label411.setText("BYTE: adr: 20");
        label412.setFont(Font.font("Times New Roman", 12));
        label412.setTextFill(color);
        label412.setText("****");

        label311.setFont(Font.font("Times New Roman", 12));
        label311.setTextFill(color);
        label311.setText("BIT: adr:10.4");
        label321.setFont(Font.font("Times New Roman", 12));
        label321.setTextFill(color);
        label321.setText("I");
        label322.setFont(Font.font("Times New Roman", 12));
        label322.setTextFill(color);
        label322.setText("Q");
        label323.setFont(Font.font("Times New Roman", 12));
        label323.setTextFill(color);
        label323.setText("M");

        label421.setFont(Font.font("Times New Roman", 12));
        label421.setTextFill(color);
        label421.setText("IB");
        label422.setFont(Font.font("Times New Roman", 12));
        label422.setTextFill(color);
        label422.setText("QB");
        label423.setFont(Font.font("Times New Roman", 12));
        label423.setTextFill(color);
        label423.setText("MB");

        label511.setFont(Font.font("Times New Roman", 12));
        label511.setTextFill(color);
        label511.setText("WORD: adr: 30");
        label512.setFont(Font.font("Times New Roman", 12));
        label512.setTextFill(color);
        label512.setText("****");

        label521.setFont(Font.font("Times New Roman", 12));
        label521.setTextFill(color);
        label521.setText("IW");
        label522.setFont(Font.font("Times New Roman", 12));
        label522.setTextFill(color);
        label522.setText("QW");
        label523.setFont(Font.font("Times New Roman", 12));
        label523.setTextFill(color);
        label523.setText("MW");


        label611.setFont(Font.font("Times New Roman", 12));
        label611.setTextFill(color);
        label611.setText("DWORD: adr: 40");
        label612.setFont(Font.font("Times New Roman", 12));
        label612.setTextFill(color);
        label612.setText("****");

        label621.setFont(Font.font("Times New Roman", 12));
        label621.setTextFill(color);
        label621.setText("ID");
        label622.setFont(Font.font("Times New Roman", 12));
        label622.setTextFill(color);
        label622.setText("QD");
        label623.setFont(Font.font("Times New Roman", 12));
        label623.setTextFill(color);
        label623.setText("MD");

        label711.setFont(Font.font("Times New Roman", 12));
        label711.setTextFill(color);
        label711.setText("TIMER-COUNTER: adr:1-2");
        label721.setFont(Font.font("Times New Roman", 12));
        label721.setTextFill(color);
        label721.setText("T");
        label722.setFont(Font.font("Times New Roman", 12));
        label722.setTextFill(color);
        label722.setText("C");

        Image imageConnect = new Image(getClass().getResourceAsStream("pic/ok.png"));
        Image imageDisconnect = new Image(getClass().getResourceAsStream("pic/not.png"));

        VBox vbox = new VBox();
        vbox.setLayoutX(20);
        vbox.setLayoutY(20);
        HBox hbox1 = new HBox();
        HBox hbox2 = new HBox();
        HBox hbox31 = new HBox();
        VBox vbox32 = new VBox();
        HBox hbox41 = new HBox();
        VBox vbox42 = new VBox();
        HBox hbox51 = new HBox();
        VBox vbox52 = new VBox();
        HBox hbox61 = new HBox();
        VBox vbox62 = new VBox();
        HBox hbox71 = new HBox();
        VBox vbox72 = new VBox();

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
                label1.setText("Disconnected");
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.StopConnection();
                }
            }
        });
        final ComboBox represComboBox = new ComboBox();
        represComboBox.getItems().addAll(
                "binare",
                "hex",
                "int",
                "float");
        represComboBox.getSelectionModel().selectFirst();

        Button btn3 = new Button("Read");
        btn3.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                int repr = 0;
                String selected = represComboBox.getValue().toString();
                if (selected.equals("binare")) {
                    repr = 1;
                } else if (selected.equals("hex")) {
                    repr = 2;
                } else if (selected.equals("int")) {
                    repr = 3;
                } else if (selected.equals("float")) {
                    repr = 4;
                };
                if (DataIsoTCP.Connection == true) {
                    label321.setText(DataIsoTCP.ReadBinareData(Nodave.INPUTS, 0, 10, 4));
                    label322.setText(DataIsoTCP.ReadBinareData(Nodave.OUTPUTS, 0, 10, 4));
                    label323.setText(DataIsoTCP.ReadBinareData(Nodave.FLAGS, 0, 10, 4));

                    label421.setText(DataIsoTCP.ReadData(Nodave.INPUTS, 0, 20, 1, repr));
                    label422.setText(DataIsoTCP.ReadData(Nodave.OUTPUTS, 0, 20, 1, repr));
                    label423.setText(DataIsoTCP.ReadData(Nodave.FLAGS, 0, 20, 1, repr));

                    label521.setText(DataIsoTCP.ReadData(Nodave.INPUTS, 0, 30, 2, 3));
                    label522.setText(DataIsoTCP.ReadData(Nodave.OUTPUTS, 0, 30, 2, 3));
                    label523.setText(DataIsoTCP.ReadData(Nodave.FLAGS, 0, 30, 2, 3));

                    label621.setText(DataIsoTCP.ReadData(Nodave.INPUTS, 0, 40, 4, 3));
                    label622.setText(DataIsoTCP.ReadData(Nodave.OUTPUTS, 0, 40, 4, 3));
                    label623.setText(DataIsoTCP.ReadData(Nodave.FLAGS, 0, 40, 4, 3));

                    label721.setText(DataIsoTCP.ReadData(Nodave.TIMER, 0, 1, 2, 3));
                    label722.setText(DataIsoTCP.ReadData(Nodave.COUNTER, 0, 2, 2, 3));
                }
            }
        });

        byteSlider.valueProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> ov,
                    Number old_val, Number new_val) {
                label412.setText(String.format("%.0f", new_val));
            }
        });
        wordSlider.valueProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> ov,
                    Number old_val, Number new_val) {
                label512.setText(String.format("%.0f", new_val));
            }
        });
        dwordSlider.valueProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> ov,
                    Number old_val, Number new_val) {
                label612.setText(String.format("%.0f", new_val));
            }
        });
        final RadioButton rb1 = new RadioButton();
rb1.setText("Selected value");
        Button btn4 = new Button("Write");
        btn4.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                boolean sel = rb1.isSelected();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBinareData(Nodave.INPUTS, 0, 10, 4, sel);
                    DataIsoTCP.WriteBinareData(Nodave.OUTPUTS, 0, 10, 4, sel);
                    DataIsoTCP.WriteBinareData(Nodave.FLAGS, 0, 10, 4, sel);

                    DataIsoTCP.WriteData8(Nodave.INPUTS, 0, 20,1,
                            Integer.valueOf(label412.getText()));
                    DataIsoTCP.WriteData8(Nodave.OUTPUTS, 0, 20,1,
                            Integer.valueOf(label412.getText()));
                    DataIsoTCP.WriteData8(Nodave.FLAGS, 0, 20,1,
                            Integer.valueOf(label412.getText()));

                    DataIsoTCP.WriteData16(Nodave.INPUTS, 0, 30,2,
                            Integer.valueOf(label512.getText()));
                    DataIsoTCP.WriteData16(Nodave.OUTPUTS, 0, 30,2,
                            Integer.valueOf(label512.getText()));
                    DataIsoTCP.WriteData16(Nodave.FLAGS, 0, 30,2,
                            Integer.valueOf(label512.getText()));

                    DataIsoTCP.WriteData(Nodave.INPUTS, 0, 40, 4,
                            Integer.valueOf(label612.getText()));
                    DataIsoTCP.WriteData(Nodave.OUTPUTS, 0, 40, 4,
                            Integer.valueOf(label612.getText()));
                    DataIsoTCP.WriteData(Nodave.FLAGS, 0, 40, 4,
                            Integer.valueOf(label612.getText()));
                }
            }
        });
        hbox1.getChildren().add(btn1);
        hbox1.getChildren().add(btn2);
        hbox1.getChildren().add(label1);
        hbox1.setSpacing(10);
        hbox1.setAlignment(Pos.BOTTOM_CENTER);

        hbox2.getChildren().add(btn3);
        hbox2.getChildren().add(btn4);
        hbox2.setSpacing(10);

        hbox31.getChildren().add(label311);
        hbox31.getChildren().add(rb1);
        hbox31.setSpacing(10);
        vbox32.getChildren().add(label321);
        vbox32.getChildren().add(label322);
        vbox32.getChildren().add(label323);
        vbox32.setSpacing(10);

        hbox41.getChildren().add(label411);
        hbox41.getChildren().add(represComboBox);
        hbox41.getChildren().add(byteSlider);
        hbox41.getChildren().add(label412);
        hbox41.setSpacing(10);

        vbox42.getChildren().add(label421);
        vbox42.getChildren().add(label422);
        vbox42.getChildren().add(label423);
        vbox42.setSpacing(10);

        hbox51.getChildren().add(label511);
        hbox51.getChildren().add(wordSlider);
        hbox51.getChildren().add(label512);
        hbox51.setSpacing(10);

        vbox52.getChildren().add(label521);
        vbox52.getChildren().add(label522);
        vbox52.getChildren().add(label523);
        vbox52.setSpacing(10);

        hbox61.getChildren().add(label611);
        hbox61.getChildren().add(dwordSlider);
        hbox61.getChildren().add(label612);
        hbox61.setSpacing(10);

        vbox62.getChildren().add(label621);
        vbox62.getChildren().add(label622);
        vbox62.getChildren().add(label623);
        vbox62.setSpacing(10);

        hbox71.getChildren().add(label711);
        hbox71.setSpacing(10);
        vbox72.getChildren().add(label721);
        vbox72.getChildren().add(label722);
        vbox72.setSpacing(10);

        vbox.getChildren().add(hbox1);
        vbox.getChildren().add(hbox2);
        vbox.getChildren().add(hbox31);
        vbox.getChildren().add(vbox32);
        vbox.getChildren().add(hbox41);
        vbox.getChildren().add(vbox42);
        vbox.getChildren().add(hbox51);
        vbox.getChildren().add(vbox52);
        vbox.getChildren().add(hbox61);
        vbox.getChildren().add(vbox62);
        vbox.getChildren().add(hbox71);
        vbox.getChildren().add(vbox72);
        vbox.setSpacing(10);


        ((Group) scene.getRoot()).getChildren().add(vbox);

        stage.setScene(scene);
        stage.show();
    }
}
