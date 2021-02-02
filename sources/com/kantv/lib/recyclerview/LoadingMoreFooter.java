package com.kantv.lib.recyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.kantv.lib.R;
import pl.droidsonroids.gif.GifDrawable;
import pl.droidsonroids.gif.GifImageView;

public class LoadingMoreFooter extends LinearLayout {
    public static final int STATE_COMPLETE = 1;
    public static final int STATE_LOADING = 0;
    public static final int STATE_NOMORE = 2;
    private LinearLayout mFoot;
    private TextView mText;

    public LoadingMoreFooter(Context context) {
        super(context);
        initView(context);
    }

    public LoadingMoreFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }

    public void initView(Context context) {
        LayoutInflater.from(context).inflate(R.layout.yun_refresh_footer, this);
        this.mText = (TextView) findViewById(R.id.msg);
        this.mFoot = (LinearLayout) findViewById(R.id.footer_bj);
        try {
            ((GifImageView) findViewById(R.id.shangla)).setImageDrawable(new GifDrawable(getResources(), R.drawable.loading));
        } catch (Exception e) {
            e.printStackTrace();
        }
        setLayoutParams(new LayoutParams(-1, -2));
    }

    public void setState(int i) {
        String str = "1111";
        if (i == 0) {
            this.mText.setText(getContext().getText(R.string.listview_loading));
            Log.e(str, str);
            setVisibility(0);
        } else if (i == 1) {
            this.mText.setText(getContext().getText(R.string.listview_loading));
            Log.e(str, "22222");
            setVisibility(8);
        } else if (i == 2) {
            Log.e(str, "3333");
            this.mText.setText(getContext().getText(R.string.nomore_loading));
            this.mText.setVisibility(0);
            setVisibility(0);
        }
    }

    public void reSet() {
        setVisibility(8);
    }
}
