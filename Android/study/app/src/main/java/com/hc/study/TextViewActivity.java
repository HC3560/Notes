package com.hc.study;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Paint;
import android.os.Bundle;
import android.widget.TextView;

import org.w3c.dom.Text;

// 每新建一个Activity就必须在AndroidManifest中进行声明
public class TextViewActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_text_view);

        // 找到控件
        TextView mTv_4 = findViewById(R.id.tv_4);
        // 设置中划线
        mTv_4.getPaint().setFlags(Paint.STRIKE_THRU_TEXT_FLAG);
        // 添加抗锯齿，不添加的话，被设置中划线的文字相较没有中划线的文字会有锯齿
        mTv_4.getPaint().setAntiAlias(true);

        // 找到控件
        TextView mTv_5 = findViewById(R.id.tv_5);
        // 设置下划线
        mTv_5.getPaint().setFlags(Paint.UNDERLINE_TEXT_FLAG);
        // 设置抗锯齿
        mTv_5.getPaint().setAntiAlias(true);

        TextView mTv_7 = findViewById(R.id.tv_6);
        mTv_7.setSelected(true);

    }
}