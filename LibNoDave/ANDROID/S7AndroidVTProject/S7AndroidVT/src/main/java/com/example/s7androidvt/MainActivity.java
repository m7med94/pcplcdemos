package com.example.s7androidvt;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import nodave.DataIsoTCP;
import nodave.Nodave;

public class MainActivity extends Activity {
    public EditText[] inputs = new EditText[5];
    public TextView[] data = new TextView[5];
    private String vEnd = "";
    private String[] Mnemonic = new String[5];
    private int[] valueMn = new int[5];
    private int[] valueDB = new int[5];
    private int[] valueBin = new int[5];
    private int index;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btnPLCScreen = (Button) findViewById(R.id.btnPLC);
        Button btnInfo = (Button) findViewById(R.id.btnInfo);
        Button btnRead = (Button) findViewById(R.id.btnRead);

        for (int i = 0; i < 5; i++) {
            int resID1 = getResources().getIdentifier("Mnemonics" + i,
                    "id", getPackageName());
            inputs[i] = (EditText) findViewById(resID1);
        }
        for (int i = 0; i < 5; i++) {
            int resID2 = getResources().getIdentifier("data" + i,
                    "id", getPackageName());
            data[i] = (TextView) findViewById(resID2);
        }
        btnPLCScreen.setOnClickListener(new View.OnClickListener() {
            public void onClick(View arg0) {
                //Starting a new Intent
                Intent plcScreen = new Intent(getApplicationContext(), PLCActivity.class);
                // starting new activity
                startActivity(plcScreen);
            }
        });
        btnInfo.setOnClickListener(new View.OnClickListener() {
            public void onClick(View arg0) {
                //Starting a validation
                // String text = Mnemonics5.getText().toString();
            }
        });
        //text.setText(String.valueOf(convertFahrenheitToCelsius(inputValue)));

        btnRead.setOnClickListener(new View.OnClickListener() {
            public void onClick(View arg0) {
                String text;
                //Starting a validation
                for (index = 0; index < 5; index++) {
                    text = inputs[index].getText().toString();
                    if (text.length() != 0) {
                        vEnd = "";
                        if (checkVar(text)) {
                            inputs[index].setTextColor(Color.BLACK);
                            inputs[index].setText(vEnd);
                        } else {
                            inputs[index].setTextColor(Color.RED);
                        }
                    }
                }
            }
        });
    }

    private boolean checkVar(String input) {
        String temp;
        int length = input.length();
        if (length > 0) {
            String[] parts = input.split("\\.");
            vEnd = getMnemonics(parts[0]);
            if (vEnd.compareToIgnoreCase("IB") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.INPUTS, 0, valueMn[index], 1,1));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("QB") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.OUTPUTS, 0, valueMn[index], 1,1));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("MB") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.FLAGS, 0, valueMn[index], 1,1));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("IW") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.INPUTS, 0, valueMn[index], 2,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("QW") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.OUTPUTS, 0, valueMn[index], 2,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("MW") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.FLAGS, 0, valueMn[index], 2,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("ID") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.INPUTS, 0, valueMn[index], 4,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("QD") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.OUTPUTS, 0, valueMn[index], 2,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("MD") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.FLAGS, 0, valueMn[index], 4,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("PIB") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText("not used");
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("PQB") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText("not used");
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("PIW") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText("not used");
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("PQW") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText("not used");
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("PID") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText("not used");
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("PQD") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText("not used");
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("T") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.TIMER, 0, valueMn[index], 4,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("C") == 0) {
                if (checkValue(parts[0], 1)) {
                    data[index].setText(DataIsoTCP.ReadData(Nodave.COUNTER, 0, valueMn[index], 4,3));
                    return true;
                } else {
                    return false;
                }
            } else if (vEnd.compareToIgnoreCase("DB") == 0) {
                if (checkValue(parts[0], 1)) {
                    temp = getMnemonics(parts[1]);
                    if (temp.compareToIgnoreCase("DBX") == 0) {
                        vEnd += "." + temp;
                        if (checkValue(parts[1], 2)) {
                            vEnd += ".";
                            return checkValue(parts[2], 3);
                        } else {
                            return false;
                        }
                    } else if (temp.compareToIgnoreCase("DBB") == 0) {
                        vEnd += "." + temp;
                        return checkValue(parts[1], 2);
                    } else if (temp.compareToIgnoreCase("DBW") == 0) {
                        vEnd += "." + temp;
                        return checkValue(parts[1], 2);
                    } else if (temp.compareToIgnoreCase("DBD") == 0) {
                        vEnd += "." + temp;
                        return checkValue(parts[1], 2);
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    private String getMnemonics(String input) {
        String temp = "";
        int length = input.length();
        char[] ch = input.toCharArray();
        for (int i = 0; i < length; i++) {
            if (Character.isLetter(ch[i])) {
                temp += Character.toUpperCase(ch[i]);
            }
        }
        return temp;
    }

    private boolean checkValue(String input, int par) {
        String temp = "";
        int value;
        int length = input.length();
        char[] ch = input.toCharArray();
        for (int i = 0; i < length; i++) {
            if (Character.isDigit(ch[i])) {
                temp += ch[i];
            }
        }
        try {
            value = Integer.parseInt(temp);
            vEnd += temp;
            switch (par) {
                case 1: {
                    valueMn[index] = value;
                }
                case 2: {
                    valueDB[index] = value;
                }
                case 3: {
                    valueBin[index] = value;
                }
            }
            return true;
        } catch (NumberFormatException nfe) {
            return false;
        }
    }

}
