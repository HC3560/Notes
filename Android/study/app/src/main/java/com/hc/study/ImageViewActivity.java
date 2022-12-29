package com.hc.study;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ImageView;

import com.bumptech.glide.Glide;

public class ImageViewActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_image_view);

        ImageView mIv4 = findViewById(R.id.iv_4);
        Glide.with(this).load("https://hanqingjiang.com/img/avatar.jpg").into(mIv4);
    }
}