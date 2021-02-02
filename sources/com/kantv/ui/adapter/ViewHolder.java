package com.kantv.ui.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.SpannableStringBuilder;
import android.text.util.Linkify;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.view.CircleImageView;

public class ViewHolder extends androidx.recyclerview.widget.RecyclerView.ViewHolder {
    private Context mContext;
    private View mConvertView;
    private SparseArray<View> mViews = new SparseArray<>();

    public ViewHolder(Context context, View view) {
        super(view);
        this.mContext = context;
        this.mConvertView = view;
    }

    public static ViewHolder createViewHolder(Context context, View view) {
        return new ViewHolder(context, view);
    }

    public static ViewHolder createViewHolder(Context context, ViewGroup viewGroup, int i) {
        return new ViewHolder(context, LayoutInflater.from(context).inflate(i, viewGroup, false));
    }

    public <T extends View> T getView(int i) {
        T t = (View) this.mViews.get(i);
        if (t != null) {
            return t;
        }
        T findViewById = this.mConvertView.findViewById(i);
        this.mViews.put(i, findViewById);
        return findViewById;
    }

    public View getConvertView() {
        return this.mConvertView;
    }

    public ViewHolder setText(int i, String str) {
        ((TextView) getView(i)).setText(str);
        return this;
    }

    public ViewHolder setText2(int i, SpannableStringBuilder spannableStringBuilder) {
        ((TextView) getView(i)).setText(spannableStringBuilder);
        return this;
    }

    public ViewHolder setLayoutParams(int i, LayoutParams layoutParams) {
        ((LinearLayout) getView(i)).setLayoutParams(layoutParams);
        return this;
    }

    public ViewHolder setLayoutParamsRelative(int i, LayoutParams layoutParams) {
        ((RelativeLayout) getView(i)).setLayoutParams(layoutParams);
        return this;
    }

    public ViewHolder setImageBitmap(int i, Bitmap bitmap) {
        ((ImageView) getView(i)).setImageBitmap(bitmap);
        return this;
    }

    public ViewHolder setPosterWidth(int i, int i2, int i3) {
        RelativeLayout relativeLayout = (RelativeLayout) getView(i);
        LayoutParams layoutParams = relativeLayout.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i3;
        relativeLayout.setLayoutParams(layoutParams);
        return this;
    }

    public ViewHolder setImageDrawable(int i, Drawable drawable) {
        ((ImageView) getView(i)).setImageDrawable(drawable);
        return this;
    }

    public ViewHolder setImageURL(int i, String str) {
        GlideUtils.loadimage(str, (ImageView) getView(i));
        return this;
    }

    public ViewHolder setImageURL2(int i, String str) {
        GlideUtils.loadimage2(str, (ImageView) getView(i));
        return this;
    }

    public ViewHolder setImageURL3(int i, String str) {
        GlideUtils.loadimage3(str, (ImageView) getView(i));
        return this;
    }

    public ViewHolder setImageURL4(int i, String str) {
        GlideUtils.loadimage4(str, (ImageView) getView(i));
        return this;
    }

    public ViewHolder setCircleImageURL(int i, String str, int i2, int i3) {
        GlideUtils.loadimageRoundness(str, (CircleImageView) getView(i), i2, i3);
        return this;
    }

    public ViewHolder setCircleImageURLRound(int i, String str, int i2, int i3) {
        GlideUtils.loadimageRound(str, (CircleImageView) getView(i), i2, i3);
        return this;
    }

    public ViewHolder setBackgroundColor(int i, int i2) {
        getView(i).setBackgroundColor(i2);
        return this;
    }

    public ViewHolder setBackgroundRes(int i, Drawable drawable) {
        getView(i).setBackground(drawable);
        return this;
    }

    public ViewHolder setTextColor(int i, int i2) {
        ((TextView) getView(i)).setTextColor(i2);
        return this;
    }

    public ViewHolder setTextColorRes(int i, int i2) {
        ((TextView) getView(i)).setTextColor(this.mContext.getResources().getColor(i2));
        return this;
    }

    @SuppressLint({"NewApi"})
    public ViewHolder setAlpha(int i, float f) {
        if (VERSION.SDK_INT >= 11) {
            getView(i).setAlpha(f);
        } else {
            AlphaAnimation alphaAnimation = new AlphaAnimation(f, f);
            alphaAnimation.setDuration(0);
            alphaAnimation.setFillAfter(true);
            getView(i).startAnimation(alphaAnimation);
        }
        return this;
    }

    public ViewHolder setVisible(int i, boolean z) {
        getView(i).setVisibility(z ? 0 : 8);
        return this;
    }

