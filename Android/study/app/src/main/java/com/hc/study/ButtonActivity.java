package com.hc.study;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class ButtonActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_button);

        // 为btn_6设置点击事件
        Button mBtn_6 = findViewById(R.id.btn_6);
        mBtn_6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(ButtonActivity.this, "btn_6被点击了", Toast.LENGTH_SHORT).show();
            }
        });

        // 为TextView设置点击事件
        TextView mTv_1 = findViewById(R.id.tv_1);
        mTv_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(ButtonActivity.this, "tv_1被点击了", Toast.LENGTH_SHORT).show();
            }
        });
    }

    public void showToast(View view){
        Toast.makeText(this, "btn_5被点击了", Toast.LENGTH_SHORT).show();
    }
}