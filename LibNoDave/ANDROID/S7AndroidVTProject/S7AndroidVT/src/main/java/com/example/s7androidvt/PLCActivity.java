package com.example.s7androidvt;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import nodave.DataIsoTCP;

public class PLCActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plc);

        final TextView textConnection = (TextView) findViewById(R.id.textViewConnection);
        textConnection.setText("ISO TCP: ?");

        Button btnClose = (Button) findViewById(R.id.btnBack);
        Button btnConnect = (Button) findViewById(R.id.btnConnect);
        Intent i = getIntent();


        // Binding Click event to Button
        btnConnect.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {
                //Connect to PLC
                if (DataIsoTCP.Connection == false) {
                    DataIsoTCP.Start("192.168.1.100");
                }
                if (DataIsoTCP.Connection) {
                    textConnection.setText("ISO TCP: Connected to PLC");
                } else {
                    textConnection.setText("ISO TCP: Disconnected");
                }
            }
        });
        btnClose.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {
                //Closing PLC Activity
                finish();
            }
        });
    }

    public static boolean haveInternet(Context ctx) {

        NetworkInfo info = (NetworkInfo) ((ConnectivityManager) ctx
                .getSystemService(Context.CONNECTIVITY_SERVICE)).getActiveNetworkInfo();

        if (info == null || !info.isConnected()) {
            return false;
        }
        if (info.isRoaming()) {
            // here is the roaming option you can change it if you want to
            // disable internet while roaming, just return false
            return false;
        }
        return true;
    }

}
