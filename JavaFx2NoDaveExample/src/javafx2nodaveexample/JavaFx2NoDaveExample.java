/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javafx2nodaveexample;

import javafx.animation.*;
import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.scene.Cursor;
import javafx.scene.Group;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;
import javafx.scene.effect.Lighting;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.paint.CycleMethod;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.*;
import javafx.scene.text.Font;
import javafx.scene.transform.Rotate;
import javafx.stage.Stage;
import javafx.util.Duration;

/**
 *
 * @author Alex
 */
public class JavaFx2NoDaveExample extends Application {

    private XYChart.Series<Number, Number> DataSerie1;
    private XYChart.Series<Number, Number> DataSerie2;
    private XYChart.Series<Number, Number> DataSerie3;
    private XYChart.Series<Number, Number> DataSerie4;
    private NumberAxis xAxis;
    private Timeline animation;
    private double y = 10;
    private double GrTime = 0;
    private int ApTime = 0;
    private double data1 = 12.1;
    private double data2 = 16.1;
    private double data3 = 22.1;
    private double data4 = 36.1;
    private static final Color color = Color.web("#464646");
    private AnimationTimer timer;
    Label labelL1 = new Label();
    Label labelL2 = new Label();
    Label labelL3 = new Label();
    Label labelL4 = new Label();
    Label labelR1 = new Label();
    Label labelR2 = new Label();
    Label labelB1 = new Label();
    Label labelB2 = new Label();
    Label labelB3 = new Label();
    Label labelB4 = new Label();
    Button bnConn = new Button();
    Button bnDiscon = new Button();
    Label labelCon = new Label();
    Button bnStart = new Button();
    Button bnStop = new Button();
    CheckBox cb1 = new CheckBox("0.0");
    CheckBox cb2 = new CheckBox("0.1");
    CheckBox cb3 = new CheckBox("0.2");
    CheckBox cb4 = new CheckBox("0.3");
    CheckBox cb5 = new CheckBox("5.0");
    CheckBox cb6 = new CheckBox("5.1");
    CheckBox cb7 = new CheckBox("5.2");
    CheckBox cb8 = new CheckBox("5.3");
    final Slider Slider1 = new Slider(0, 1, 1);
    final Slider Slider2 = new Slider(0, 1, 1);
    private Switch switch1, switch2, switch3, switch4;
    private Led led1, led2, led3, led4, led5, led6, led7, led8;
    private Alarm alarm1, alarm2, alarm3, alarm4;
    private Pump pump1, pump2, pump3, pump4;
    private Valve valve1, valve2, valve3, valve4;
    private Integer ii = 0;

    private class Switch extends Parent {

        private String name = "**";
        private final Circle circle1 = new Circle(10, 3, 8);
        private final Circle circle2 = new Circle(10, 3, 6);
        private final Rectangle grap = new Rectangle(4, 12);
        public final Label label = new Label("Kuku");
        public final Label labelP = new Label("+");
        public final Label labelM = new Label("-");
        private final Rectangle rectangleVisual = new Rectangle(34, 34);

        Switch(String name) {
            this.name = name;
            configureDesign();
            setCursor(Cursor.HAND);
            getChildren().addAll(rectangleVisual, label, circle1, circle2,
                    grap, labelP, labelM);
        }

        private void configureDesign() {
            rectangleVisual.setLayoutX(0);
            rectangleVisual.setLayoutY(0f);
            rectangleVisual.setFill(Color.TRANSPARENT);

            label.setFont(Font.font("Times New Roman", 12));
            label.setText(name);
            label.setLayoutX(0);
            label.setLayoutY(0);
            labelP.setFont(Font.font("Times New Roman", 16));
            labelM.setFont(Font.font("Times New Roman", 16));
            labelP.setLayoutX(0);
            labelP.setLayoutY(10);
            labelM.setLayoutX(20);
            labelM.setLayoutY(8);
            circle1.setLayoutX(4);
            circle1.setLayoutY(26);
            circle1.setFill(Color.SILVER);
            circle2.setLayoutX(4);
            circle2.setLayoutY(26);
            circle2.setFill(Color.BLACK);
            grap.setLayoutX(12);
            grap.setLayoutY(22);
            grap.setFill(Color.WHITE);

        }

        public void moveRight() {
            grap.getTransforms().add(new Rotate(40, 2, 6));
        }

        public void moveLeft() {
            grap.getTransforms().add(new Rotate(320, 2, 6));
        }
    }

    private class Led extends Parent {

