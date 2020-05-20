package com.example.shashank;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button I = (Button) findViewById(R.id.I);
        I.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"I",Toast.LENGTH_LONG).show();
            }
        });
        Button Love = (Button) findViewById(R.id.Love);
        Love.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"Love",Toast.LENGTH_LONG).show();
            }
        });
        Button You = (Button) findViewById(R.id.you);
        You.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"Buzo",Toast.LENGTH_SHORT).show();
                Toast.makeText(getApplicationContext(),"Lol!Kiddin'! I love you",Toast.LENGTH_LONG).show();
            }
        });
    }
}
