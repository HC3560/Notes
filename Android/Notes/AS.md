2-8节：
运行时闪退：
1、检查getView()里是否return convertView;
2、AndroidManifest.xml是否写对：＜activity android:name=.listview.ListViewActivity/＞（因为Activity放在了包里面，也注意MainActivity里路径是否正确）
运行时空白：
看看有没有改getCount()方法，return 10显示10个相同内容，return 0就是空白页！
（感慨：我踩的坑真多。。。）

贴一个看到特别好的BaseAdapter用法解析：
https://www.jianshu.com/p/24833a2cffd1



2.11 recyclerView要在build.gradle里添加这两行代码:
    dependencies {
 implementation "androidx.recyclerview:recyclerview:1.1.0"
    implementation "androidx.recyclerview:recyclerview-selection:1.1.0-rc01"
}



2-11-1节
添加design依赖出问题，要去搜一下最新RecyclerView的版本，把版本号改成最新的，而且注意RecyclerView的版本要和AppCompat匹配（修改AppCompat版本：右击工程-Open Module Setting）
最新2019年7月份写法：implementation 'com.android.support:design:28.0.0.1'



3-1节
最新版本Toast连续点击也不会弹出很久了，按照天哥写法还有点bug，最好先把Toast取消，再重新创建。如下：
    public static Toast mToast;
    public static void showMsg(Context context, String msg) {
        if(mToast != null) {
            mToast.cancel();
        }
        mToast = Toast.makeText(context,msg,Toast.LENGTH_LONG);
        mToast.show();
    }



图片素材已下载



P21的Handler handler=new Handler()方法已被弃用，新的方法是
Handler handler = new Handler(Looper.getMainLooper())
    {
        public void handleMessage(@NonNull Message msg) {
            super.handleMessage(msg);
            if(mRb3.getProgress()<100){
                handler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        mRb3.setProgress(mRb3.getProgress()+5);
                        handler.sendEmptyMessage(0);
                    }
                }, 500);
            }
            else {
                ToastUtil.showMsg(ProgressActivity.this, "加载完成");
            }
        }
    };