        private Color colorOn = Color.GRAY;
        private Color colorOff = Color.GRAY;
        private String name = "**";
        private int type = 1;
        private final Circle circle = new Circle(0, 0, 6);
        public final Label label = new Label();
        private final Rectangle rectangleVisual = new Rectangle(32, 16);

        Led(int type, String name) {
            this.type = type;
            this.name = name;
            configureDesign();
            getChildren().addAll(rectangleVisual, circle, label);
        }

        private void configureDesign() {
            rectangleVisual.setLayoutX(0);
            rectangleVisual.setLayoutY(0f);
            rectangleVisual.setFill(Color.TRANSPARENT);
            if (type == 1) {
                colorOn = Color.LIME;
                colorOff = Color.GREEN;
            } else {
                colorOn = Color.YELLOW;
                colorOff = Color.BROWN;
            }

            label.setFont(Font.font("Times New Roman", 10));
            label.setText(name);
            label.setLayoutX(18);
            label.setLayoutY(2);
            circle.setLayoutX(8);
            circle.setLayoutY(8);
            circle.setFill(colorOff);
            circle.setEffect(new Lighting());
            circle.setStroke(Color.SILVER);
        }

        public void ledOn() {
            circle.setFill(colorOn);
        }

        public void ledOff() {
            circle.setFill(colorOff);
        }
    }

    private class Alarm extends Parent {

        private Color colorOn = Color.RED;
        private Color colorOff = Color.DARKRED;
        private String name = "**";
        private final Circle circle = new Circle(0, 0, 4);
        private final Circle circleA = new Circle(0, 0, 4);
        public final Label label = new Label();
        private final Rectangle rectangleVisual = new Rectangle(32, 16);
        private final Timeline timeline = new Timeline();

        Alarm(String name) {
            this.name = name;
            configureDesign();
            getChildren().addAll(rectangleVisual, circle, circleA, label);
        }

        private void configureDesign() {
            rectangleVisual.setLayoutX(0);
            rectangleVisual.setLayoutY(0f);
            rectangleVisual.setFill(Color.TRANSPARENT);

            label.setFont(Font.font("Times New Roman", 10));
            label.setText(name);
            label.setLayoutX(18);
            label.setLayoutY(2);
            circle.setLayoutX(8);
            circle.setLayoutY(8);
            circle.setFill(colorOff);
            circle.setEffect(new Lighting());
            circleA.setLayoutX(8);
            circleA.setLayoutY(8);
            circleA.setFill(null);
            circleA.setStroke(Color.RED);
            timeline.setCycleCount(Timeline.INDEFINITE);
            timeline.setAutoReverse(false);
            timeline.getKeyFrames().addAll(
                    new KeyFrame(Duration.ZERO, // set start position at 0
                    new KeyValue(circleA.opacityProperty(), 1.0),
                    new KeyValue(circleA.radiusProperty(), 4)),
                    new KeyFrame(new Duration(1000), // set end position at 3s
                    new KeyValue(circleA.opacityProperty(), 0.0),
                    new KeyValue(circleA.radiusProperty(), 7)));
        }

        public void alarmOn() {
            circle.setFill(colorOn);
            timeline.play();
        }

        public void alarmOff() {
            circle.setFill(colorOff);
            timeline.stop();
            timeline.stop();
            circleA.setRadius(4);
        }
    }

    private class Pump extends Parent {

        private Color colorOn = Color.LIME;
        private Color colorOff = Color.RED;
        private double move = 10;
        private String name = "--";
        private final Circle circle = new Circle(0, 0, 8);
        private final Polygon polygon = new Polygon(new double[]{-4, -7, 8, 0, -4, 7,});
        public final Label label = new Label();
        private final Rectangle rectangleVisual = new Rectangle(32, 16);
        private final Timeline timeline = new Timeline();

        Pump(String name) {
            this.name = name;
            configureDesign();
            getChildren().addAll(rectangleVisual, circle, label, polygon);
        }

        private void configureDesign() {

            rectangleVisual.setLayoutX(0);
            rectangleVisual.setLayoutY(0f);
            rectangleVisual.setFill(Color.TRANSPARENT);

            label.setFont(Font.font("Times New Roman", 10));
            label.setText(name);
            label.setLayoutX(18);
            label.setLayoutY(2);
            circle.setLayoutX(8);
            circle.setLayoutY(8);
            circle.setFill(Color.GRAY);
            circle.setEffect(new Lighting());
            polygon.setLayoutX(8);
            polygon.setLayoutY(8);
            polygon.setFill(colorOff);
            timeline.setCycleCount(Timeline.INDEFINITE);
            KeyFrame keyFrame = new KeyFrame(Duration.millis(47), new EventHandler<ActionEvent>() {
                @Override
                public void handle(ActionEvent event) {
                    tick();
                }
            });
            timeline.getKeyFrames().add(keyFrame);
        }

