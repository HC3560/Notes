package com.hc.study;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Toast;

public class CheckBoxActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_box);

        // 为cb_5设置一个监听
        CheckBox mCb_5 = findViewById(R.id.cb_5);
        mCb_5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                Toast.makeText(CheckBoxActivity.this, isChecked ? "5选中" : "5未选中", Toast.LENGTH_SHORT).show();
            }
        });

        // 为cb_6设置一个监听
        CheckBox mCb_6 = findViewById(R.id.cb_6);
        mCb_6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                Toast.makeText(CheckBoxActivity.this, isChecked ? "6选中" : "6未选中", Toast.LENGTH_SHORT).show();
            }
        });
    }
}