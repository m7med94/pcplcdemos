package com.example.s7nodavetest;


import nodave.DataIsoTCP;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {
	private EditText address;
	private EditText test;
	private EditText value;
	//DataIsoTCP tp;

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	    address = (EditText) findViewById(R.id.plcaddress);
	    test = (EditText) findViewById(R.id.test);
	    value = (EditText) findViewById(R.id.value);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	/** Called when the user clicks the makeConnection button */
	public void makeConnection(View view) {
	    // Do something in response to button	
	    if (address.getText().length() == 0) {
	    	Toast.makeText(this, "Please enter a valid address",
	        Toast.LENGTH_LONG).show();
	    	address.setText("192.168.1.100");
	        return;
	    }else{
			test.setText("fetch data at: "+address.getText());
		    DataIsoTCP.ConnectIsoTcp(address.getText().toString());
	    }
 	}
	/** Called when the user clicks the write button */
	public void writetoplc(View view) {
	    if (value.getText().length() == 0) {
	    	Toast.makeText(this, "Please enter a valid value",
	        Toast.LENGTH_LONG).show();
	    	address.setText("347");
	        return;
	    }else{
			long inputValue = Long.parseLong(value.getText().toString());
			if (DataIsoTCP.Connection) {
				test.setText("Writing data "+String.valueOf(inputValue));
				DataIsoTCP.WriteData(inputValue);
			}else{
				test.setText("Make first connection");
			}
	    }
 	}

	/** Called when the user clicks the read button */
	public void readfromplc(View view) {
		long var = 0;		
		if (DataIsoTCP.Connection) {
			test.setText("Reading data");
			var = DataIsoTCP.ReadData();
		}else{
			test.setText("Make first connection");
		}
		value.setText(String.valueOf(var));
 	}
}