        public void tick() {
            polygon.getTransforms().add(new Rotate(move, 0, 0));
        }

        public void pumpOn() {
            polygon.setFill(colorOn);
            timeline.play();
        }

        public void pumpOff() {
            polygon.setFill(colorOff);
            timeline.stop();
        }
    }

    private class Valve extends Parent {

        private String name = "";
        private final Rectangle rectangleVisual = new Rectangle(32, 16);
        private final Rectangle rectB1 = new Rectangle(8, 5);
        private final Ellipse elipseB1 = new Ellipse(0, 0, 4, 2);
        private final Ellipse elipseB2 = new Ellipse(0, 0, 4, 2);
        private final Rectangle rect3 = new Rectangle(2, 7);
        private final Rectangle rect4 = new Rectangle(10, 5);
        private final Rectangle rect5 = new Rectangle(2, 7);
        private final Line line1 = new Line(5, 7, 9, 11);
        private final Line line2 = new Line(5, 11, 9, 7);
        private final Circle circle = new Circle(0, 0, 4);
        public final Label label = new Label();

        Valve(String name) {
            this.name = name;
            configureDesign();
        }

        private void configureDesign() {

            rectangleVisual.setLayoutX(0);
            rectangleVisual.setLayoutY(0f);
            rectangleVisual.setFill(Color.TRANSPARENT);

            label.setFont(Font.font("Times New Roman", 10));
            label.setText(name);
            label.setLayoutX(18);
            label.setLayoutY(2);
            elipseB1.setLayoutX(7);
            elipseB1.setLayoutY(2);
            elipseB1.setFill(Color.SILVER);
            elipseB2.setLayoutX(7);
            elipseB2.setLayoutY(7);
            elipseB2.setFill(Color.SILVER);
            rectB1.setLayoutX(3);
            rectB1.setLayoutY(2);
            rectB1.setFill(Color.SILVER);
            Shape shape1 = Shape.subtract(rectB1, elipseB1);
            Shape shape2 = Shape.union(shape1, elipseB2);

            shape2.setFill(new LinearGradient(0, 0, 1, 0, true, CycleMethod.NO_CYCLE, new Stop[]{
                new Stop(0, Color.GRAY),
                new Stop(0.5, Color.WHITE),
                new Stop(1, Color.BLACK)}));
            rect3.setLayoutX(0);
            rect3.setLayoutY(7);
            rect3.setFill(Color.SILVER);
            rect3.setFill(new LinearGradient(0, 0, 0, 1, true, CycleMethod.NO_CYCLE, new Stop[]{
                new Stop(0, Color.GRAY),
                new Stop(0.5, Color.WHITE),
                new Stop(1, Color.BLACK)}));
            rect4.setLayoutX(2);
            rect4.setLayoutY(8);
            rect4.setFill(Color.SILVER);
            rect4.setFill(new LinearGradient(0, 0, 0, 1, true, CycleMethod.NO_CYCLE, new Stop[]{
                new Stop(0, Color.GRAY),
                new Stop(0.5, Color.WHITE),
                new Stop(1, Color.BLACK)}));
            rect5.setLayoutX(12);
            rect5.setLayoutY(7);
            rect5.setFill(Color.SILVER);
            rect5.setFill(new LinearGradient(0, 0, 0, 1, true, CycleMethod.NO_CYCLE, new Stop[]{
                new Stop(0, Color.GRAY),
                new Stop(0.5, Color.WHITE),
                new Stop(1, Color.BLACK)}));

            line1.setStroke(Color.RED);
            line2.setStroke(Color.RED);
            circle.setFill(Color.WHITE);
            circle.setStroke(Color.RED);
            circle.setLayoutX(7);
            circle.setLayoutY(9);

            getChildren().addAll(rectangleVisual, label, rect3, rect4, rect5,
                    shape2, elipseB1, circle, line1, line2);
        }

        public void Open() {
            circle.setVisible(false);
            line1.setVisible(false);
            line2.setVisible(false);
        }

        public void Close() {
            circle.setVisible(true);
            line1.setVisible(true);
            line2.setVisible(true);
        }
    }

    private class Tank extends Parent {

