package com.hc.study;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.hc.study.gridview.GridViewActivity;
import com.hc.study.listview.ListViewActivity;

public class MainActivity extends AppCompatActivity {

    // 提前创建对象,便于使用
    private Button mBtnTextView;
    private Button mBtnButton;
    private Button mBtnEditText;
    private Button mBtnRadioButton;
    private Button mBtnCheckBox;
    private Button mBtnImageView;
    private Button mBtnListView;
    private Button mBtnGridView;
    private Button mBtnScrollView;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // 下面是以前的方法，每次创建点击事件都需要三个操作：
        // 1.创建对象，使用findViewById()方法得到id，并转化为需要的类型
        // 2.使用.setOnClickListener()为1中得到的对象设置点击监听，需传入一个3中的对象
        // 3.new一个对象，它是实现View.OnClickListener()接口后得到的对象，要求重写onClick()：
        //  (1).new一个Intent对象，传入链接的起始Activity与目标Activity
        //  (2).将对象传入startActivity()方法，开始执行目标Activity
        // 可以创建类与方法来简化操作
        /*
        // 跳转到TextView演示界面
        // 创建一个对象，注意命名的标准方式
        // findViewById(R.id.xxx)方法用于根据id找到值，并将其传给这个对象
        Button mBtnTextView = findViewById(R.id.btn_textview);
        // 为这个对象设置点击监听，即设置点击按钮后执行的操作
        // 此处可以使用lambda表达式代替
        mBtnTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // new一个Intent对象，传入链接的起始Activity与目标Activity
                Intent intent = new Intent(MainActivity.this, TextViewActivity.class);
                // 将对象的参数传入startActivity()方法，开始执行目标Activity
                startActivity(intent);
            }
        });

        // 跳转到Button演示界面
        Button mBtnButton = findViewById(R.id.btn_button);
        mBtnButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, ButtonActivity.class);
                startActivity(intent);
            }
        });

        // 跳转到EditText演示界面
        Button mBtnEditText = findViewById(R.id.btn_edittext);
        mBtnEditText.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, EditTextActivity.class);
                startActivity(intent);
            }
        });
         */

        // 集中使用findViewById()方法得到id，并转化为需要的类型，即1中的操作
        mBtnTextView = findViewById(R.id.btn_textview);
        mBtnButton = findViewById(R.id.btn_button);
        mBtnEditText = findViewById(R.id.btn_edittext);
        mBtnRadioButton = findViewById(R.id.btn_radiobutton);
        mBtnCheckBox = findViewById(R.id.btn_checkbox);
        mBtnImageView = findViewById(R.id.btn_imageview);
        mBtnListView = findViewById(R.id.btn_listview);
        mBtnGridView = findViewById(R.id.btn_gridview);
        mBtnScrollView = findViewById(R.id.btn_scrollview);
        // 调用setListeners()
        setListeners();
    }

    // 编写设置监听方法
    private void setListeners() {
        // 将OnClick实例化，得到onClick对象准备传入.setOnClickListener()中
        OnClick onClick = new OnClick();
        // 为所有的Button对象设置监听，可以代替2中的操作
        mBtnTextView.setOnClickListener(onClick);
        mBtnButton.setOnClickListener(onClick);
        mBtnEditText.setOnClickListener(onClick);
        mBtnRadioButton.setOnClickListener(onClick);
        mBtnCheckBox.setOnClickListener(onClick);
        mBtnImageView.setOnClickListener(onClick);
        mBtnListView.setOnClickListener(onClick);
        mBtnGridView.setOnClickListener(onClick);
        mBtnScrollView.setOnClickListener(onClick);
    }

    // 编写OnClick类，实现View.OnClickListener()接口，实例化后可以传入.setOnClickListener()中
    // 使用"OnClick onClick = new OnClick();"实例化后，可以代替3中的操作
    private class OnClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            // 每次执行此方法之前初始化intent对象
            Intent intent = null;
            int id = v.getId();
            // 为不同id情况下的intent对象设置对应点击操作
            if (id == R.id.btn_textview)
                intent = new Intent(MainActivity.this, TextViewActivity.class);
            if (id == R.id.btn_button)
                intent = new Intent(MainActivity.this, ButtonActivity.class);
            if (id == R.id.btn_edittext)
                intent = new Intent(MainActivity.this, EditTextActivity.class);
            if (id == R.id.btn_radiobutton)
                intent = new Intent(MainActivity.this, RadioButtonActivity.class);
            if (id == R.id.btn_checkbox)
                intent = new Intent(MainActivity.this, CheckBoxActivity.class);
            if (id == R.id.btn_imageview)
                intent = new Intent(MainActivity.this, ImageViewActivity.class);
            if (id == R.id.btn_listview)
                intent = new Intent(MainActivity.this, ListViewActivity.class);
            if (id == R.id.btn_gridview)
                intent = new Intent(MainActivity.this, GridViewActivity.class);
            if (id == R.id.btn_scrollview)
                intent = new Intent(MainActivity.this, ScrollViewActivity.class);
            // 开始执行对应id的Activity
            startActivity(intent);
        }
    }
}