    public ViewHolder setInVisible(int i) {
        getView(i).setVisibility(4);
        return this;
    }

    public ViewHolder linkify(int i) {
        Linkify.addLinks((TextView) getView(i), 15);
        return this;
    }

    public ViewHolder setTypeface(Typeface typeface, int... iArr) {
        for (int view : iArr) {
            TextView textView = (TextView) getView(view);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }

    public ViewHolder setProgress(int i, int i2) {
        ((ProgressBar) getView(i)).setProgress(i2);
        return this;
    }

    public ViewHolder setProgress(int i, int i2, int i3) {
        ProgressBar progressBar = (ProgressBar) getView(i);
        progressBar.setMax(i3);
        progressBar.setProgress(i2);
        return this;
    }

    public ViewHolder setMax(int i, int i2) {
        ((ProgressBar) getView(i)).setMax(i2);
        return this;
    }

    public ViewHolder setRating(int i, float f) {
        ((RatingBar) getView(i)).setRating(f);
        return this;
    }

    public ViewHolder setRating(int i, float f, int i2) {
        RatingBar ratingBar = (RatingBar) getView(i);
        ratingBar.setMax(i2);
        ratingBar.setRating(f);
        return this;
    }

    public ViewHolder setTag(int i, Object obj) {
        getView(i).setTag(obj);
        return this;
    }

    public ViewHolder setTag(int i, int i2, Object obj) {
        getView(i).setTag(i2, obj);
        return this;
    }

    public ViewHolder setChecked(int i, boolean z) {
        ((Checkable) getView(i)).setChecked(z);
        return this;
    }

    public ViewHolder setAdapter(int i, CommonAdapter commonAdapter, Context context, int i2) {
        RecyclerView recyclerView = (RecyclerView) getView(i);
        recyclerView.setLayoutManager(new GridLayoutManager(context, i2));
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(commonAdapter);
        return this;
    }

    public ViewHolder setNoRefresh(int i) {
        XRecyclerView xRecyclerView = (XRecyclerView) getView(i);
        xRecyclerView.setPullRefreshEnabled(false);
        xRecyclerView.addFootView(LayoutInflater.from(Utils.getContext()).inflate(R.layout.foot_no, null), false);
        xRecyclerView.noMoreLoading();
        return this;
    }

    public ViewHolder setAdapterX(int i, CommonAdapter commonAdapter, Context context, int i2) {
        XRecyclerView xRecyclerView = (XRecyclerView) getView(i);
        xRecyclerView.setLayoutManager(new GridLayoutManager(context, i2));
        xRecyclerView.setPullRefreshEnabled(false);
        xRecyclerView.setFocusable(false);
        xRecyclerView.setAdapter(commonAdapter);
        return this;
    }

    public ViewHolder addheader(int i, View view) {
        ((XRecyclerView) getView(i)).addHeaderView(view);
        return this;
    }

    public ViewHolder addfoot(int i, View view) {
        ((XRecyclerView) getView(i)).addFootView(view, true);
        return this;
    }

    public ViewHolder setFocusable(int i, boolean z) {
        ((RecyclerView) getView(i)).setFocusable(z);
        return this;
    }

    public ViewHolder setAdapter2(int i, VideoClassAdapter videoClassAdapter, Context context, int i2) {
        RecyclerView recyclerView = (RecyclerView) getView(i);
        recyclerView.setLayoutManager(new GridLayoutManager(context, i2));
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(videoClassAdapter);
        return this;
    }

    public ViewHolder setAdapter4(int i, CommonAdapter commonAdapter, Context context) {
        RecyclerView recyclerView = (RecyclerView) getView(i);
        recyclerView.setLayoutManager(new StaggeredGridLayoutManager(1, 0));
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(commonAdapter);
        return this;
    }

    public ViewHolder setOnClickListener(int i, OnClickListener onClickListener) {
        getView(i).setOnClickListener(onClickListener);
        return this;
    }

    public ViewHolder setOnCheckedChangeListener(int i, OnCheckedChangeListener onCheckedChangeListener) {
        ((CheckBox) getView(i)).setOnCheckedChangeListener(onCheckedChangeListener);
        return this;
    }

    public ViewHolder setOnTouchListener(int i, OnTouchListener onTouchListener) {
        getView(i).setOnTouchListener(onTouchListener);
        return this;
    }

    public ViewHolder setOnLongClickListener(int i, OnLongClickListener onLongClickListener) {
        getView(i).setOnLongClickListener(onLongClickListener);
        return this;
    }
}