        private String name = "**";
        private Double value = 15.0;
        private Double height = 30.0;
        private final Ellipse elipseB1 = new Ellipse(0, 0, 10, 4);
        private final Ellipse elipseB2 = new Ellipse(0, 0, 10, 4);
        private final Rectangle rectB1 = new Rectangle(20, height);
        private final Ellipse elipseV1 = new Ellipse(0, 0, 10, 4);
        private final Ellipse elipseV2 = new Ellipse(0, 0, 10, 4);
        private final Rectangle rectV1 = new Rectangle(20, 30);
        public final Label label = new Label("Kuku");
        public final Label labelV = new Label("0");
        private final Rectangle rectangleVisual = new Rectangle(40, 40);

        Tank(String name) {
            this.name = name;
            configureDesign();
            setCursor(Cursor.HAND);
        }

        private void configureDesign() {
            rectangleVisual.setLayoutX(0);
            rectangleVisual.setLayoutY(0f);
            rectangleVisual.setFill(Color.TRANSPARENT);
            label.setFont(Font.font("Times New Roman", 10));
            label.setText(name);
            label.setLayoutX(28);
            label.setLayoutY(2);
            labelV.setLayoutX(28);
            labelV.setLayoutY(14);
            /*
             * elipseB1.setLayoutX(10); elipseB1.setLayoutY(2);
             * elipseB1.setFill(Color.SILVER); elipseB2.setLayoutX(10);
             * elipseB2.setLayoutY(32); elipseB2.setFill(Color.SILVER);
             * rectB1.setLayoutX(0); rectB1.setLayoutY(2);
             * rectB1.setFill(Color.SILVER); rectB1.setStroke(Color.BLACK);
             * Shape shape1 = Shape.subtract(rectB1, elipseB1); Shape shape2 =
             * Shape.union(shape1, elipseB2);
             *
             * shape2.setFill(new LinearGradient(0, 0, 1, 0, true,
             * CycleMethod.NO_CYCLE, new Stop[]{ new Stop(0, Color.TRANSPARENT),
             * new Stop(0.5, Color.WHITE), new Stop(1, Color.BLACK)}));
             *
             */

            elipseV1.setLayoutX(10);
            elipseV1.setLayoutY(2);
            elipseV1.setFill(Color.SILVER);
            elipseV2.setLayoutX(10);
            elipseV2.setLayoutY(32);
            elipseV2.setFill(Color.SILVER);
            rectV1.setLayoutX(0);
            rectV1.setLayoutY(2);
            rectV1.setFill(Color.SILVER);
            rectV1.setStroke(Color.BLACK);
            rectV1.setTranslateY(height - value);
            rectV1.setHeight(value);

            Shape shapeV1 = Shape.subtract(rectV1, elipseV1);
            Shape shapeV2 = Shape.union(shapeV1, elipseV2);

            shapeV2.setFill(new LinearGradient(0, 0, 1, 0, true,
                    CycleMethod.NO_CYCLE, new Stop[]{
                new Stop(0, Color.TRANSPARENT),
                new Stop(0.5, Color.WHITE),
                new Stop(1, Color.BLACK)}));

            getChildren().addAll(rectangleVisual, label, labelV, shapeV2, elipseV1);
        }
        //volume 0-100%

        public void SetVolume(double volume) {
            value = height * volume / 100;

            rectV1.setFill(Color.GREEN);
            // rectV1.setTranslateY(height - value);
            // rectV1.setHeight(value);
            labelV.setText(Double.toString(20.1));

        }
    }

