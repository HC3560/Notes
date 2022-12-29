package com.hc.study.listview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.hc.study.R;

public class HcListViewAdapter extends BaseAdapter {
    private final Context mContext;
    private final LayoutInflater mLayoutInflater;

    public HcListViewAdapter(Context context) {
        this.mContext = context;
        mLayoutInflater = LayoutInflater.from(context);
    }

    @Override
    public int getCount() {
        return 10;
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    static class ViewHolder {
        public ImageView imageView;
        public TextView tvList, tvTime, tvContent;
    }

    @SuppressLint("InflateParams")
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder = null;
        if (convertView == null) {
            convertView = mLayoutInflater.inflate(R.layout.layout_list_item, null);
            holder = new ViewHolder();
            holder.imageView = convertView.findViewById(R.id.iv);
            holder.tvList = convertView.findViewById(R.id.tv_list);
            holder.tvTime = convertView.findViewById(R.id.tv_time);
            holder.tvContent = convertView.findViewById(R.id.tv_content);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        // 给控件赋值
        holder.tvList.setText(R.string.lv_list);
        holder.tvTime.setText(R.string.lv_time);
        holder.tvContent.setText(R.string.lv_content);
        Glide.with(mContext).load("https://hanqingjiang.com/img/avatar.jpg").into(holder.imageView);
        return convertView;
    }
}