    private void updatedata() {
        int res;
        res = DataIsoTCP.ReadOutputs(0, 3);
        if (res == 0) {
            if ((DataIsoTCP.b1 & (1)) != 0) {
                led1.ledOn();
            } else {
                led1.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 1)) != 0) {
                led2.ledOn();
            } else {
                led2.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 2)) != 0) {
                led3.ledOn();
            } else {
                led3.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 3)) != 0) {
                led4.ledOn();
            } else {
                led4.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 4)) != 0) {
                led5.ledOn();
            } else {
                led5.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 5)) != 0) {
                led6.ledOn();
            } else {
                led6.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 6)) != 0) {
                led7.ledOn();
            } else {
                led7.ledOff();
            }
            if ((DataIsoTCP.b1 & (1 << 7)) != 0) {
                led8.ledOn();
            } else {
                led8.ledOff();
            }
            if ((DataIsoTCP.b2 & (1)) != 0) {
                alarm1.alarmOn();
            } else {
                alarm1.alarmOff();
            }
            if ((DataIsoTCP.b2 & (1 << 1)) != 0) {
                alarm2.alarmOn();
            } else {
                alarm2.alarmOff();
            }
            if ((DataIsoTCP.b2 & (1 << 2)) != 0) {
                alarm3.alarmOn();
            } else {
                alarm3.alarmOff();
            }
            if ((DataIsoTCP.b2 & (1 << 3)) != 0) {
                alarm4.alarmOn();
            } else {
                alarm4.alarmOff();
            }
            if ((DataIsoTCP.b2 & (1 << 4)) != 0) {
                pump1.pumpOn();
            } else {
                pump1.pumpOff();
            }
            if ((DataIsoTCP.b2 & (1 << 5)) != 0) {
                pump2.pumpOn();
            } else {
                pump2.pumpOff();
            }
            if ((DataIsoTCP.b2 & (1 << 6)) != 0) {
                pump3.pumpOn();
            } else {
                pump3.pumpOff();
            }
            if ((DataIsoTCP.b2 & (1 << 7)) != 0) {
                pump4.pumpOn();
            } else {
                pump4.pumpOff();
            }
            if ((DataIsoTCP.b3 & (1)) != 0) {
                valve1.Open();
            } else {
                valve1.Close();
            }
            if ((DataIsoTCP.b3 & (1 << 1)) != 0) {
                valve2.Open();
            } else {
                valve2.Close();
            }
            if ((DataIsoTCP.b3 & (1 << 2)) != 0) {
                valve3.Open();
            } else {
                valve3.Close();
            }
            if ((DataIsoTCP.b3 & (1 << 3)) != 0) {
                valve4.Open();
            } else {
                valve4.Close();
            }

        }
    }

    private void configureListeners() {

        Slider1.valueProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> ov,
                    Number old_val, Number new_val) {
                labelB1.setText(String.format("%.0f", new_val));
                labelB3.setText(String.format("%.0f", new_val));
                data1 = Double.valueOf(labelB1.getText());
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteData16(1, 0, 100, Integer.valueOf(labelB1.getText()));
                }
            }
        });
        Slider2.valueProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> ov,
                    Number old_val, Number new_val) {
                labelB2.setText(String.format("%.0f", new_val));
                labelB4.setText(String.format("%.0f", new_val));
                data2 = Double.valueOf(labelB4.getText());
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteData32(0, 200, Long.valueOf(labelB2.getText()));
                    DataIsoTCP.WriteFloat(0, 204, Double.valueOf(labelB4.getText()));
                }
            }
        });
        cb1.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 0, 0, new_val);
                }
            }
        });
        cb2.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 0, 1, new_val);
                }
            }
        });
        cb3.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 0, 2, new_val);
                }
            }
        });
        cb4.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 0, 3, new_val);
                }
            }
        });
        cb5.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(2, 5, 0, new_val);
                }
            }
        });
        cb6.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(2, 5, 1, new_val);
                }
            }
        });
        cb7.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(2, 5, 2, new_val);
                }
            }
        });
        cb8.selectedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue ov,
                    Boolean old_val, Boolean new_val) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(2, 5, 3, new_val);
                }
            }
        });

        bnConn.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {

                DataIsoTCP.Start("192.168.1.100");
                if (DataIsoTCP.Connection == true) {
                    labelCon.setText("Connected PLC at: 192.168.1.100");
                    timer.start();
                }
                me.consume();
            }
        });
        bnDiscon.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                DataIsoTCP.StopConnection();
                labelCon.setText("Disconnected.");
                timer.stop();

                me.consume();
            }
        });

        bnStart.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 2, 0, true);
                    DataIsoTCP.WriteBitInput(1, 2, 1, false);
                }
                me.consume();
            }
        });
        bnStop.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 2, 1, true);
                    DataIsoTCP.WriteBitInput(1, 2, 0, false);
                }
                me.consume();
            }
        });
        switch1.labelP.setOnMousePressed(
                new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch1.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 0, true);
                } else {
                    pump1.pumpOn();
                    pump3.pumpOn();
                    led1.ledOn();
                    led3.ledOn();
                    valve1.Open();
                    valve3.Open();
                    alarm1.alarmOn();
                    alarm3.alarmOn();
                }
                me.consume();
            }
        });
        switch1.labelP.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch1.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 0, false);
                }
                me.consume();
            }
        });
        switch1.labelM.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch1.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 1, true);
                } else {
                    pump1.pumpOff();
                    pump3.pumpOff();
                    led1.ledOff();
                    led3.ledOff();
                    valve1.Close();
                    valve3.Close();
                    alarm1.alarmOff();
                    alarm3.alarmOff();
                }
                me.consume();
            }
        });
        switch1.labelM.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch1.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 1, false);
                }
                me.consume();
            }
        });
        switch2.labelP.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch2.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 2, true);
                } else {
                    pump2.pumpOn();
                    pump4.pumpOn();
                    valve2.Open();
                    valve4.Open();
                    led2.ledOn();
                    led4.ledOn();
                    alarm2.alarmOn();
                    alarm4.alarmOn();
                }
                me.consume();
            }
        });
        switch2.labelP.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch2.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 2, false);
                }
                me.consume();
            }
        });
        switch2.labelM.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch2.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 3, true);
                } else {
                    pump2.pumpOff();
                    pump4.pumpOff();
                    valve2.Close();
                    valve4.Close();
                    led2.ledOff();
                    led4.ledOff();
                    alarm2.alarmOff();
                    alarm4.alarmOff();
                }
                me.consume();
            }
        });
        switch2.labelM.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch2.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 3, false);
                }
                me.consume();
            }
        });
        switch3.labelP.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch3.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 4, true);
                } else {
                    pump1.pumpOn();
                    pump3.pumpOn();
                    led5.ledOn();
                    led7.ledOn();
                    valve1.Open();
                    valve3.Open();
                    alarm1.alarmOn();
                    alarm3.alarmOn();
                }
                me.consume();
            }
        });
        switch3.labelP.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch3.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 4, false);
                }
                me.consume();
            }
        });
        switch3.labelM.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch3.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 5, true);
                } else {
                    pump1.pumpOff();
                    pump3.pumpOff();
                    led5.ledOff();
                    led7.ledOff();
                    valve1.Close();
                    valve3.Close();
                    alarm1.alarmOff();
                    alarm3.alarmOff();
                }
                me.consume();
            }
        });
        switch3.labelM.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch3.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 5, false);
                }
                me.consume();
            }
        });
        switch4.labelP.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch4.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 6, true);
                } else {
                    pump2.pumpOn();
                    pump4.pumpOn();
                    valve2.Open();
                    valve4.Open();
                    led6.ledOn();
                    led8.ledOn();
                    alarm2.alarmOn();
                    alarm4.alarmOn();
                }
                me.consume();
            }
        });
        switch4.labelP.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch4.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 6, false);
                }
                me.consume();
            }
        });
        switch4.labelM.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch4.moveRight();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 7, true);
                } else {
                    pump2.pumpOff();
                    pump4.pumpOff();
                    valve2.Close();
                    valve4.Close();
                    led6.ledOff();
                    led8.ledOff();
                    alarm2.alarmOff();
                    alarm4.alarmOff();
                }
                me.consume();
            }
        });
        switch4.labelM.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent me) {
                switch4.moveLeft();
                if (DataIsoTCP.Connection == true) {
                    DataIsoTCP.WriteBitInput(1, 1, 7, false);
                }
                me.consume();
            }
        });


    }

    protected LineChart<Number, Number> createChart() {
        xAxis = new NumberAxis(0, 100, 5);
        final NumberAxis yAxis = new NumberAxis(0, 50, 5);
        final LineChart<Number, Number> lc = new LineChart<Number, Number>(xAxis, yAxis);
        // setup chart
        lc.setCreateSymbols(false);
        lc.setAnimated(false);
        lc.setLegendVisible(false);
        lc.setTitle("Values PLC");
        xAxis.setLabel("Time");
        xAxis.setForceZeroInRange(false);
        yAxis.setLabel("Data");
        //yAxis.setTickLabelFormatter(new NumberAxis.DefaultFormatter(yAxis, "", null));
        DataSerie1 = new XYChart.Series<Number, Number>();
        DataSerie2 = new XYChart.Series<Number, Number>();
        DataSerie3 = new XYChart.Series<Number, Number>();
        DataSerie4 = new XYChart.Series<Number, Number>();
        lc.getData().add(DataSerie1);
        lc.getData().add(DataSerie2);
        lc.getData().add(DataSerie3);
        lc.getData().add(DataSerie4);

        return lc;
    }

    private void plotTime() {
        ApTime = ApTime + 1;
        GrTime = ApTime / 10;
        DataSerie1.getData().add(new XYChart.Data<Number, Number>(GrTime, data1));
        DataSerie2.getData().add(new XYChart.Data<Number, Number>(GrTime, data2));
        DataSerie3.getData().add(new XYChart.Data<Number, Number>(GrTime, data3));
        DataSerie4.getData().add(new XYChart.Data<Number, Number>(GrTime, data4));

        if (ApTime > 1001) {
            DataSerie1.getData().remove(0);
            DataSerie2.getData().remove(0);
            DataSerie3.getData().remove(0);
            DataSerie4.getData().remove(0);
            if ((ApTime % 10) == 0) {
                xAxis.setLowerBound(xAxis.getLowerBound() + 1);
                xAxis.setUpperBound(xAxis.getUpperBound() + 1);
            }
        }
    }

    public void play() {
        animation.play();
    }

    @Override
    public void stop() {
        animation.pause();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Scene scene = new Scene(new Group());
        stage.setTitle("JavaFx 2.0 testing NoDave library example");
        Image imagePlus = new Image(getClass().getResourceAsStream("pic/plus.png"));
        Image imageMin = new Image(getClass().getResourceAsStream("pic/minus.png"));
        Image imageOk = new Image(getClass().getResourceAsStream("pic/ok.png"));
        Image imageNot = new Image(getClass().getResourceAsStream("pic/not.png"));



        labelB3.setFont(Font.font("Times New Roman", 12));
        labelB3.setTextFill(color);
        labelB3.setText("**");
        labelB4.setFont(Font.font("Times New Roman", 12));
        labelB4.setTextFill(color);
        labelB4.setText("**");

        //Top content hbox 
        HBox hboxTop = new HBox();
        hboxTop.setPadding(new Insets(10, 10, 10, 10));
        hboxTop.setSpacing(10);
        hboxTop.setStyle("-fx-background-color: #136699");
        bnConn.setGraphic(new ImageView(imageOk));
        bnConn.setText("Connect");
        bnDiscon.setGraphic(new ImageView(imageNot));
        bnDiscon.setText("Disconnect");
        labelCon.setFont(Font.font("Times New Roman", 16));
        labelCon.setTextFill(Color.YELLOW);
        labelCon.setText("Disconnected");

        hboxTop.getChildren().addAll(bnConn, bnDiscon, labelCon);

        //Left content INPUTs
        VBox vboxL = new VBox();
        vboxL.setStyle("-fx-background-color: DAE6F3");
        vboxL.setPadding(new Insets(10, 10, 10, 10));
        vboxL.setSpacing(10);
        labelL1.setFont(Font.font("Times New Roman", 12));
        labelL1.setTextFill(color);
        labelL1.setText("DIGITAL INPUTS I");

        HBox hboxL1 = new HBox();
        hboxL1.setPadding(new Insets(0, 0, 0, 0));
        hboxL1.setSpacing(5);
        cb1.setSelected(false);
        cb2.setSelected(false);
        cb3.setSelected(false);
        cb4.setSelected(false);
        hboxL1.getChildren().addAll(cb1, cb2, cb3, cb4);

        HBox hboxL3 = new HBox();
        hboxL3.setPadding(new Insets(0, 0, 0, 0));
        hboxL3.setSpacing(10);
        switch1 = new Switch("1.0-1");
        switch2 = new Switch("1.2-3");
        switch3 = new Switch("1.4-5");
        switch4 = new Switch("1.6-7");
        hboxL3.getChildren().addAll(switch1, switch2, switch3, switch4);

        //Start and Stop
        bnStart.setGraphic(new ImageView(imagePlus));
        bnStart.setText("2.0");
        bnStop.setGraphic(new ImageView(imageMin));
        bnStop.setText("2.1");
        HBox hboxL4 = new HBox();
        hboxL4.setSpacing(10);
        hboxL4.getChildren().addAll(bnStart, bnStop);

        labelL2.setFont(Font.font("Times New Roman", 12));
        labelL2.setTextFill(color);
        labelL2.setText("ANALOGE INPUTS IW");

        labelB1.setFont(Font.font("Times New Roman", 12));
        labelB1.setTextFill(color);
        labelB1.setText("**");
        Slider1.setMin(0);
        Slider1.setMax(50);
        labelL3.setFont(Font.font("Times New Roman", 12));
        labelL3.setTextFill(color);
        labelL3.setText("DIGITAL AREA M");

        HBox hboxL2 = new HBox();
        hboxL2.setPadding(new Insets(0, 0, 0, 0));
        hboxL2.setSpacing(5);
        cb5.setSelected(false);
        cb6.setSelected(false);
        cb7.setSelected(false);
        cb8.setSelected(false);
        hboxL2.getChildren().addAll(cb5, cb6, cb7, cb8);

        labelL4.setFont(Font.font("Times New Roman", 12));
        labelL4.setTextFill(color);
        labelL4.setText("AANALOG AREA MD");
        labelB2.setFont(Font.font("Times New Roman", 12));
        labelB2.setTextFill(color);
        labelB2.setText("**");
        Slider2.setMin(0);
        Slider2.setMax(50);


        vboxL.getChildren().addAll(labelL1, hboxL1, hboxL3, hboxL4,
                labelL2, labelB1, Slider1, labelL3, hboxL2,
                labelL4, labelB2, Slider2);

        //Right content OUTPUTS
        VBox vboxR = new VBox();
        vboxR.setPadding(new Insets(10, 10, 10, 10));
        vboxR.setStyle("-fx-background-color: DAE6F3");

        HBox hboxR1 = new HBox();
        hboxR1.setPadding(new Insets(0, 0, 10, 0));
        hboxR1.setSpacing(10);
        labelR1.setFont(Font.font("Times New Roman", 12));
        labelR1.setTextFill(color);
        labelR1.setText("DIGITAL OUTPUTS Q");
        hboxR1.getChildren().add(labelR1);

        HBox hboxR2 = new HBox();
        hboxR2.setPadding(new Insets(0, 0, 10, 0));
        hboxR2.setSpacing(4);
        led1 = new Led(1, "0.0");
        led2 = new Led(1, "0.1");
        led3 = new Led(1, "0.2");
        led4 = new Led(1, "0.3");
        hboxR2.getChildren().addAll(led1, led2, led3, led4);

        HBox hboxR21 = new HBox();
        hboxR21.setPadding(new Insets(0, 0, 10, 0));
        hboxR21.setSpacing(4);
        led5 = new Led(2, "0.5");
        led6 = new Led(2, "0.6");
        led7 = new Led(2, "0.7");
        led8 = new Led(2, "0.8");
        hboxR21.getChildren().addAll(led5, led6, led7, led8);

        HBox hboxR3 = new HBox();
        hboxR3.setPadding(new Insets(0, 0, 10, 0));
        hboxR3.setSpacing(4);
        alarm1 = new Alarm("1.0");
        alarm2 = new Alarm("1.1");
        alarm3 = new Alarm("1.2");
        alarm4 = new Alarm("1.3");
        hboxR3.getChildren().addAll(alarm1, alarm2, alarm3, alarm4);

        HBox hboxR4 = new HBox();
        hboxR4.setPadding(new Insets(0, 0, 10, 0));
        hboxR4.setSpacing(4);
        pump1 = new Pump("1.4");
        pump2 = new Pump("1.5");
        pump3 = new Pump("1.6");
        pump4 = new Pump("1.7");
        hboxR4.getChildren().addAll(pump1, pump2, pump3, pump4);

        HBox hboxR5 = new HBox();
        hboxR5.setPadding(new Insets(0, 0, 10, 0));
        hboxR5.setSpacing(4);
        valve1 = new Valve("2.0");
        valve2 = new Valve("2.1");
        valve3 = new Valve("2.2");
        valve4 = new Valve("2.3");
        hboxR5.getChildren().addAll(valve1, valve2, valve3, valve4);

        HBox hboxR6 = new HBox();
        hboxR6.setPadding(new Insets(0, 0, 10, 0));
        hboxR6.setSpacing(10);
        labelR2.setFont(Font.font("Times New Roman", 12));
        labelR2.setTextFill(color);
        labelR2.setText("ANALOGE OUTPUTS QW");
        hboxR6.getChildren().add(labelR2);



        vboxR.getChildren().addAll(hboxR1, hboxR2, hboxR21, hboxR3, hboxR4,
                hboxR5, hboxR6, labelB3, labelB4);

        //Center content Chart
        animation = new Timeline();
        animation.getKeyFrames().add(new KeyFrame(Duration.millis(1000 / 100),
                new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {
                plotTime();
            }
        }));
        animation.setCycleCount(Animation.INDEFINITE);


        //All Panes
        BorderPane border = new BorderPane();
        border.setTop(hboxTop);
        border.setLeft(vboxL);
        border.setCenter(createChart());
        border.setRight(vboxR);

        configureListeners();
        timer = new AnimationTimer() {
            @Override
            public void handle(long l) {
                if (ii == 20) {
                    ii = 0;
                    updatedata();
                }
                ii++;
            }
        };


        ((Group) scene.getRoot()).getChildren().add(border);
        stage.setScene(scene);
        play();
        stage.show();
    }
}
